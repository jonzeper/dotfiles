function gup
  git fetch && git checkout $argv && git reset --hard origin/$argv
end
