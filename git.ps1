$commitName = $args[0]

try {
    git pull
git add .
git commit -m "Added Downloaded Files of Test: $commitName"
git push    
}
catch {
    Write-Output "--ERROR--Exception Caught in git.ps1"
}
