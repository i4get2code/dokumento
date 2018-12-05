# exec your command from whatever place
# S means source
S="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $S # necessary

# N means name / nomo
# D means directory
# P means path
N="$(basename $(pwd))"
D="$N.git"
P="../gits"

git remote add on $P/$D
git remote add off $P/$D

git remote set-url --push off https://github.com/i4get2code/$D
git remote set-url --add --push off $P/$D

git remote set-url on https://github.com/i4get2code/$D
git remote set-url --push on $P/$D
git remote set-url --add --push on https://github.com/i4get2code/$D

git remote -v
