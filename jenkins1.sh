sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
# Add required dependencies for the jenkins package
sudo dnf install fontconfig java-17-amazon-corretto -y
sudo yum install Jenkins -y
sudo systemctl daemon-reload
sudo systemctl enable Jenkins
sudo systemctl start Jenkins
sudo systemctl status Jenkins
sudo yum install git -y
sudo systemctl enable git
sudo systemctl start git
