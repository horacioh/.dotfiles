#
# =====================
# NODE PACKAGES
# =====================
#
export PATH="/usr/local/bin:$PATH"
NPM_PACKAGES="/Users/horacio/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"

export PATH="$PATH:/Users/horacio/Library/Python/3.7"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

#
# =====================
# ANDROID
# =====================
#
export ANDROID_HOME=/usr/local/opt/android-sdk
export ANDROID_NDK=/usr/local/Cellar/android-ndk/r7b
export PATH=${PATH}:$ANDROID_HOME/platform-tools/
export PATH=${PATH}:$ANDROID_HOME/tools
export PATH=${PATH}:/usr/local/bin/ant

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#
# =====================
# MONGODB
# =====================
#
#
export PATH=/usr/local/Cellar/mongodb/3.0.3/bin/:$PATH

export NVM_DIR="/Users/horacio/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#
# =====================
# PHP
# =====================
#

export PATH=/usr/local/php5/bin:$PATH
source ~/.caniuse.completion.sh
