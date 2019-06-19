# This file contains lines to ADD to your .zshrc
# It is NOT meant as a full .zshrc, as each will likely contain custom paths for that device/user

# Themes
ZSH_THEME="skeletor"
# ZSH_THEME="robbyrussell"
# ZSH_THEME="zhann"
# ZSH_THEME="random"

# Java
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
# export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
# export STUDIO_JDK=`/usr/libexec/java_home -v 1.8`
export JRE_HOME=`/usr/libexec/java_home -v 11`
export JAVA_HOME=`/usr/libexec/java_home -v 11`

# Maven
export PATH="/usr/local/opt/maven@3.5/bin:$PATH"
export M2_HOME=/usr/local/Cellar/maven@3.5/3.5.4/libexec
export M2=$M2_HOME/bin
export PATH=$PATH:$M2_HOME/bin

# Tomcat
export CATALINA_HOME=$HOME/tomcat/apache-tomcat-9.0.16
