# Initial test drive of saperlipopette
# Jeff Oliver
# jcoliver@arizona.edu
# 2026-03-25

# Installed via instructions on package page
# install.packages(
#   'saperlipopette',
#   repos = c('https://packages.ropensci.org', 'https://cloud.r-project.org')
# )

library(saperlipopette)
parent_path <- withr::local_tempdir()

# Whoa. The command below opens a new RStudio project. And we switch over to
# that one. But it is a new (different) R instance, so none of those variables
# exist. We are supposed to keep working in this R session, I guess?
# Also, the message has a trailing exclamation point on the path that should be
# removed:
# Follow along in /tmp/RtmpE7N8I4/file45c21d610e68/one-small-change!
path <- exo_one_small_change(parent_path)

# My output also shows the establishment of the .Rproj file. Maybe this is not
# intended to be run in RStudio?
fs::dir_tree(path)

gert::git_log(repo = path)

# That's kind of it. Trying another example
parent_path <- withr::local_tempdir()
path <- exo_worktree(parent_path)

# The tip() function gets created each time one of the exo_* functions is run.
# It isn't exported, but rather just provides a series of steps (usually git
# commands) the user should take.

# tip() sometimes says "Examine Git history", but this should probably provide
# or be replaced by the command `git log`
