IP=45.56.70.141
if [ -z `ssh-keygen -F $IP` ]; then
  ssh-keyscan -H $IP >> ~/.ssh/known_hosts
fi
git remote add deploy ssh://jcai@45.56.70.141/cahbot/cahbot.git
git push deploy
