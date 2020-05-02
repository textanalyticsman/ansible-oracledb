install_oracle_db
=================

This roles installs the Oracle database 12.2.0.1.0 and configures it using an RSP file. 

Requirements
------------

The role os_setting must be executed before.

Role Variables
--------------

Most of the following variables are used to configure the RSP file through templates.

 #### inst_software_source_dir: /u01/software
 This is the directory where Oracle database installers are copied from.
 #### inst_sofware_destiny_dir: /u01/staging/oracledb # create dir, unzip installer, use as source to install
 This is the directory where Oracle database installers are copied from
 #### inst_template_dir: "{{ inst_sofware_destiny_dir }}/templates"
 The directory used to save the template used to generate a RSP file.
 #### inst_user_home: /home/oracle
 The directory home for the oracle user.
 #### inst_root_dir: "{{ inst_user_home }}/database" # database is installed here
 The directory where the database is installed.
 #### inst_db_installer: linuxx64_12201_database.zip
 The name of the Oracle databse installer.
 #### inst_install_option: INSTALL_DB_AND_CONFIG 
 The option used on the RSP file to isntall and configure the Oracle database.
 #### inst_group_name: oinstall
 The Linux group used to install the database.
 #### inst_inventory_location: "{{ inst_root_dir }}/oraInventory"
 The directory where the inventory is saved.
 #### inst_oracle_home: "{{ oracle_home }}"
 The oracle home for the database.
 #### inst_ora_root_file: "{{ inst_oracle_home }}/root.sh"
 The file generated during the installation that must be executed by root.
 #### inst_ora_tab_file: /etc/oratab
 The file that allows us or not the execution of a command to start/shutdown the database.
 #### inst_oracle_base: "{{ oracle_base }}"
 The Oracle base directory
 #### inst_install_edition: SE2
 The Oracle install edition set within the RSP file.
 #### inst_dba_group: dba
 The dba group's name.
 #### inst_is_rac_install: "false"
 The flag used to tell the installer we do not need a RAC.
 #### inst_start_db_type: GENERAL_PURPOSE
 The type of database we want to create.
 #### inst_global_db_name: "{{ global_db_name }}"
 The global database name.
 #### inst_db_sid: "{{ sid }}"
 The database sid.
 #### inst_conf_as_container: "false"
 The flag used to say we do not want a container.
 #### inst_db_charset: AL32UTF8
 The charset we want our database to use.
 #### inst_automatic_memory: "false"
 The flag used to say we do not want automatic memory management
 #### inst_memory_limit: 1024
 Specify the total memory allocation for the database
 #### inst_example_schemas: "false"
 A flag used to tell the installer we do not want example schemas
 #### inst_management_option: DEFAULT
 If you want to manage your database using the default Database Express option
 #### inst_enable_recovery: "false"
 This variable is to be set to false if database recovery is not required
 #### inst_storage_type: FILE_SYSTEM_STORAGE
 The type of storage to use for the database
 #### inst_data_location: "{{ inst_root_dir }}/databasefilelocation"
 Specify the database file location which is a directory for datafiles, control files, redo logs
 #### inst_security_update: "false"
 Specify whether to enable the user to set the password for My Oracle Support credentials.
 #### inst_decline_security_update: "true"
 Specify whether user doesn't want to configure Security Updates
 #### vault_sys_password
 The password for sys. Varible configured in ANSIBLE-ORACLEDB/inventories/dev/group_vars/vault.yml
 #### vault_system_password
 The password for system. Varible configured in ANSIBLE-ORACLEDB/inventories/dev/group_vars/vault.yml
 #### vault_dbsnmp_password
 The password for dbsnmp. Varible configured in ANSIBLE-ORACLEDB/inventories/dev/group_vars/vault.yml

Dependencies
------------

This role depends on the exeuction of the role os_settings.

This role uses some variables located at ANSIBLE-ORACLEDB/inventories/dev/group_vars/oracledb_vars.yml.

Example Playbook
----------------

The following example shows how to call this role.

- hosts: database
  remote_user: oracle
  tasks:
   - include_role:
       name: install_oracle_db

License
-------

BSD

Author Information
------------------

[RSCC](https://www.linkedin.com/in/raul-castillo-11051980/)
