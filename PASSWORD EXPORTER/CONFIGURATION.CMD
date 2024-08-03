REM --------------------------------------------------
REM PASSWORD EXPORTER 1.0
REM Il Favoloso Mondo di Leo
REM https://ilfavolosomondodileo.wordpress.com/
REM --------------------------------------------------



REM --------------------
REM EXPORT
REM --------------------

SET comma=NO
SET html=NO
SET tab=NO
SET tabular=NO
SET text=YES
SET verhtml=NO
SET xml=NO

REM --------------------
REM EXTENSION
REM --------------------

SET comma_EXTENSION=csv
SET html_EXTENSION=html
SET tab_EXTENSION=csv
SET tabular_EXTENSION=txt
SET text_EXTENSION=txt
SET verhtml_EXTENSION=html
SET xml_EXTENSION=xml

REM --------------------
REM BEHAVIOR
REM --------------------

SET SAVE=LOCAL
SET DESTRUCTION=NO

REM --------------------
REM DIRECTORY
REM --------------------

SET LOG_DIR=LOG
SET SOFTWARE_DIR=SOFTWARE
SET BACKUP_DIR=BACKUP

REM --------------------
REM FILES
REM --------------------

SET LOG=%LOG_DIR%\%CODE%.LOG

REM --------------------
REM REMOTE TRANSFER
REM --------------------

SET SERVER=ftp.example.altervista.org
SET PORT=21
SET USER=example
SET PASSWORD=cTo*:e],B?UbFcq6
SET DIRECTORY=PASSWORD EXPORTER
SET INPUT=INPUT.FTP
SET OUTPUT=%LOG%