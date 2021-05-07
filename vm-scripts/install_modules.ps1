if ([System.IO.File]::Exists("$Env:LOCALAPPDATA\install_modules.done")) {
    Write-Output "Puppet already installed"
} else {
    Write-Output 'Installing required puppet modules...'
    cd c:\vagrant
    iex "& 'c:\Program Files\Puppet Labs\Puppet\puppet\bin\r10k.bat' puppetfile install --verbose"
    Write-Output 'Installing required puppet modules finished.'
    New-Item -ItemType file $Env:LOCALAPPDATA\install_modules.done
}