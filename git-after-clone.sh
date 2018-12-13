# exec your command from whatever place
# S means source
S="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $S # necessary

./git-remote-rm.sh
./git-remote-add.sh
