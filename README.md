# Colosseum Website & Academy deployment

To use this project, you need to use Wransible project instead of Ansible Common: <https://thp.sangre.fi/devops/wransible>. It works quite the same as old Ansible Common, but you need to replace old Ansible Common settings in `.bashrc` or in `.bash_profile` with these (please check the project location)
```text
export PATH=$PATH:$HOME/projects/devops/wransible/bin
export ANSIBLE_INVENTORY="$HOME/projects/devops/wransible/inventory"
export ANSIBLE_ROLES_PATH="$HOME/projects/devops/wransible/roles"
```

After that you can deploy new versions normally:
```bash
cd ansible
wransible-playbook deploy-academy prod
```
