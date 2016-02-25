# First Discovery Launcher Installer


### What is this?
An automatic way to install a First Discovery launcher. The repo contains three scripts and two icons.

### How does it work?
When you run `install-launcher.bat`, the script creates a folder in `%AppData%\first-discovery`. Then it moves `launcher.bat` and the icons to that directory. Then, it calls `create-shortcut.vbs` which creates a shortcut to the launcher (with a nice icon) on the current user's desktop. `launcher.bat` is a simple script that opens Chrome (maximized) at `http://first-discovery.mybluemix.net\demos\PrefsServerIntegration`.

### How do I use it?
- [Install the native host](https://github.com/pga03/first-discovery-native-host) 
- Clone this repo
- Extract
- Run `install-launcher.bat`

### Prerequisites
- [Google Chrome](https://www.google.com/chrome/browser/desktop/)
- [First Discovery Native Host](https://github.com/pga03/first-discovery-native-host)
- [First Discovery Extension](https://github.com/pga03/extension-chrome-windows). Installation link [here](https://chrome.google.com/webstore/detail/comibmfirstdiscovery/nkojgcmaioingjndknblmghefcfijobm)
