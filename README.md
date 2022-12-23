# Windows 10 LockScreen Images Extractor
A batch script in DOS to extract the Windows Spotlight images shown in the lock screen (Win+L, on keyboard) indicating the geographical location where the image has been actually shot.

The following is a videotutorial (in Italian language, but you can simply follow what I do on the screen) on YouTube, to show you how to use it:

<a href="https://www.youtube.com/watch?v=Hke_vKd0oRA" target="_blank" title="Videotutorial on YouTube"><img src="https://raw.githubusercontent.com/ChemBioScripting/Windows-10-LockScreen-Images-Extractor/master/Where%20Are%20Windows%2010%20LockScreen%20Spotlight%20Images%20Saved_%20Watch%20Me%20and%20You'll%20Find%20Out!%20(BQ).jpg" alt="IMAGE ALT TEXT HERE" width="820" border="0" /></a>

### Improved Version (dependent on ImageMagick)

Due to the presence of two versions, portrait and landscape, of the same image, the script has been now implemented [see `LockScreen Images Extractor (ImageMagick version).bat`, in *Italian* and *English* version] with the detection of the image format and consequent exporting in two distinct folders, through the use of the cross-platform [ImageMagick](https://imagemagick.org/script/download.php) program, which must first be installed on the computer in use, with the executable's path added to the PATH environment variable of the Operating System in use.

The following is a videotutorial of this improved script version:
