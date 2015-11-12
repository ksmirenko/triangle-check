@echo off

if exist "NuGet.exe" goto :packagesRestore
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://nuget.org/nuget.exe', 'NuGet.exe')"

:packagesRestore
"NuGet.exe" "restore" "TriangleCheck.sln" "-OutputDirectory" "packages"