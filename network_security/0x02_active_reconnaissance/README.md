# Active Reconnaissance

* Amateur
* By: Yosri Ghorbel
* Weight: 1
* Your score will be updated once you launch the project review.

# Resources
### Read or watch:

* What is a ping?
* What does Traceroute Do?
* Top 8 Nmap Commands
* How Hackers Use Reconnaissance ?

### References:

* ping
* traceroute
* telnet
* netcat
* Wappalyzer

# Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

* What is active reconnaissance ?
* Why is active reconnaissance it important for cyber security?
* How can Wappalyzer be used for active reconnaissance?
* What is DNS enumeration ?
* How to enumerate SMTPs using command-line tools?
* How should we perform OS fingerprinting?
* What is SQL injection ? How to exploit it ?

# Requirements
## General

* Allowed editors: vi, vim, emacs.
* All your scripts will be tested on Kali Linux.
* All your scripts should be exactly two lines long ($ wc -l file should print 2)
* You must substitute the IP range for $1.
* All your files should end with a new line (Why?)
* The first line of all your files should be exactly #!/bin/bash.
* A README.md file, at the root of the folder of the project, is mandatory
* You are not allowed to use backticks, &&, || or ;.
* Your code should use the Betty style. It will be checked using betty-style.pl and betty-doc.pl
* All your files must be executable

#### Quiz questions
Great! You've completed the quiz successfully! Keep going! (Show quiz)

# Tasks
## 0. Are they any opened Port ?
mandatory

In this project, tasks are arranged in a sequential manner to help you understand the basic principles of hacking and develop a logical approach to performing actions

## Search for a door!

For this task we need you to:

* Connect to the VPN server
* Get a Target Machine
* Scan that Machine top ports using nmap.
* ```echo "<openport>, <openport>" > 0-ports.txt```

### Repo:

* GitHub repository: holbertonschool-cyber_security
* Directory: network_security/0x02_active_reconnaissance
* File: 0-ports.txt

0/4 pts

## 1. Inspect the runner
mandatory

Inspect the website!

For this task we need you to:

* Edit /etc/hosts to point active.hbtn domain name to the Target IP.
```sudo bash -c 'echo "<target_ip>* active.hbtn" >> /etc/hosts'```

* Inspect the found website.
* Using Wappalyzer, check for **webserver** name and version
```echo "<webservername> <webserverversion>" > 1-webserver.txt```

### Repo:

* GitHub repository: holbertonschool-cyber_security
* Directory: network_security/0x02_active_reconnaissance
* File: 1-webserver.txt

0/4 pts

## 2. Nothing defeat Manual inspection
mandatory

Always check the SourceCode

For this challenge we need you to:

* Browse active.hbtn
* Search for the first flag.

* ```echo "<FLAG_1>" > 100-flag.txt```

Hints

* Some Developer forgets comments in production.

### Repo:

* GitHub repository: holbertonschool-cyber_security
* Directory: network_security/0x02_active_reconnaissance
* File: 100-flag.txt

0/5 pts

## 3. Trypanophobia
mandatory
Try to alter params, forms and queries..

For this task we need you to:

* Search for vulnerable page.

* ```echo "/<pathname>" > 2-injectable.txt```

Don’t include params

Example: http://active.hbtn/orders/1511515
```
echo "/orders" > 2-injectable.txt
```
### Repo:

* GitHub repository: holbertonschool-cyber_security
* Directory: network_security/0x02_active_reconnaissance
* File: 2-injectable.txt

0/4 pts

## 4. SQLmap is an army \o/
mandatory

Here we are at our first SQL Injection test

For this task we need you to:

* Find the main Database name.
```echo "<database_name>" > 3-database.txt```

* Check how many Tables it does contain
```echo "<tables_count>" > 4-tables.txt```

Hints

* You need to use sqlmap
* --dbs to fetch databases names
* -D <database_name> --tables To fetch tables names

### Repo:

* GitHub repository: holbertonschool-cyber_security
* Directory: network_security/0x02_active_reconnaissance
* File: 3-database.txt, 4-tables.txt

0/8 pts

## 5. Injections hurt :')
mandatory

For this challenge we need you to:

* Search for the second flag.

* ```echo "<FLAG_2>" > 101-flag.txt```

Hints

* **`-D <database_name> --dump`** to dump the database.
* Check for the Users table
* Flag is exposed clearly in active.hbtn

### Repo:

* GitHub repository: holbertonschool-cyber_security
* Directory: network_security/0x02_active_reconnaissance
* File: 101-flag.txt

0/5 pts

## 6. My NAV doesn't include all my pages
mandatory

Directory Enumeration

For this task we need you to:

* Find the admin panel login page.
```echo "/<pathname>" > 5-hidden_dir.txt```

Hints

* You need to use gobuster with dir option
* -b 302 to ignore 302 status code.
* -w /usr/share/wordlists/dirbuster/directory-list-2.3-small.txt for the wordlist

### Repo:

* GitHub repository: holbertonschool-cyber_security
* Directory: network_security/0x02_active_reconnaissance
* File: 5-hidden_dir.txt

0/4 pts

## 7. It may look the same, but it’s not
mandatory

For this challenge we need you to:

* Search for the third flag.
```echo "<FLAG_3>" > 102-flag.txt```

Hints

* Flag is exposed clearly in active.hbtn at Admin panel

### Repo:

* GitHub repository: holbertonschool-cyber_security
* Directory: network_security/0x02_active_reconnaissance
* File: 102-flag.txt

0/5 pts
