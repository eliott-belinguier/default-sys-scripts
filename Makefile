INV ?= ""

download_roles:
	@ ansible-galaxy install -r requirements.yml -p ./roles

install: download_roles
	@ ansible-playbook -i $(INV) -u root playbooks/install_bashrc.yml

uninstall: download_roles
	@ ansible-playbook -i $(INV) -u root playbooks/uninstall_bashrc.yml
