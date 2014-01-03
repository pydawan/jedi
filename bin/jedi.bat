@echo off

set MYDIR=%CD%
set MYDIR1=%MYDIR:~0%

for %%f in (%MYDIR1%) do set PROJECT_DIR=%%~nxf

REM echo %PROJECT_DIR%

if "%1" == "new" (
    if "%2" NEQ "" (
        java -jar "%JEDI_HOME%"\bin\jedi-admin.jar new "%CD%\%2"
		REM So faz a copia das bibliotecas se o projeto foi criado (%2 foi passado).
	    xcopy "%JEDI_HOME%"\lib\* "%CD%"\"%2"\web\WEB-INF\lib /i/e/y
    )
) else if "%1" == "generate" (
    if "%2" == "model" (
	    java -jar "%JEDI_HOME%"\bin\jedi-admin.jar generate model "%3"
	) else if "%2" == "controller" (
		if "%4" == "" (
			java -jar "%JEDI_HOME%"\bin\jedi-admin.jar generate controller "%3"
		) else (
			java -jar "%JEDI_HOME%"\bin\jedi-admin.jar generate controller "%3" "%4"
		)
    ) else if "%2" == "scaffold" (
		java -jar "%JEDI_HOME%"\bin\jedi-admin.jar generate scaffold "%3"
	)
) else if "%1" == "g" (
    if "%2" == "model" (
	    java -jar "%JEDI_HOME%"\bin\jedi-admin.jar generate model "%3"
	) else if "%2" == "controller" (
		if "%4" == "" (
			java -jar "%JEDI_HOME%"\bin\jedi-admin.jar generate controller "%3"
		) else (
			java -jar "%JEDI_HOME%"\bin\jedi-admin.jar generate controller "%3" "%4"
		)
    ) else if "%2" == "scaffold" (
		java -jar "%JEDI_HOME%"\bin\jedi-admin.jar generate scaffold "%3"
	)
) else if "%1" == "--version" (
    java -jar "%JEDI_HOME%"\bin\jedi-admin.jar --version
) else if "%1" == "-v" (
    java -jar "%JEDI_HOME%"\bin\jedi-admin.jar --version
) else if "%1" == "server" (
    REM A compilacao tem que ser recursiva.
	REM javac -source 1.7 -target 1.6 
	for /r %%a in (*.java) do (javac -Xlint:unchecked -sourcepath "%CD%"\web\WEB-INF\src -cp .;"%CD%"\web\WEB-INF\classes;"%CD%"\web\WEB-INF\lib\* -d "%CD%"\web\WEB-INF\classes "%%a")
    java -jar "%CD%"\web\WEB-INF\lib\winstone.jar --toolsJar="%JAVA_HOME%"\lib\tools.jar --useJasper=true --useServletReloading=true --useSavedSessions=true --directoryListings=false --webroot="%CD%\web" --prefix="/%PROJECT_DIR%" --commonLibFolder="%CD%"\web\WEB-INF\lib
) else if "%1" == "s" (
    for /r %%a in (*.java) do (javac -Xlint:unchecked -sourcepath "%CD%"\web\WEB-INF\src -cp .;"%CD%"\web\WEB-INF\classes;"%CD%"\web\WEB-INF\lib\* -d "%CD%"\web\WEB-INF\classes "%%a")
    java -jar "%CD%"\web\WEB-INF\lib\winstone.jar --toolsJar="%JAVA_HOME%"\lib\tools.jar --useJasper=true --useServletReloading=true --useSavedSessions=true --directoryListings=false --webroot="%CD%\web" --prefix="/%PROJECT_DIR%" --commonLibFolder="%CD%"\web\WEB-INF\lib
) else if "%1" == "gsgen" (
    for /r %%a in (*.java) do (javac -Xlint:unchecked -sourcepath "%CD%"\web\WEB-INF\src -cp .;"%CD%"\web\WEB-INF\classes;"%CD%"\web\WEB-INF\lib\* -d "%CD%"\web\WEB-INF\classes "%%a")
	java -cp "%CD%"\web\WEB-INF\classes;"%CD%"\web\WEB-INF\lib\* JediGSGen "%CD%"\web\WEB-INF
) else if "%1" == "syncdb" (
    for /r %%a in (*.java) do (javac -Xlint:unchecked -sourcepath "%CD%"\web\WEB-INF\src -cp .;"%CD%"\web\WEB-INF\classes;"%CD%"\web\WEB-INF\lib\* -d "%CD%"\web\WEB-INF\classes "%%a")
    java -cp "%CD%"\web\WEB-INF\classes;"%CD%"\web\WEB-INF\lib\* JediORM "%CD%"\web\WEB-INF
)