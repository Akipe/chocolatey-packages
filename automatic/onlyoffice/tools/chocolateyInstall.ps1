$ErrorActionPreference = 'Stop'

$packageName    = 'onlyoffice'
$fileType       = 'exe'
$url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-5.2.8/DesktopEditors_x86.exe'
$url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-5.2.8/DesktopEditors_x64.exe'
$softwareName   = 'onlyoffice*'
$checksum       = 'dae02ddcb3343002a532f6986495296d9a938e4874379d91a26e17ad6b96a2f6'
$checksum64     = '96c94468acd1cdaa7bc806ec7cc583e3804d55af5240d2c32951fa22a113816b'
$checksumTypeAll= 'sha256'
$silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'

$packageArgs = @{
  packageName   = $packageName
  fileType      = $fileType
  url           = $url
  url64bit      = $url64
  softwareName  = $softwareName
  checksum      = $checksum
  checksumType  = $checksumTypeAll
  checksum64    = $checksum64
  checksumType64= $checksumTypeAll
  silentArgs    = $silentArgs
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
