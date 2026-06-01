#!/usr/bin/env fish
mkdir -p ~/.gnupg
test -f ~/.gnupg/gpg-agent.conf || touch ~/.gnupg/gpg-agent.conf

# set pinentry-tty
grep -q "pinentry-program" ~/.gnupg/gpg-agent.conf || echo "pinentry-program "(which pinentry-tty) >> ~/.gnupg/gpg-agent.conf

# ask password once a month only
set -l cache_ttl 2592000 # 30 days in seconds
grep -q "default-cache-ttl" ~/.gnupg/gpg-agent.conf || echo "default-cache-ttl $cache_ttl" >> ~/.gnupg/gpg-agent.conf
grep -q "max-cache-ttl" ~/.gnupg/gpg-agent.conf || echo "max-cache-ttl $cache_ttl" >> ~/.gnupg/gpg-agent.conf

# reload agent
if command -qs gpg-connect-agent
	gpg-connect-agent reloadagent /bye
end
