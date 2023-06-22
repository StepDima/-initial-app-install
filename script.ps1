wsl --install
# chocolatey install
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

$packages = @(
    # general soft
    "googlechrome",
    "7zip",
    # main 
    "python",
    "nodejs",
    "mingw",
    # dev soft
    "vscode",
    "pycharm-community",
    "beekeeper-studio.install",
    "git",
    "postman",
    "docker-desktop",
    "anydesk",
    "teamviewer",
    # communication soft
    "discord",
    "telegram",
    # game soft
    "steam",
    "epicgameslauncher",
    "obs-studio"
)

foreach ($package in $packages) {
    choco install $package -y
}

restart-computer
