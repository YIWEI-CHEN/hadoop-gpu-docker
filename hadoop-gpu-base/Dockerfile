FROM yiwei1012/gpu-java-serf:1.1
MAINTAINER YIWEI CHEN <feberium@gmail.com>

# Update Ubuntu
RUN apt-get install -y ctags cscope
RUN addgroup hadoop
RUN useradd -d /home/yiwei -m -s /bin/bash -G hadoop yiwei 

RUN apt-get install -y openssh-server vim
RUN mkdir /var/run/sshd
RUN mkdir /home/yiwei/.ssh
# config
ADD config/ssh_config /home/yiwei/.ssh/config
# id_rsa
ADD config/id_rsa /home/yiwei/.ssh/id_rsa
# id_rsa.pub
ADD config/id_rsa.pub /home/yiwei/.ssh/id_rsa.pub
# authorized_keys
ADD config/authorized_keys /home/yiwei/.ssh/authorized_keys
# bashrc
ADD config/bashrc /home/yiwei/.bashrc
# add vim plugin
ADD config/vimrc /home/yiwei/.vimrc
ADD config/vimrc.color /home/yiwei/.vimrc.color
ADD vim.tar.gz /home/yiwei/
# change ownership
RUN chown -R yiwei:hadoop /home/yiwei

ADD hadoop-2.6.0.tar.gz /usr/local/
RUN ln -s /usr/local/hadoop-2.6.0 /usr/local/hadoop  

# jar
ADD hadoop-required.tar.gz /usr/local/
RUN mv /usr/local/hadoop-required/csie-aparapi/csie-aparapi.jar /usr/local/hadoop/share/hadoop/common/lib
RUN mv /usr/local/hadoop-required/aparapi-lambda/aparapi.jar /usr/local/hadoop/share/hadoop/common/lib
RUN mv /usr/local/hadoop-required/aparapi-lambda/okra/dist/okra.jar /usr/local/hadoop/share/hadoop/common/lib
# native library
RUN mv /usr/local/hadoop-required/csie-aparapi/libaparapi_x86_64.so /usr/local/hadoop/lib/native
RUN mv /usr/local/hadoop-required/aparapi-lambda/libaparapi_agent_x86_64.so /usr/local/hadoop/lib/native
RUN mv /usr/local/hadoop-required/aparapi-lambda/libaparapi_opencl_x86_64.so /usr/local/hadoop/lib/native
RUN mv /usr/local/hadoop-required/aparapi-lambda/okra/dist/bin/libokra_x86_64.so /usr/local/hadoop/lib/native

RUN rm -f /usr/local/hadoop/etc/hadoop/hadoop-env.sh 
ADD config/hadoop-env.sh /usr/local/hadoop/etc/hadoop/hadoop-env.sh 
RUN chown -R yiwei:hadoop /usr/local/hadoop-2.6.0
RUN su yiwei -c "source /etc/profile"

EXPOSE 22
