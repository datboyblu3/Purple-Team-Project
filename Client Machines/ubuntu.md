Notes for Ubuntu, client machine
---------------------------------

- I may have to reset the OS version to 20.04
- Created a copy of sshd_config, renamed to sshd_config.ORIGINAL
- Will also have to generate new SSH keys and share the pub key with the ansible control node and Suricata machines
- But I can and probably should create an ansible script that will automate the creation of a new user, generate new ssh keys and transfer the pub keys
- Ok, screw it. I'm wiping away all three machines and starting with three ubuntu machines at 20.04
