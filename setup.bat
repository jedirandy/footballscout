@echo off
 SETLOCAL ENABLEDELAYEDEXPANSION
 set CLASSPATH="
 for /R ./lib %%a in (*.jar) do (
   set CLASSPATH=!CLASSPATH!;%%a
 )
 ENDLOCAL & SET CLASSPATH=%CLASSPATH%
	
 SETLOCAL ENABLEDELAYEDEXPANSION
 set LD_LIBRARY_PATH="
 for /D /R %%b in (lib*) do (
   set LD_LIBRARY_PATH=!LD_LIBRARY_PATH!;%%b
 )
 ENDLOCAL & SET LD_LIBRARY_PATH=%LD_LIBRARY_PATH%

 SETLOCAL ENABLEDELAYEDEXPANSION
 for /D /R %%c in (lib*) do (
   set PATH=!PATH!;%%c
 )
 ENDLOCAL & SET PATH=%PATH%

 SET JAVA_HOME="C:\Program Files (x86)\Java\jre7\bin"
 
 cd bin