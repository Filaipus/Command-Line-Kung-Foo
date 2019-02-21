:: Problem #1
set | more


echo APPDATA is the data for applications folder:
echo %APPDATA% 

echo SystemRoot its the path of windows:
echo %SystemRoot%

echo Path is a set of directories that might contain executables to execure commands:
echo %Path%

pause

:: Problem 2

wmic cpu get name

pause

:: Problem 3

:: Problem 4

wmic process list brief

:: Problem 5

:: Problem 6
dir C: /s /b | findstr /i *.txt

:: Problem 7

wmic useraccount where "localaccount=true" get name

:: Problem 8

net user testuser testuser /add

net user testuser /delete


:: Problem 9

net localgroup test /add
net localgroup test testuser /add
net localgroup test testuser /delete
net localgroup test /delete

:: Problem 10
netsh advfirewall show currentprofile
netsh advfirewall set  currentprofile state off
netsh advfirewall set  currentprofile state on

:: Problem 11
arp -add

::Problem 12
REG QUERY HKLM\Software 
:: ADD with REG ADD, delete with REG DELETE

:: Problem 13
::DNS redirect you to correct IP places. If a website has moved places recently your DNS may take you to the wrong website (and you need to flush the DNS)

:: Problem 14

net use z: \\labserverwin\support
dir z:

:: Problem 15
net start

:: Problem 16
help for

:: Problem 17
::Tries to send nothing to stuff this is some stuff.

::Problem 18
::Looks for stuff in folders with s*

::Problem 19

::Problem 20
::Task Scheduler

::Problem 21
::Task Scheduler

::PRoblem 22


::Problem 23
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f