# Add Jenkins repository
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo dnf update -y
sudo dnf install fontconfig java-17-amazon-corretto -y
# Install Jenkins
sudo dnf install jenkins -y
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
jenkins --version
# Install Git (no service needed)
sudo dnf install git -y
git --version
