# 🚀 Script de Deploy - Portfólio Rodrigo Henriky
# Execute este arquivo para salvar e publicar o portfólio

Write-Host "🎯 Iniciando processo de deploy do portfólio..." -ForegroundColor Green

# Verificar se estamos no diretório correto
if (!(Test-Path "index.html")) {
    Write-Host "❌ Erro: Execute este script no diretório do portfólio!" -ForegroundColor Red
    exit
}

Write-Host "📁 Verificando arquivos do projeto..." -ForegroundColor Yellow
$files = @("index.html", "styles.css", "script.js", "README.md")
foreach ($file in $files) {
    if (Test-Path $file) {
        Write-Host "✅ $file - OK" -ForegroundColor Green
    } else {
        Write-Host "❌ $file - FALTANDO" -ForegroundColor Red
    }
}

# Criar backup local
Write-Host "💾 Criando backup local..." -ForegroundColor Yellow
$backupDir = "E:\Backup_Portfolio_$(Get-Date -Format 'yyyy-MM-dd_HH-mm')"
Copy-Item -Path "." -Destination $backupDir -Recurse -Exclude ".git"
Write-Host "✅ Backup criado em: $backupDir" -ForegroundColor Green

# Commit no Git
Write-Host "📝 Salvando alterações no Git..." -ForegroundColor Yellow
git add .
$commitMessage = "🔄 Update portfólio - $(Get-Date -Format 'dd/MM/yyyy HH:mm')"
git commit -m $commitMessage

Write-Host "✅ Portfólio salvo com sucesso!" -ForegroundColor Green
Write-Host ""
Write-Host "📋 Próximos passos para publicar online:" -ForegroundColor Cyan
Write-Host "1. 🌐 Criar repositório no GitHub (github.com/new)"
Write-Host "2. 📤 Executar: git remote add origin [URL_DO_SEU_REPO]"
Write-Host "3. 🚀 Executar: git push -u origin main"
Write-Host "4. ⚙️  Ativar GitHub Pages nas configurações do repo"
Write-Host ""
Write-Host "🎉 Seu portfólio estará online em: https://[SEU_USUARIO].github.io/[NOME_DO_REPO]" -ForegroundColor Green
