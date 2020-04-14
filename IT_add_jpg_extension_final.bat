:: To hide executed commands
@echo off
:: To set charset to UTF-8
chcp 65001
:: To clear prompt
cls
:: To set 'files' and 'output_dir' environment variables
set "files=%LOCALAPPDATA%\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\*"
set "output_dir=%USERPROFILE%\Desktop\Windows_LockScreen_Imgs"
:: Echo newline in the prompt
echo.
:: Echo text in the prompt
echo I files di input sono:
echo.
echo '%files%'
echo.
echo La cartella di destinazione è:
echo.
echo '%output_dir%'
echo.
echo Copiatura dei files nella cartella di destinazione in corso...
echo.
:: To copy files in the output folder. To access the xcopy command manual, type in a prompt: xcopy /?
xcopy "%files%" "%output_dir%" /Y/K/I
echo.
echo Rinomina dei files in corso...
:: Change directory to output folder
cd %output_dir%
:: Files renaming recursively
for %%f in (*) do (
	ren "%%f" "%%f".jpg
)
echo.
echo Apertura della cartella di destinazione in corso...
:: To open the output folder
start %output_dir%
echo.
echo Processo terminato!
echo.
:: Commenta la riga successiva per NON dover fare clic su un tasto qualsiasi della tastiera per uscire dallo script
pause
