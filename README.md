## Exzeo workstation setup for Mac

####Instructions
1) Open Terminal application

2) Install command line tools
```bash
xcode-select --install
````

3) Install Homebrew (requires sudo)
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
```

4) Clone this repository
5) Install homebrew dependencies
```bash
brew bundle install
```
*unfortunately, we have to pay attention during install, as Microsoft Edge requires user password.
6) Run "symlinks.sh"
```bash
./symlinks.sh
```

7) Install forticlient vpn
```bash
https://filestore.fortinet.com/forticlient/downloads/FortiClientVPNSetup_6.2.6.737_macosx.dmg
```
