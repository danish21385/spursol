@echo off
set source_folder=F:\inetpub\wwwroot\VLUtilityApps\vlmt\Temp
set destination_folder=C:\Scripts\logs
set file_list=C:\Scripts\list.txt

for /F %%i in (%file_list%) do (
    copy "%source_folder%\%%i" "%destination_folder%\%%i"
)

echo File copying completed.