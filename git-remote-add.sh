# exec your command from whatever place
# S signifas source
S="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $S # necessary

# B signifas base / baza
# D signifas directory
# P signifas path
# F signifas offline
# N signifas online
B="$(basename $(pwd))"
D="$B.git"
P="../gits"
F="offline"
N="online"

git remote add $F $P/$D
git remote add $N $P/$D

git remote set-url --push $F https://github.com/i4get2code/$D
git remote set-url --add --push $F $P/$D

git remote set-url $N https://github.com/i4get2code/$D
git remote set-url --push $N $P/$D
git remote set-url --add --push $N https://github.com/i4get2code/$D

git remote -v
