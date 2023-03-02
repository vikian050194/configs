wget https://dlcdn.apache.org/maven/maven-3/3.9.0/binaries/apache-maven-3.9.0-bin.tar.gz

tar -xvf apache-maven-3.9.0-bin.tar.gz

cd apache-maven-3.9.0

sudo rm -R -f /usr/share/maven

sudo mkdir /usr/share/maven

sudo mv * /usr/share/maven
