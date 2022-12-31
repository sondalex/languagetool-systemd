# Languagetool-systemd

This repository contains a minimal systemd service configuration of languagetool server.
It is not intended to be used with open access to the internet but just for local usage. 
However you can fork this repo and tweak to fit it to your purpose.

## Dependency Requirements

### Download the Language Server

The java language server has to be contained in the directory `${HOME}/.local/bin/languagetool/`
You can simply execute `download.sh` if you want to automate this and download the latest server. Note
that there is no file hash checks.

## Usage

### Registering the service

Clone the current repository.


```console
user@desktop:~/Downloads$ git clone https://github.com/sondalex/languagetool-systemd.git && cd languagetool-systemd
```

Copy the service file to systemd service directory.

```console
user@desktop:~/Downloads/languagetool-systemd$ sudo cp langtoolsysd.service /etc/systemd/system/langtoolsysd@<your username>.service
```

**Note** replace <your username> with the username of your current bash session.
If you do not know: run `whoami` in your shell.


Enable the service

```console
user@desktop:~/Downloads/languagetool-systemd$ sudo systemctl enable langtoolsysd@<your username>.service
```

### Disabling/Stopping the service

If you wish to stop the service, for instance because you run a intensive script in the background and want to access the precious few 100mb used by the language server. Just run:


```console
user@desktop~$ sudo systemctl stop langtoolsysd@<your username>.service
```

If you wish to stop the service definitely, disable the service:


```console
user@desktop~$ sudo systemctl disable langtoolsysd@<your username>.service
```

