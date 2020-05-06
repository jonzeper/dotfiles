function recent-branches
  if test -n "$argv"
    set branch_count $argv
  else
    set branch_count 8
  end
  git branch --sort=-committerdate | head -n $branch_count
end
