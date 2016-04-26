FROM	debian

RUN 	apt-get update && \
	apt-get install -y openssh-server && \
	mkdir /var/run/sshd

RUN 	echo 'root:$1$hudxAZ4U$fhvr2Os..lcRiTik3OTNK/' | chpasswd -e
EXPOSE 	22
CMD ["/usr/sbin/sshd", "-D"]
