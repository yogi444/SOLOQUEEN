#Dont change anything without informing us
if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/yogi444/SOLOQUEEN.git /SOLOQUEEN
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SOLOQUEEN
fi
cd /SOLOQUEEN
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
