#
# Simple script that selects the gradle wrapper if it exists.
#

function select-gradle() {
  if [ -f gradlew ]; then
    ./gradlew $@ 
  else
    gradle $@ 
  fi
}

alias gr=select-gradle
