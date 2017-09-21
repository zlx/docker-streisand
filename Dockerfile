FROM	debian

RUN	apt update && apt install -y python-paramiko python-pip python-pycurl python-dev build-essential git

ENV	HOME	/root
RUN	ssh-keygen -f /root/.ssh/id_rsa -q -N "" \
	&& pip install ansible markupsafe

WORKDIR	/root

RUN	git clone https://github.com/zlx/streisand.git

WORKDIR	/root/streisand

CMD	["./streisand"]
