
# Set up gpg
gpg --full-key-gen 

# Set up pass
pass init chiang.maximilian@gmail.com
pass insert email/chiang.maximilian@gmail.com

# Set up mbsync
mkdir -p ~/.mail/chiang.maximilian-gmail.com
mbsync -a

# Set up notmuch
notmuch setup
notmuch new
