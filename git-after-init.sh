# exec your command from whatever place
# S means source
S="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $S # necessary

./git-init-bare.sh
./git-remote-add.sh
