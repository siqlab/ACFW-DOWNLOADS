$commitName = $args[0]

try {
    git -c http.sslVerify=false pull
    git add .
    git commit -m "Added Downloaded Files of Test: $commitName"
    git -c http.sslVerify=false push
}
catch {
    Write-Output "--ERROR--Exception Caught in git.ps1"
}
