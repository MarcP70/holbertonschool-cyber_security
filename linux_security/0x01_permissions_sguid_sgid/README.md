Permissions, SUID & SGID

    Amateur
    By: Yosri Ghorbel
    Weight: 1
    Your score will be updated as you progress.

Resources
Read or watch:

    Permissions
    Linux permissions
    Finding Files With SUID and SGID
    How to Use SUID and SGID on Linux
    Understanding Linux Special permissions
    What Is Umask and How to Use it Effectively

man or help:

    chmod
    sudo
    su
    chown
    chgrp
    id
    groups
    adduser
    useradd
    addgroup

Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

    What are the three user-based permission groups in Linux
    What are the Linux commands chmod, sudo, su, chown, and chgrp used for
    What is the purpose of the setuid and setgid in Linux file permissions, and how do you use them
    What is the difference between the chown and chgrp commands
    What are some best practices for managing file permissions on Linux
    How can you audit file permissions changes on your system
    What is Umask in Linux

General

    Allowed editors: vi, vim, emacs.
    All your scripts will be tested on Kali Linux.
    You must substitute the IP range for $1.
    All your files should end with a new line (Why?)
    The first line of all your files should be exactly #!/bin/bash.
    A README.md file, at the root of the folder of the project, is mandatory
    You are not allowed to use backticks, && or ||.
    Your code should use the Betty style. It will be checked using betty-style.pl and betty-doc.pl
    All your files must be executable

Quiz questions
Great! You've completed the quiz successfully! Keep going! (Show quiz)
Tasks
0. Who can add a new user in Linux!
mandatory

Write a bash script that generates a new user and sets a password for that specific user.

    Your script should accept a username as an arguments $1.
    Your script should accept a password as an arguments $2.

Depending on your machine, the output could change.

┌──(maroua㉿HBTN-LAB)-[~/Permissions, SUID & SGID]
└─🏴 sudo ./0-add_user.sh holberton H@ck$@f3Gu@rD!
[sudo] password for maroua:
New password: Retype new password: passwd: password updated successfully
┌──(maroua㉿HBTN-LAB)-[~/Permissions, SUID & SGID]
└─🏴 tail -1 /etc/passwd
holberton:x:1005:1005::/home/holberton:/bin/sh
┌──(maroua㉿HBTN-LAB)-[~/Permissions, SUID & SGID]
└─🏴 sudo tail -1 /etc/shadow
[sudo] password for maroua:
holberton:$y$j9T$hX9xRbjAKGGXawAjjRbay.$byRISNEKNJeoUr5s8K4.QNDU5HgV2oocPJ6qYyBbHm0:19669:0:99999:7:::

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: linux_security/0x01_permissions_sguid_sgid
    File: 0-add_user.sh

0/6 pts
1. Can we trust Groups ?
mandatory

Write a bash script that generates a new group, changes the ownership of the file to the new group and sets permissions for it.

    Your script should accept a group as an arguments $1.
    Your script should accept the file as an arguments $2.
    You should grant read and execute permissions to the newgroup on the file

Depending on your machine, the output could change.

