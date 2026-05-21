@echo off
echo.
echo ================================================
echo   VIBE EXPANSIVA — Deploy GitHub Pages
echo ================================================
echo.

:: Pede o usuario do GitHub
set /p USUARIO="Digite seu usuario do GitHub (ex: italocosme): "
set /p TOKEN="Cole seu novo Personal Access Token (ghp_...): "

echo.
echo Iniciando deploy...
echo.

:: Inicializa git na pasta atual
cd /d "%~dp0"
git init
git checkout -b main

:: Adiciona apenas o HTML
git add index.html
git commit -m "feat: launch Vibe Expansiva landing page"

:: Define remote com autenticacao no proprio URL
git remote add origin https://%TOKEN%@github.com/%USUARIO%/vibeexpansiva.git

:: Sobe para o GitHub
git push -u origin main

echo.
echo ================================================
echo   Upload concluido!
echo.
echo   Agora acesse:
echo   github.com/%USUARIO%/vibeexpansiva
echo   Settings - Pages - Branch: main - Save
echo.
echo   Depois aponte o dominio no registro.br
echo ================================================
echo.
pause
