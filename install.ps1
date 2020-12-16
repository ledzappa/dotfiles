$installDefault = $FALSE;
$installDev = $FALSE;
$installVsCodeExtensions = $FALSE;

# install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; 
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; 
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

$defaultApps = @(
    "adobereader", 
    "spotify", 
    "discord",
    "winamp"
)
    
$devApps = @(
    "vscode", 
    "git", 
    "nodejs", 
    "sublimetext3",
    "intellijidea-community"
    "slack"
)

$vsCodeExtensions = @(
    "abusaidm.html-snippets",
    "alefragnani.project-manager",
    "anseki.vscode-color",
    "dsznajder.es7-react-js-snippets",
    "DavidAnson.vscode-markdownlint",
    "eamodio.gitlens",
    "eg2.vscode-npm-script",
    "esbenp.prettier-vscode",
    "fabiospampinato.vscode-diff",
    "johnpapa.Angular2",
    "liaronce.gml-support",
    "ms-vscode.powershell",
    "msjsdiag.debugger-for-chrome",
    "msjsdiag.vscode-react-native",
    "pranaygp.vscode-css-peek",
    "SimonTest.simontest",
    "techer.open-in-browser",
    "thekalinga.bootstrap4-vscode",
    "vscode-icons-team.vscode-icons"
)

if ($installDefault) {
    foreach ($element in $defaultApps) {
        choco install $element -y
    }
}

if ($installDev) {
    foreach ($devApp in $devApps) {
        choco install $element -y
    }
}

if ($installVsCodeExtensions) {
    foreach ($extension in $vsCodeExtensions) {
        code --install-extension $extension
    }
}
