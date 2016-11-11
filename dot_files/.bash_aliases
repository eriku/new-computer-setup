# Written by: Erik Uunila [https://github.com/eriku]
# Completely free to use but feel free to send me a couple of bucks
# https://cash.me/$eriku

# UPDATE A BUNCH OF SOFTWARE
alias updateall='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update npm -g; npm update -g; gem update'

# FORCE EMPTY TRASH
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# SHOW / HIDE HIDDEN FILES
alias showfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidefiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# HIDE / SHOW ALL DESKTOP ICONS (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# REBUILD “OPEN WITH” MENU TO GET RID OF DUPLICATES
alias rebuildmenu="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user"
alias fixmenu="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user"

# ADD SPACER TO OS X DOCK
alias adddockspace="defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
killall Dock"

# DISABLE OS X DASHBOARD
alias killdashboard="defaults write com.apple.dashboard mcx-disabled -boolean YES && killall Dock"
alias enabledashboard="efaults write com.apple.dashboard mcx-disabled -boolean NO && killall Dock"

# Get To Work (Opens site folder & css folder in Sublime and then runs compass watch)
alias gettowork="sbl path/to/folder; sbl path/to/folder/css; compass watch;"
alias gtw="sbl path/to/folder; sbl path/to/folder/css; compass watch;"


# ------------------------------

# STANDARD ALIASES
alias l='ls -al --color'
alias ll='ls -alFh --color'
alias lp='ls -p --color'
alias h=history
alias space='df -h'

# ------------------------------

# PROGRAM SHORTCUTS
alias psd="open -a /Applications/Adobe\ Photoshop\ CS5/Adobe\ Photoshop\ CS5.app"


# ------------------------------

# APACHE
alias apachestart='sudo apachectl start'
alias apachestop='sudo apachectl stop'
alias apacherestart='sudo apachectl restart'
alias apachelog='tail -f /private/var/log/apache2/error_log'
alias apachelogerase='sudo rm -rf /private/var/log/apache2/error_log'
alias apachelogreset='sudo apachectl stop
sudo rm -rf /private/var/log/apache2/error_log
sudo apachectl start'

alias vhosts='sbl /private/etc/apache2/extra/httpd-vhosts.conf'
alias hosts='sbl /etc/hosts'


# ------------------------------

# DRUSH
alias cc='drush cc all'
alias online='drush vset --always-set maintenance_mode 0'
alias offline='drush vset --always-set maintenance_mode 1'


# ------------------------------

# GIT
alias gst='git status'
alias gbr='git branch -a'
alias gcln='git remote prune origin'

alias gpshd='git push origin develop'
alias gplld='git pull origin develop'


# ------------------------------

# HARVEST
alias man='gem man -ls'


# ------------------------------

# JEKYLL
alias jklstart="bundle exec jekyll serve --watch --baseurl ''"
alias jklstartdraft="bundle exec jekyll serve --draft --watch --baseurl ''"
alias jekyllstart="bundle exec jekyll serve --watch --baseurl ''"
alias jekyllstartdraft="bundle exec jekyll serve --draft --watch --baseurl ''"


# ------------------------------

# MYSQL
alias mysqlstart='mysql.server start'
alias mysqlstop='mysql.server stop'
alias mysqlrestart='mysql.server restart'
alias mysqllog='sudo tail -f /private/var/log/mysql/error_log.err'


# -------------------------------

# PHP
alias phpstart="launchctl load /usr/local/opt/postgresql/homebrew.mxcl.php54.plist"
alias phpstop="launchctl unload /usr/local/opt/postgresql/homebrew.mxcl.php54.plist"

# - Switch php version
alias use_php53="brew unlink php54 && brew unlink php55 && brew unlink php53 && brew link php53"
alias use_php54="brew unlink php53 && brew unlink php55 && brew unlink php54 && brew link php54"
alias use_php55="brew unlink php53 && brew unlink php54 && brew unlink php55 && brew link php55"


# -------------------------------

# POSTGRESQL
alias pgstart="launchctl load -w /usr/local/opt/postgresql/homebrew.mxcl.postgresql.plist"
alias pgstop="launchctl unload -w /usr/local/opt/postgresql/homebrew.mxcl.postgresql.plist"

alias psqlstart='lunchy start postgres'
alias psqlstop='lunchy stop postgres'

alias poststart='pg_ctl start -D /usr/local/var/postgres'
alias poststop='pg_ctl stop -D /usr/local/var/postgres'

alias postgresstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias postgresstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop'


# ------------------------------

# POSTMAIL

alias stopmail='sudo launchctl stop org.postfix.master'
alias startmail='sudo launchctl start org.postfix.master && sudo postfix start'


# ------------------------------

# RAILS

alias railss='bundle exec rails s'
alias railsstart='bundle exec rails s'


# -------------------------------

# REDIS
alias redisstart="launchctl load /usr/local/opt/redis/homebrew.mxcl.redis.plist"
alias redisstop="launchctl unload /usr/local/opt/redis/homebrew.mxcl.redis.plist"

