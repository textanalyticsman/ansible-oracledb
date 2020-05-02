# ansible-oracledb
Using Ansible to install an Oracle datatabase 12c and configure it. The following steps are executed.

1. The OS is configured with packages and required kernel configurations to install and configure an Oracle database.
1. The Oracle database is installed and configured using an RSP file. The RSP file is configured using templates in Ansible.
1. The /etc/oratab is modified to allow the usage of commands to start and to shutdown the database. The file is modified using a regular expresion through Ansible.
1. A couple of services, to manage the database and its listener,  are created using templates to create services configuration files and an Ansible module called service to enable the services.
1. The database and its listener are started using the Ansible module called service.

This can be executed with the following line.

        ansible-playbook --ask-vault-pass -i inventories/dev/hosts site.yml --extra-vars " environment_chosen=dev"

The password for the vault file is Oracle.