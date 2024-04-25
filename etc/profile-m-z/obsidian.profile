# Firejail profile for obsidian-wayland
# Description: Personal knowledge base and note-taking with Markdown files.
# This file is overwritten after every install/update
# Persistent local customizations
include obsidian-wayland.local
# Persistent global definitions
include globals.local

noblacklist ${DOCUMENTS}
noblacklist ${HOME}/.config/git
noblacklist ${HOME}/.config/obsidian
noblacklist ${HOME}/.gitconfig

ipc-namespace
nonewprivs
noroot
protocol unix,inet,inet6
#net none

private-bin basename,bash,cat,cut,electron,electron[0-9],electron[0-9][0-9],gawk,grep,obsidian,realpath,tr
private-etc @network,@tls-ca,@x11,gnutls,libva.conf

# Redirect
include electron-common.profile
