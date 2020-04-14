:: To hide executed commands
@echo off
:: To set charset to UTF-8
chcp 65001
:: To clear prompt
cls
:: To set 'files' and 'output_dir' environment variables
set "files=%LOCALAPPDATA%\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\*"
set "output_dir=%USERPROFILE%\Pictures\Windows_LockScreen_Imgs"
:: Echo newline in the prompt
echo.
:: Echo text in the prompt
echo Input files:
echo.
echo '%files%'
echo.
echo Output folder:
echo.
echo '%output_dir%'
echo.
echo Copying of files to the output folder in progress...
echo.
:: To copy files in the output folder. To access the xcopy command manual, type in a prompt: xcopy /?
xcopy "%files%" "%output_dir%" /Y/K/I
echo.
echo Files renaming in progress...
:: Change directory to output folder
cd %output_dir%
:: Files renaming recursively
for %%f in (*) do (
	ren "%%f" "%%f".jpg
)
echo.
echo Output folder opening in progress...
:: To open the output folder
start %output_dir%
echo.
echo Process terminated!
echo.
:: Comment the next row to NOT click any key on the keyboard to exit from the script
pause
