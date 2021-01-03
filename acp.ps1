# add - commit - push - lazy
function acp {
  $message = read-host -prompt 'Message'
  $branch = read-host -prompt 'Branch'

  git add .
  git commit -a -m "$message"
  git push origin "$branch"
}