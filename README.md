# Install

```sh
# install docker compose
sudo apt-get -y update && sudo apt-get -y upgrade
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker pi

# install python3, git and dnsutils
sudo apt-get -y install libffi-dev libssl-dev python3 python3-pip git dnsutils
sudo apt-get remove python-configparser

# install docker-compose
sudo pip3 -v install docker-compose

sudo git clone https://github.com/jeppesens/homebridge.git /homebridge
sudo chown pi -R /homebridge

# create and start the service
sudo cp /homebridge/homebridge.service /etc/systemd/system/homebridge.service
sudo systemctl enable homebridge
sudo systemctl start homebridge

# check that the service is working
sudo systemctl status homebridge
```