::del D:\Dokumente\DHBW\OneDrive\DH-Wirtschaftsinformatik\Projektarbeit\Projektarbeit_I\backupPA1.zip
:: Create Directory for backup with date of today
cd /D "D:\Dokumente\DHBW\OneDrive\DH-Wirtschaftsinformatik\Projektarbeit\Projektarbeit_II\Backup"
::if not exist %date:/=%
mkdir %date:/=%

cd /D "c:\Program Files\7-Zip"
START 7z.exe a "D:\Dokumente\DHBW\OneDrive\DH-Wirtschaftsinformatik\Projektarbeit\Projektarbeit_II\Backup\%date:/=%\backupPA2.zip" "D:\RKaltenb\WIS_Ausbildung\PA I, PA II, BA\PA II"

:: Start OneDrive
cd "C:\Users\wn00121337\AppData\Local\Microsoft\OneDrive"
START OneDrive.exe

TIMEOUT /T 300
cd /D "C:\Users\wn00121337\Skripte"
call killOneDriveAfterBackup.bat

::TIMEOUT /T 15

EXIT
