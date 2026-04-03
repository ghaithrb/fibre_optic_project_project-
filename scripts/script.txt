Write-Host "Starting export..." -ForegroundColor Green

$SRC = "..\gns3 configuartion\project-files\dynamips"
$DEST = "..\configs"

New-Item -ItemType Directory -Force -Path "$DEST\routers" | Out-Null
New-Item -ItemType Directory -Force -Path "$DEST\switches" | Out-Null

$r = 1
$s = 1

Get-ChildItem -Recurse -Path $SRC -Filter "startup-config.cfg" | ForEach-Object {

    $content = Get-Content $_.FullName

    if ($content -match "switchport") {
        $name = "SW$s.cfg"
        Copy-Item $_.FullName "$DEST\switches\$name"
        Write-Host "Switch exported: $name"
        $s++
    }
    else {
        $name = "R$r.cfg"
        Copy-Item $_.FullName "$DEST\routers\$name"
        Write-Host "Router exported: $name"
        $r++
    }
}

Write-Host "Export DONE - SUCCESS" -ForegroundColor Cyan