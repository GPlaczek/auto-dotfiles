FROM cytopia/ansible:latest

RUN apk add openssh rsync
COPY . /playbook
WORKDIR /playbook
RUN ansible-galaxy install -r requirements.yml

CMD ansible-playbook -i /inventory -u root main.yml
