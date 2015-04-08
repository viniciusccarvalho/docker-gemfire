@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  gemfire-docker startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and GEMFIRE_DOCKER_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\gemfire-boot-server-8.1.0.jar;%APP_HOME%\lib\spring-boot-starter-web-1.2.3.RELEASE.jar;%APP_HOME%\lib\spring-data-gemfire-1.7.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\spring-boot-starter-1.2.3.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-1.2.3.RELEASE.jar;%APP_HOME%\lib\hibernate-validator-5.1.3.Final.jar;%APP_HOME%\lib\spring-core-4.1.6.RELEASE.jar;%APP_HOME%\lib\spring-web-4.1.6.RELEASE.jar;%APP_HOME%\lib\spring-webmvc-4.1.6.RELEASE.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\jackson-annotations-2.5.1.jar;%APP_HOME%\lib\aspectjweaver-1.8.5.jar;%APP_HOME%\lib\spring-tx-4.0.9.RELEASE.jar;%APP_HOME%\lib\spring-context-support-4.0.9.RELEASE.jar;%APP_HOME%\lib\spring-data-commons-1.11.0.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\gemfire-8.1.0.jar;%APP_HOME%\lib\jackson-core-2.5.1.jar;%APP_HOME%\lib\spring-boot-1.2.3.RELEASE.jar;%APP_HOME%\lib\spring-boot-autoconfigure-1.2.3.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-logging-1.2.3.RELEASE.jar;%APP_HOME%\lib\snakeyaml-1.14.jar;%APP_HOME%\lib\tomcat-embed-core-8.0.20.jar;%APP_HOME%\lib\tomcat-embed-el-8.0.20.jar;%APP_HOME%\lib\tomcat-embed-logging-juli-8.0.20.jar;%APP_HOME%\lib\tomcat-embed-websocket-8.0.20.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\jboss-logging-3.1.3.GA.jar;%APP_HOME%\lib\classmate-1.0.0.jar;%APP_HOME%\lib\spring-beans-4.1.6.RELEASE.jar;%APP_HOME%\lib\spring-context-4.1.6.RELEASE.jar;%APP_HOME%\lib\spring-expression-4.1.6.RELEASE.jar;%APP_HOME%\lib\log4j-api-2.1.jar;%APP_HOME%\lib\log4j-core-2.1.jar;%APP_HOME%\lib\commons-io-2.3.jar;%APP_HOME%\lib\commons-logging-1.1.1.jar;%APP_HOME%\lib\ecj-3.7.2.jar;%APP_HOME%\lib\jline-1.0.S2-B.jar;%APP_HOME%\lib\jetty-webapp-9.2.3.v20140905.jar;%APP_HOME%\lib\jansi-1.8.jar;%APP_HOME%\lib\snappy-java-1.0.4.1.jar;%APP_HOME%\lib\spring-shell-1.0.0.RELEASE.jar;%APP_HOME%\lib\xom-1.2.5.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.11.jar;%APP_HOME%\lib\log4j-over-slf4j-1.7.11.jar;%APP_HOME%\lib\logback-classic-1.1.3.jar;%APP_HOME%\lib\jetty-xml-9.2.3.v20140905.jar;%APP_HOME%\lib\jetty-servlet-9.2.3.v20140905.jar;%APP_HOME%\lib\cglib-2.2.2.jar;%APP_HOME%\lib\logback-core-1.1.3.jar;%APP_HOME%\lib\jetty-util-9.2.3.v20140905.jar;%APP_HOME%\lib\jetty-security-9.2.3.v20140905.jar;%APP_HOME%\lib\asm-3.3.1.jar;%APP_HOME%\lib\jetty-server-9.2.3.v20140905.jar;%APP_HOME%\lib\javax.servlet-api-3.1.0.jar;%APP_HOME%\lib\jetty-http-9.2.3.v20140905.jar;%APP_HOME%\lib\jetty-io-9.2.3.v20140905.jar;%APP_HOME%\lib\jackson-databind-2.5.1.jar;%APP_HOME%\lib\spring-aop-4.1.6.RELEASE.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.11.jar;%APP_HOME%\lib\slf4j-api-1.7.11.jar

@rem Execute gemfire-docker
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GEMFIRE_DOCKER_OPTS%  -classpath "%CLASSPATH%" org.springframework.gemfire.server.Application %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable GEMFIRE_DOCKER_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%GEMFIRE_DOCKER_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
