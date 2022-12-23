:: IMPORTANT NOTE - TO RUN THIS BATCH SCRIPT YOU NEED TO INSTALL ImageMagick for Windows: https://imagemagick.org/script/download.php
:: To hide executed commands
@echo off
:: To set charset to UTF-8
chcp 65001
:: To clear prompt
cls
:: To set 'files' and 'output_dir' environment variables
set "files=%LOCALAPPDATA%\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\*"
set "output_dir=%USERPROFILE%\Desktop\Windows_LockScreen_Imgs"
set "portrait=%output_dir%\portrait"
set "landscape=%output_dir%\landscape"
:: Make directories
md %output_dir%
md %portrait%
md %landscape%
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
	ren "%%f" "%%f.jpg"

	for /f "tokens=1-2" %%i in ('identify -ping -format "%%wx%%h" "%%f.jpg"') do (
		::echo '%%i'
		if "%%i" == "1920x1080" (
			move /y "%%f.jpg" "%landscape%"
		) else (
			if "%%i" == "1080x1920" (
				move /y "%%f.jpg" "%portrait%"
			)
		)
	)
)
echo.
echo Apertura della cartella di destinazione in corso...
:: To open the output folder
start %output_dir%
echo.
echo Processo terminato!
echo.
:: Commenta la riga successiva per NON dover fare clic su un tasto qualsiasi della tastiera per uscire dallo script
::pause
