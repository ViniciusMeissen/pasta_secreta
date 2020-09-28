color a
cls
@ECHO OFF
title Pasta secreta
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Lock goto MDLOCKER
:CONFIRM
echo Voce tem certeza que deseja bloquear a pasta?(S/N)
set/p "cho=>"
if %cho%==s goto LOCK
if %cho%==S goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren Lock "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Pasta bloqueada!
goto End
:UNLOCK
echo Coloque sua senha para desbloquear a pasta: 
set/p "pass=>"
if NOT %pass%== senha_aqui goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Lock
echo Pasta bloqueada com sucesso!
goto End
:FAIL
echo Senha invalida!
goto end
:MDLOCKER
md Lock
echo Pasta Lock criada com sucesso!
goto End
:End
