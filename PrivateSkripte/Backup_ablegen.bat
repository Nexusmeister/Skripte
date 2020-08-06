:: OBSOLETE: Wurde durch C#-Tool abgelöst

@echo off

:: Create Directory for backup with date of today
cd /D "E:\Projektarbeit\Projektarbeit_II\Backup"
::if not exist %date:/=%
mkdir %date:/=%

cd /D "F:\OneDrive\DH-Wirtschaftsinformatik\Projektarbeit\Projektarbeit_II\Backup\%date:/=%"
xcopy /s "F:\OneDrive\DH-Wirtschaftsinformatik\Projektarbeit\Projektarbeit_II\Backup\%date:/=%" "E:\Projektarbeit\Projektarbeit_II\Backup\%date:/=%"

EXIT