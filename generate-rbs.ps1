Set-Location lib
Get-ChildItem -Path . -Recurse -File | Resolve-Path -Relative | ForEach-Object {
    $targetPath = "../sig/${_}s"
    Write-Output "Processing file: ${_}"
    if (-NOT (Test-Path $targetPath)) {
        $directory = Split-Path -Parent $targetPath
        New-Item -ItemType Directory -Force -Path $directory
        typeprof $_ >> $targetPath
    }
}
Set-Location ..