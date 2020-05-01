# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

TMPDIR=$TMP; export TMPDIR
ORACLE_BASE={{ inst_oracle_base }}; export ORACLE_BASE
ORACLE_HOME={{ inst_oracle_home }}; export ORACLE_HOME
ORACLE_SID={{ inst_db_sid }}; export ORACLE_SID
PATH=$ORACLE_HOME/bin:$PATH; export PATH
LD_LIBRARY_PATH=$ORACLE_HOME/lib:/lib:/usr/lib:/usr/lib64; export LD_LIBRARY_PATH
CLASSPATH=$ORACLE_HOME/jlib:$ORACLE_HOME/rdbms/jlib; export CLASSPATH
