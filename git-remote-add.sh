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

git remote add online $P/$D
git remote add offline $P/$D

git remote set-url --push offline https://github.com/i4get2code/$D
git remote set-url --add --push offline $P/$D

git remote set-url online https://github.com/i4get2code/$D
git remote set-url --push online $P/$D
git remote set-url --add --push online https://github.com/i4get2code/$D

git remote -v
