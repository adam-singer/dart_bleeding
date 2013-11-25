# Install subversion 
sudo apt-get install subversion

# checkout build scripts
svn co http://src.chromium.org/chrome/trunk/src/build;
cd build

# install deb files
chmod u+x install-build-deps.sh
./install-build-deps.sh --no-chromeos-fonts
./install-build-deps.sh --no-chromeos-fonts --arm
cd ../

# install any addtional libs
sudo apt-get install libc6-dev-i386 g++-multilib

# depot tools
svn co http://src.chromium.org/svn/trunk/tools/depot_tools

# other packages
sudo apt-get install default-jre default-jdk
sudo apt-get search git subversion
sudo apt-get install git-svn
sudo apt-get install openssh-server
sudo apt-get install vim
