#Remove existing kOps installation
sudo rm -rf /usr/local/bin/kops
#Download the latest kOps version
wget -O kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
#Make the binary executable
chmod +x ./kops
#Move the binary to the desired location
sudo mv ./kops /usr/local/bin/

