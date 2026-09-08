@echo off
chcp 65001 > nul
echo Сборка ClubTools из частей...
echo.

if exist ClubToolsAdmin.exe.part01 (
    copy /b ClubToolsAdmin.exe.part* ClubToolsAdmin.exe > nul
    echo Готово: ClubToolsAdmin.exe
) else (
    echo Частей админ-панели рядом нет.
)

if exist ClubToolsClient.exe.part01 (
    copy /b ClubToolsClient.exe.part* ClubToolsClient.exe > nul
    echo Готово: ClubToolsClient.exe
) else (
    echo Частей клиента рядом нет.
)

echo.
echo Готовые файлы лежат в этой же папке. Запускайте ClubToolsAdmin.exe.
pause
