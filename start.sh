if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Ilashlm10/DOUBLE /DOUBLE
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DOUBLE
fi
cd /DOUBLE
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
