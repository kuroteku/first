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
#bindkey ' ' magic-space  # also do history expansion on space

alias vi='vim'
alias ac='apachectl configtest'
alias ar='service httpd reload'
alias nc='service nginx configtest'
alias push='git push https://kuroteku@github.com/kuroteku/first.git'

PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/lib64/fluent/ruby/bin:/usr/local/mongodb/bin/:/usr/local/apache2/sbin/:/usr/local/apache2/bin:/usr/local/bin/:/usr/local/sbin/
export PATH

GEM_HOME=/usr/lib64/fluent/ruby/lib/ruby/gems/1.9.1
GEM_PATH=/usr/lib64/fluent/ruby/lib/ruby/gems/1.9.1
export GEM_HOME
export GEM_PATH

CATALINA_HOME=/usr/local/tomcat
export CATALINA_HOME
JRE_HOME=/usr/java/jre
JAVA_HOME=/usr/java/
export JRE_HOME


_src_etc_profile_d()
{
    #  Make the *.sh things happier, and have possible ~/.zshenv options like
    # NOMATCH ignored.
#    emulate -L ksh


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

