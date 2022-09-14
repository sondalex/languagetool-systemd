# Languagetool-systemd

This repository contains a minimal systemd service configuration of languagetool server.
It is not intended to be used with open access to the internet but just for local usage. 
However you can fork this repo and tweak to fit it to your purpose.

## Usage

The java language server has to be contained in the directory `${HOME}/.local/bin/languagetool/`
You can simply execute download.sh if you want to automate this and download the latest server. Note
that there is no file hash checks.


First copy the service file to systemd service directory.

```console
user@desktop:~$ sudo cp langtoolsysd.service /etc/systemd/system/langtoolsysd@<your username>.service
```

Make sure to replace `<your username> by your current username.

