FROM fedora:39

RUN dnf update -y 

RUN useradd -m user && echo "user:password" | chpasswd

WORKDIR /home/user/

RUN echo 'root:password' | chpasswd

CMD [ "/bin/bash" ]