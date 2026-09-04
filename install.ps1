#requires -Version 5.1

[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$repositoryRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$petId = 'maomao-kusuriya'
$sourceManifest = Join-Path $repositoryRoot 'pet.json'
$sourceSpritesheet = Join-Path $repositoryRoot 'spritesheet.webp'
$codexPetsDirectory = Join-Path ([Environment]::GetFolderPath('UserProfile')) '.codex\pets'
$targetPetDirectory = Join-Path $codexPetsDirectory $petId

foreach ($requiredFile in @($sourceManifest, $sourceSpritesheet)) {
    if (-not (Test-Path -LiteralPath $requiredFile -PathType Leaf)) {
        throw "Required pet file is missing: $requiredFile"
    }
}

New-Item -ItemType Directory -Path $targetPetDirectory -Force | Out-Null
Copy-Item -LiteralPath $sourceManifest -Destination (Join-Path $targetPetDirectory 'pet.json') -Force
Copy-Item -LiteralPath $sourceSpritesheet -Destination (Join-Path $targetPetDirectory 'spritesheet.webp') -Force

$sourceHash = (Get-FileHash -Algorithm SHA256 -LiteralPath $sourceSpritesheet).Hash
$installedHash = (Get-FileHash -Algorithm SHA256 -LiteralPath (Join-Path $targetPetDirectory 'spritesheet.webp')).Hash
if ($sourceHash -ne $installedHash) {
    throw 'Spritesheet verification failed after copying.'
}

Write-Host "Installed Maomao Codex Pet to: $targetPetDirectory"
Write-Host 'In Codex, open Settings > Pets, refresh custom pets, and select Maomao.'