┌──(maroua㉿HBTN-LAB)-[~/Permissions, SUID & SGID]
└─🏴 sudo ./1-add-group.sh security example.txt
[sudo] password for maroua:
Adding group `security' (GID 1011) ...
Done.
┌──(maroua㉿HBTN-LAB)-[~/Permissions, SUID & SGID]
└─🏴cat /etc/group | grep "security"
security:x:1011:
┌──(maroua㉿HBTN-LAB)-[~/Permissions, SUID & SGID]
└─🏴 ls -l example.txt
-rw-rwxr-- 1 maroua security 0 Nov  8 12:03 example.txt

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: linux_security/0x01_permissions_sguid_sgid
    File: 1-add_group.sh

0/12 pts
2. Let's Add some fun !
mandatory

Write a bash script that allows the user to execute the script without entering a password.

    Your script should accept the user as an arguments $1.

Depending on your machine, the output could change.

┌──(maroua㉿HBTN-LAB)-[~/Permissions, SUID & SGID]
└─🏴 sudo ./2-sudonopass.sh maroua
[sudo] password for maroua:
┌──(maroua㉿HBTN-LAB)-[~/Permissions, SUID & SGID]
└─🏴 sudo cat /etc/sudoers
#
# This file MUST be edited with the 'visudo' command as root.
#
# Please consider adding local content in /etc/sudoers.d/ instead of
# directly modifying this file.
#
# See the man page for details on how to write a sudoers file.
#
Defaults        envreset
Defaults        mailbadpass
Defaults        securepath="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"
Defaults        usepty
# This preserves proxy settings from user environments of root
# equivalent users (group sudo)
# Defaults:%sudo envkeep += "httpproxy httpsproxy ftpproxy allproxy noproxy"
# This allows running arbitrary commands, but so does ALL, and it means
# different sudoers have their choice of editor respected.
# Defaults:%sudo envkeep += "EDITOR"
# Completely harmless preservation of a user preference.
# Defaults:%sudo envkeep += "GREPCOLOR"
# While you shouldn't normally run git as root, you need to with etckeeper
# Defaults:%sudo envkeep += "GITAUTHOR* GITCOMMITTER*"
# Per-user preferences; root won't have sensible values for them.
# Defaults:%sudo envkeep += "EMAIL DEBEMAIL DEBFULLNAME"
# "sudo scp" or "sudo rsync" should be able to use your SSH agent.
# Defaults:%sudo envkeep += "SSHAGENTPID SSHAUTHSOCK"
# Ditto for GPG agent
# Defaults:%sudo envkeep += "GPGAGENTINFO"
# Host alias specification
# User alias specification
# Cmnd alias specification
# User privilege specification
root    ALL=(ALL:ALL) ALL
# Members of the admin group may gain root privileges
%admin ALL=(ALL) ALL
# Allow members of group sudo to execute any command
%sudo   ALL=(ALL:ALL) ALL
# See sudoers(5) for more information on "@include" directives:
@includedir /etc/sudoers.d
maroua ALL=(ALL) NOPASSWD: ALL
┌──(maroua㉿HBTN-LAB)-[~/Permissions, SUID & SGID]
└─🏴 sudo cat /etc/passwd
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
....
kali:x:1004:1004::/home/kali:/bin/sh
holberton:x:1005:1005::/home/holberton:/bin/sh

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: linux_security/0x01_permissions_sguid_sgid
    File: 2-sudo_nopass.sh

0/10 pts
3. SUID hunting, Known Exploits!
mandatory

Write a bash script that searches for SUID vulnerabilities in a specified directory.

    Your script should accept the target directory as an arguments $1.

NB: You should discard and not displayed on the terminal any error output.

Depending on your machine, the output could change.

┌──(maroua㉿HBTN-LAB)-[~/Permissions, SUID & SGID]
└─🏴 sudo ./3-findfiles.sh /usr/bin
[sudo] password for maroua:
-rwsr-xr-x 1 root root 76096 Aug 20 20:14 /usr/bin/su
-rwxr-sr-x 1 root shadow 31184 Mar 23  2023 /usr/bin/expiry
-rwxr-sr-x 1 root plocate 322960 Jul  4 16:24 /usr/bin/plocate
-rwsr-xr-x 1 root root 35128 Aug 20 20:14 /usr/bin/umount
-rwsr-xr-x 1 root root 30872 Aug  8 15:16 /usr/bin/pkexec
-rwsr-xr-x 1 root root 35128 Apr 18  2023 /usr/bin/fusermount3
-rwxr-sr-x 1 root _ssh 493952 Sep  2 20:02 /usr/bin/ssh-agent
-rwsr-xr-x 1 root root 88496 Mar 23  2023 /usr/bin/gpasswd
-rwsr-xr-x 1 root root 281912 Jul 19 22:31 /usr/bin/sudo
-rwsr-xr-x 1 root root 68248 Mar 23  2023 /usr/bin/passwd
-rwxr-sr-x 1 root shadow 80376 Mar 23  2023 /usr/bin/chage
-rwsr-xr-x 1 root root 63800 Aug 20 20:14 /usr/bin/mount
-rwsr-xr-x 1 root root 48896 Mar 23  2023 /usr/bin/newgrp
-rwsr-xr-x 1 root root 62672 Mar 23  2023 /usr/bin/chfn
-rwsr-xr-x 1 root root 52880 Mar 23  2023 /usr/bin/chsh
-rwxr-sr-x 1 root crontab 43648 Sep  3 10:30 /usr/bin/crontab
-rwxr-sr-x 1 root tty 39224 Aug 20 20:14 /usr/bin/wall
-rwsr-xr-x 1 root root 162752 Mar 23  2023 /usr/bin/ntfs-3g
-rwxr-sr-x 1 root tty 22848 Aug 20 20:14 /usr/bin/write
-rwxr-sr-x 1 root mail 23040 Feb  4  2021 /usr/bin/dotlockfile
┌──(maroua㉿HBTN-LAB)-[~/Permissions, SUID & SGID]
└─🏴 wc -l 3-findfiles.sh
2 3-find_files.sh

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: linux_security/0x01_permissions_sguid_sgid
    File: 3-find_files.sh

0/4 pts 
