# Add Jenkins repository
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import Jenkins key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Update system
sudo dnf update -y

# Install dependencies
sudo dnf install fontconfig java-17-amazon-corretto -y

# Install Jenkins
sudo dnf install jenkins -y

# Reload systemctl daemon
sudo systemctl daemon-reload

# Enable and start Jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Check Jenkins status
sudo systemctl status jenkins

# Install Git (no service needed)
sudo dnf install git -y

# Check Git version
git --version
