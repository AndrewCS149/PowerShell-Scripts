# add - commit - push - lazy
function acp {
  # prompt for a commit message and the desired branch to push to
  $message = read-host -prompt 'Message'
  $branch = read-host -prompt 'Branch'

  # git add all files
  git add .

  # git commit
  git commit -a -m "$message"

  # git push
  git push origin "$branch"
}