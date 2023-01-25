$commitName = $args[0]
$commitName = [string]$commitName

if ($commitName.Length -gt 0) {
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
} else {
    Write-Output "`n--ERROR--Please Enter A Commit Message!!!"
}
