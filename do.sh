# S means source
# P means path

# exec your command from whatever place
S="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $S
cd ../

P=$(pwd)

cd $HOME # cd ~/

if [[ ! -d Documents ]]; then
    mkdir Documents
fi

if [[ ! -d dokumento ]]; then
    mkdir dokumento
fi

if [[ -L Documents/gxenerala ]]; then
    rm Documents/gxenerala
fi 

if [[ -L dokumento/gxenerala ]]; then
    rm dokumento/gxenerala
fi 

# ln -s $S Documents
ln -s $P Documents/gxenerala
ln -s $P dokumento/gxenerala

