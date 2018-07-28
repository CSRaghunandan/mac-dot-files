#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# add path to where rust cargo crates are installed
export PATH=$PATH://Users/csraghunandan/.cargo/bin

# add path to where haskell-stack packages are installed
export PATH=$PATH://Users/csraghunandan/.local/bin

# set the source code for rust. Needed by racer
export RUST_SRC_PATH=~/.multirust/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src/


# export the path for latex stuff
export PATH=$PATH://usr/local/texlive/2016/bin/x86_64-darwin

# export racket path
export PATH=$PATH://Applications/Racket\ v7.0/bin

# export Golang bin path
export PATH=$PATH:~/go/bin

LDFLAGS="-L/usr/local/opt/llvm/lib"
export  LDFLAGS

CPPFLAGS="-I/usr/local/opt/llvm/include"
export CPPFLAGS

# OPAM configuration
. /Users/csraghunandan/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export PATH="/usr/local/Cellar/llvm/6.0.1/share/clang:$PATH"

# use the latest version of openssl provided by homebrew
export PATH="/usr/local/opt/openssl/bin:$PATH"

# needed for sdl2
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"

export LC_ALL="en_US.UTF-8"
