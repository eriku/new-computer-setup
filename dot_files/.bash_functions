# Written by: Erik Uunila [https://github.com/eriku]
# Completely free to use but feel free to send me a couple of bucks
# https://cash.me/$eriku

# Create a new directory and enter it
function mkd() {
  mkdir -p "$@" && cd "$@"
}

function push() {
  git push origin "$@"
}

function pull() {
  git pull origin "$@"
}

function gmrg() {
  git merge --no-ff "$@"
}

function grm() {
  git rm -rf --cached "$@"
}

function gittop(){
  top=$(git rev-parse --show-toplevel)
  if [ 0 -eq $? ]; then
    cd $top
  fi
}

function last_two_dirs {
  pwd |rev| awk -F / '{print $1,$2}' | rev | sed s_\ _/_
}

function svnignore(){
  svn propset svn:ignore "$@" .
}

function sucksite(){
  wget --random-wait -r -p -e robots=off -U mozilla "$@"
}