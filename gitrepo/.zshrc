#
# /etc/zshrc is sourced in interactive shells.  It
# should contain commands to set up aliases, functions,
# options, key bindings, etc.
#

## shell functions
#setenv() { export $1=$2 }  # csh compatibility

# Set prompts
PROMPT='[%n@%m]%~%# '    # default prompt
RPROMPT='[%T]'     # prompt for right side of screen

# bindkey -v             # vi key bindings
# bindkey -e             # emacs key bindings
bindkey ' ' magic-space  # also do history expansion on space

PROXY="http://202.238.181.254:8080"
export PROXY
PATH=/usr/local/bin:/bin:/usr/bin:/home/taka/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/lib64/fluent/ruby/bin
export PATH

MONGOPATH=/usr/local/mongodb/current
export MONGOPATH

GEM_HOME=/usr/lib64/fluent/ruby/lib/ruby/gems/1.9.1
export GEM_HOME
GEM_PATH=/usr/lib64/fluent/ruby/lib/ruby/gems/1.9.1
export GEM_PATH
alias sd='sudo -H -s'
alias push='git push https://kuroteku@github.com/kuroteku/first.git'

_src_etc_profile_d()
{
    #  Make the *.sh things happier, and have possible ~/.zshenv options like
    # NOMATCH ignored.
    emulate -L ksh


    # from bashrc, with zsh fixes
    if [[ ! -o login ]]; then # We're not a login shell
        for i in /etc/profile.d/*.sh; do
	    if [ -r "$i" ]; then
	        . $i
	    fi
        done
        unset i
    fi
}
_src_etc_profile_d

unset -f _src_etc_profile_d

