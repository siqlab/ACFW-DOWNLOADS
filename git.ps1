$commitName = $args[0]

try {
    Set-Location ~\Documents\ACFW-DOWNLOADS
    git -c http.sslVerify=false pull
    git add .
    git commit -m "Added Downloaded Files of Test: $commitName"
    git -c http.sslVerify=false push
    Set-Location ~\Documents\malware-downloader-powershell
}
catch {
    Write-Output "--ERROR--Exception Caught in git.ps1"
}
