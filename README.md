# First Discovery Launcher Installer


### What is this?
An automatic way to install a First Discovery launcher. The repo contains three scripts and two icons.

### How do I use it?
- [Install the native host](https://github.com/pga03/first-discovery-native-host)
- Clone this repo
- Extract
- Run `install-launcher.bat`
- When prompted, choose to install either the Electron preview shortcut or the Search preview shortcut

To change the preview that shortcut points to, simply run `install-launcher.bat` again and choose a different preview

### How does it work?
When you run `install-launcher.bat`, the script does the following:

- Creates a folder `%AppData%\first-discovery\`
- Asks if the user wants the shortcut to point to the First Discovery with the Electron preview or the Search preview
- Moves either `launcher-electron.bat` or `launcher-search.bat` to `%AppData%\first-discovery\` and renames it `launcher.bat`
- Moves icons to `%AppData%\first-discovery\`
- Calls `create-shortcut.vbs` which creates a shortcut to the launcher (with a nice icon) on the current user's desktop.

`launcher-electron.bat` and `launcher-search.bat` are simple batch scripts that open Chrome in kiosk mode at either `http://first-discovery.mybluemix.net\demos\prefsServerIntegration\index.html?preview=search` or `http://first-discovery.mybluemix.net\demos\prefsServerIntegration\index.html?preview=electron`


### Prerequisites
- [Google Chrome](https://www.google.com/chrome/browser/desktop/)
- [First Discovery Native Host](https://github.com/pga03/first-discovery-native-host)
- [First Discovery Extension](https://github.com/pga03/extension-chrome-windows). Installation link [here](https://chrome.google.com/webstore/detail/comibmfirstdiscovery/nkojgcmaioingjndknblmghefcfijobm)
