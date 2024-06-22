extproc sh

d=$(dirname "$0" | tr '\\' /)

n=configure
test -f "$d/$n." || { echo "\`$d/$n' not found !!!"; exit 1; }

export PKG_CONFIG="pkg-config --static"
export LDFLAGS=-Zhigh-mem

opts=""
"$d/$n" $opts "$@" 2>&1 | tee "$n.log"
