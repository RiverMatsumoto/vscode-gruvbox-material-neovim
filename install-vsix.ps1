$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $MyInvocation.MyCommand.Path

Push-Location $root
try {
  npm exec --yes @vscode/vsce -- package
} finally {
  Pop-Location
}

$vsix = Get-ChildItem -LiteralPath $root -Filter "*.vsix" -File |
  Sort-Object LastWriteTime -Descending |
  Select-Object -First 1

if (-not $vsix) {
  throw "No .vsix file found in $root after packaging."
}

$code = Get-Command code -ErrorAction Stop
& $code.Source --install-extension $vsix.FullName --force

Write-Host "Packaged and installed $($vsix.Name). Reload VS Code to use the updated theme."
