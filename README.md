# First Discovery Launcher Installer


### What is this?
An automatic way to install a First Discovery launcher. The repo contains two scripts and two icons.

### How does it work?
When you run `install-launcher.vbs`, the script moves `launcher.bat` and the icons to `C:\Program Files\First-Discovery-Chrome-Extension`. Then, it creates a shortcut to `launcher.bat` on the current user's desktop. `launcher.bat` is a simple script that opens Chrome (maximized) at `http://first-discovery.mybluemix.net\demos\PrefsServerIntegration`.

### How do I use it?
- [Install the native host](https://github.com/pga03/first-discovery-native-host) 
- Clone this repo
- Extract
- Run `install-launcher.vbs`

### Prerequisites
- [Google Chrome](https://www.google.com/chrome/browser/desktop/)
- [First Discovery Native Host](https://github.com/pga03/first-discovery-native-host)
- [First Discovery Extension](https://github.com/pga03/extension-chrome-windows). Installation link [here](https://chrome.google.com/webstore/detail/comibmfirstdiscovery/nkojgcmaioingjndknblmghefcfijobm)
- Administrator rights (`install-launcher.vbs` will prompt for credentials)
