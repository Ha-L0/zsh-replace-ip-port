# replace ip and port in current buffer with env varibale IP and PORT

replaceipport () {
  local _BUFFER=""
  [[ -z "${IP}" ]] && newip='99.99.99.99' || newip="${IP}"
  [[ -z "${PORT}" ]] && newport='9999' || newport="${PORT}"
  BUFFER=$(echo $BUFFER | sed 's/[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}/'$newip'/g' | sed 's/[0-9][0-9][0-9][0-9]/'$newport'/g')
}

zle -N replaceipport
bindkey '^O' replaceipport
