# Cryptography Basics

- Amateur
- By: Maroua Alaya
- Weight: 2
- Your score will be updated once you launch the project review.

### Resources
### Read or watch:

- What is cryptography
- The importance of cryptography
- What is cryptography in cyber security
- Cryptography
- John The Ripper Hash Formats
- How to use hashcat

### References

- John the Ripper
- hashcat

### Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

- What is cryptography in cybersecurity
- What are the different types of cryptography
- What is Encryption
- What is Decryption
- What is the importance of cryptography
- What are the types of cryptography
- What are the applications of cryptography
- What is a hash algorithm
- What SHA stands for
- What is John the Ripper
- How to use John the Ripper
- How to crack advanced hashes with John the Ripper
- What is hashcat
- How to use hashcat

### Requirements
#### General

- Allowed editors: vi, vim, emacs.
- All your scripts will be tested on Kali Linux.
- All your scripts should be exactly two lines long ($ wc -l file should print 2)
- You must substitute the IP range for $1.
- All your files should end with a new line (Why?)
- The first line of all your files should be exactly #!/bin/bash.
- A README.md file, at the root of the folder of the project, is mandatory
- You are not allowed to use backticks, &&, || or ;.
- Your code should use the Betty style. It will be checked using betty-style.pl and betty-doc.pl
- All your files must be executable

#### More Info
Install John the Ripper.

If John the Ripper is not already installed on your terminal
```
$sudo apt update
$sudo apt-get install john -y
```
Basic usage john.
```
$ john --wordlist=(Word List) (hash file)
```
Install hashcat.

If hashcat is not already installed on your terminal
```
$sudo apt update
$sudo apt-get install hashcat -y
```
Basic usage hashcat.
```
$ hashcat -h
```
#### Quiz questions
Great! You've completed the quiz successfully! Keep going! (Show quiz)

Tasks

## 0. SHA1
#### mandatory

Write a bash script that hashes a given password

- You should use SHA-1 algorithm
- Your script should accept a password as an arguments $1
- The resulting hash must be stored in 0_hash.txt

Depending on the given password, the output could change
```
┌──(maroua㉿HBTN-LAB)-[~/0x03_cryptography_basics]
└─🏴 ./sha256.sh "Holberton"
┌──(maroua㉿HBTN-LAB)-[~/0x03_cryptography_basics]
└─🏴 cat 0_hash.txt
808f94d2847fb381839b4bbbd7cdf30804fd47ac
```
#### Repo:

- GitHub repository: holbertonschool-cyber_security
- Directory: cybersecurity_basics/0x03_cryptography_basics
- File: 0-sha1.sh

0/8 pts

## 1. SHA256
#### mandatory

Write a bash script that hashes a given password

- You should use SHA-256 algorithm
- Your script should accept a password as an arguments $1
- The resulting hash must be stored in 1_hash.txt

Depending on the given password, the output could change
```
┌──(maroua㉿HBTN-LAB)-[~/0x03_cryptography_basics]
└─🏴 ./1-sha256.sh "Holberton"
┌──(maroua㉿HBTN-LAB)-[~/0x03_cryptography_basics]
└─🏴 cat 1_hash.txt
77c4925c01e8d9f79c8a6a61685c6b3182be10f2fa553de915f3733ee19c0204
```
#### Repo:

- GitHub repository: holbertonschool-cyber_security
- Directory: cybersecurity_basics/0x03_cryptography_basics
- File: 1-sha256.sh

0/8 pts

## 2. MD5
#### mandatory

Write a bash script that hashes a given password

- You should use MD5 algorithm
- Your script should accept a password as an arguments $1
- The resulting hash must be stored in 2_hash.txt

Depending on the given password, the output could change
```
┌──(maroua㉿HBTN-LAB)-[~/0x03cryptographybasics]
└─🏴 ./1-md5.sh "Holberton"
┌──(maroua㉿HBTN-LAB)-[~/0x03cryptographybasics]
└─🏴 cat 2_hash.txt
f3b21c0205fba4fc7e6cb96ae6edc950
```
#### Repo:

- GitHub repository: holbertonschool-cyber_security
- Directory: cybersecurity_basics/0x03_cryptography_basics
- File: 2-md5.sh

0/12 pts

## 3. Single Crack Mode
#### mandatory

Write a bash scriptthat crack the password using John the Ripper based on the file hash.txt

- You should use john
- You should use John the Ripper’s single crack mode to attempt password cracking
- Your script should accept hash.txt as an arguments $1
- You should find the hashed password.

- echo "<hashed_password>" > 3-password.txt
```
┌──(maroua㉿HBTN-LAB)-[~/0x03_cryptography_basics]
└─🏴 cat hash.txt
185f8db32271fe25f561a6fc938b2e264306ec304eda518007d1764826381969
┌──(maroua㉿HBTN-LAB)-[~/0x03_cryptography_basics]
└─🏴./3-single_john.sh hash.txt
Using default input encoding: UTF-8
Loaded 1 password hash (Raw-SHA256 [SHA256 256/256 AVX2 8x])
Warning: poor OpenMP scalability for this hash type, consider --fork=2
Will run 2 OpenMP threads
Press Ctrl-C to abort, or send SIGUSR1 to john process for status
********
1g 0:00:00:00 DONE (2023-08-29 16:20) 0g/s 0p/s 0c/s 0C/s
Session completed.
┌──(maroua㉿HBTN-LAB)-[~/0x03_cryptography_basics]
└─🏴 cat 3-password.txt
********
```
#### Repo:

- GitHub repository: holbertonschool-cyber_security
- Directory: cybersecurity_basics/0x03_cryptography_basics
- File: 3-single_john.sh, 3-password.txt

0/12 pts

## 4. Wordlist Mode
#### mandatory

In Wordlist Mode, we’ll provide John with a list of passwords, we will use the well-known RockYou wordlist

Write a bash scriptthat crack the password using John the Ripper based on the file hash.txt

- You should use john
- You should use John the Ripper’s Wordlist Mode to attempt password cracking
- Your script should accept hash.txt as an arguments $1
- You should find the hashed passwords.

- echo "<hashed_passwords>" > 4-password.txt
```
┌──(maroua㉿HBTN-LAB)-[~/0x03_cryptography_basics]
└─🏴 cat hash.txt
42f749ade7f9e195bf475f37a44cafcb
fc5e038d38a57032085441e7fe7010b0
18f1072de45420e57fd22ee5bd59df9e
┌──(maroua㉿HBTN-LAB)-[~/holbertonschool-cyber_security/cybersecurity_basics/0x03_cryptography_basics]
└─🏴./4-wordlist_john.sh hash.txt
Using default input encoding: UTF-8
Loaded 3 password hash (Raw-SHA256 [SHA256 256/256 AVX2 8x])
Warning: poor OpenMP scalability for this hash type, consider --fork=2
Will run 2 OpenMP threads
Press Ctrl-C to abort, or send SIGUSR1 to john process for status
Almost done: Processing the remaining buffered candidate passwords, if any.
*******
*******
*******
3g 0:00:00:00 DONE (2023-08-29 16:20) 0g/s 0p/s 0c/s 0C/s
Session completed.
┌──(maroua㉿HBTN-LAB)-[~/0x03_cryptography_basics]
└─🏴 cat 4-password.txt
*******
*******
*******
```
#### Repo:

- GitHub repository: holbertonschool-cyber_security
- Directory: cybersecurity_basics/0x03_cryptography_basics
- File: 4-wordlist_john.sh, 4-password.txt

0/20 pts

## 5. Windows Authentication Cracking
#### mandatory

Let’s explore NThash or NTLM, a hash format used in modern Windows systems to secure user and service passwords.

Write a bash scriptthat crack the password using John the Ripper based on the file hash.txt.

- You should find the hashed password
- Your script should accept hash.txt as an arguments $1

- echo "<hashed_passwords>" > 5-password.txt

Hints

- You need to set the format flag to nt
```
┌──(maroua㉿HBTN-LAB)-[~/0x03cryptographybasics]
└─🏴 cat hash.txt
895F465356A0403458759A6B104B7242
┌──(maroua㉿HBTN-LAB)-[~/0x03cryptographybasics]
└─🏴./5-windowsjohn.sh hash.txt
john --wordlist=rockyou --format=nt window.txt
Using default input encoding: UTF-8
Loaded 1 password hash (NT [MD4 256/256 AVX2 8x3])
Warning: no OpenMP support for this hash type, consider --fork=2
Press 'q' or Ctrl-C to abort, almost any other key for status
****     (?)

1g 0:00:00:00 DONE (2023-09-22 16:16) 50.00g/s 3312Kp/s 3312Kc/s 3312KC/s jonny123..gatasalvaje
Use the "--show --format=NT" options to display all of the cracked passwords reliably
Session completed.
┌──(maroua㉿HBTN-LAB)-[~/0x03cryptography_basics]
└─🏴 cat 5-password.txt
****
```
#### Repo:

- GitHub repository: holbertonschool-cyber_security
- Directory: cybersecurity_basics/0x03_cryptography_basics
- File: 5-windows_john.sh, 5-password.txt

0/12 pts

## 6. Cracking Zip File
#### mandatory

Write a bash scriptthat crack the password using John the Ripper

#### Repo:

- GitHub repository: holbertonschool-cyber_security
- Directory: cybersecurity_basics/0x03_cryptography_basics
- File: 6-zip_john.sh, 6-password.txt

0/4 pts

## 7. John Cracking!
#### mandatory

Write a bash scriptthat crack the password using John the Ripper based on the file crack.txt.
```
You should find the hashed password
Your script should accept crack.txt as an arguments $1

echo "<hashedpasswords>" > 7-password.txt

┌──(maroua㉿HBTN-LAB)-[~/0x03cryptographybasics]
└─🏴 cat crack.txt
aee408847d35e44e99430f0979c3357b85fe8dbb4535a494301198adbee85f27
┌──(maroua㉿HBTN-LAB)-[~/0x03cryptographybasics]
└─🏴./7-crackjohn.sh crack.txt
Using default input encoding: UTF-8
Loaded 1 password hash (Raw-SHA256 [SHA256 256/256 AVX2 8x])
Warning: poor OpenMP scalability for this hash type, consider --fork=2
Will run 2 OpenMP threads
Press 'q' or Ctrl-C to abort, almost any other key for status
*******      (?)

1g 0:00:00:00 DONE (2023-09-21 14:23) 25.00g/s 819200p/s 819200c/s 819200C/s
Use the "--show --format=Raw-SHA256" options to display all of the cracked pa
Session completed.
┌──(maroua㉿HBTN-LAB)-[~/0x03cryptographybasics]
└─🏴 cat 7-password.txt
*******
```
#### Repo:

- GitHub repository: holbertonschool-cyber_security
- Directory: cybersecurity_basics/0x03_cryptography_basics
- File: 7-crack_john.sh, 7-password.txt

0/12 pts

## 8. Hashcat Straight Attack!
#### mandatory

Write a bash scriptthat crack the password using hashcat based on the file hash.txt.

- You should find the hashed password
- Your script should accept hash.txt as an arguments $1

- echo "<hashed_passwords>" > 8-password.txt
```
┌──(maroua㉿HBTN-LAB)-[~/0x03_cryptography_basics]
└─🏴 cat hash.txt
5f4dcc3b5aa765d61d8327deb882cf99
┌──(maroua㉿HBTN-LAB)-[~/0x03_cryptography_basics]
└─🏴./8-crack_hashcat.sh hash.txt
hashcat (v6.2.6) starting

OpenCL API (OpenCL 3.0 PoCL 4.0+debian  Linux, None+Asserts, RELOC, SPIR, LLVM 15.0.7, SLEEF, DISTRO, POCL_DEBUG) - Platform #1 [The pocl project]
==================================================================================================================================================
* Device #1: cpu-skylake-avx512-Intel(R) Xeon(R) Platinum 8259CL CPU @ 2.50GHz, 1418/2900 MB (512 MB allocatable), 2MCU

Minimum password length supported by kernel: 0
Maximum password length supported by kernel: 256

Hashes: 1 digests; 1 unique digests, 1 unique salts
Bitmaps: 16 bits, 65536 entries, 0x0000ffff mask, 262144 bytes, 5/13 rotates
Rules: 1

Optimizers applied:
* Zero-Byte
* Early-Skip
* Not-Salted
* Not-Iterated
* Single-Hash
* Single-Salt
* Raw-Hash

ATTENTION! Pure (unoptimized) backend kernels selected.
Pure kernels can crack longer passwords, but drastically reduce performance.
If you want to switch to optimized kernels, append -O to your commandline.
See the above message to find out about the exact limits.

Watchdog: Hardware monitoring interface not found on your system.
Watchdog: Temperature abort trigger disabled.

Host memory required for this attack: 0 MB

Dictionary cache building /usr/share/wordlists/rockyou.txt: 33553434 bytes (2Dictionary cache building /usr/share/wordlists/rockyou.txt: 67106869 bytes (4Dictionary cache building /usr/share/wordlists/rockyou.txt: 100660302 bytes (Dictionary cache building /usr/share/wordlists/rockyou.txt: 134213744 bytes (Dictionary cache built:
* Filename..: /usr/share/wordlists/rockyou.txt
* Passwords.: 14344392
* Bytes.....: 139921507
* Keyspace..: 14344385
* Runtime...: 24 secs

f9f90eeaf400d228facde6bc48da5cfb:******

Session..........: hashcat
Status...........: Cracked
Hash.Mode........: 0 (MD5)
Hash.Target......: f9f90eeaf400d228facde6bc48da5cfb
Time.Started.....: Tue Sep 26 09:56:04 2023 (0 secs)
Time.Estimated...: Tue Sep 26 09:56:04 2023 (0 secs)
Kernel.Feature...: Pure Kernel
Guess.Base.......: File (/usr/share/wordlists/rockyou.txt)
Guess.Queue......: 1/1 (100.00%)
Speed.#1.........:- 24737 H/s (0.10ms) @ Accel:256 Loops:1 Thr:1 Vec:16
Recovered........: 1/1 (100.00%) Digests (total), 1/1 (100.00%) Digests (new)
Progress.........: 1536/14344385 (0.01%)
Rejected.........: 0/1536 (0.00%)
Restore.Point....: 1024/14344385 (0.01%)
Restore.Sub.#1...: Salt:0 Amplifier:0-1 Iteration:0-1
Candidate.Engine.: Device Generator
Candidates.#1....: kucing -> mexico1

Started: Tue Sep 26 09:54:39 2023
Stopped: Tue Sep 26 09:56:05 2023
┌──(maroua㉿HBTN-LAB)-[~/0x03_cryptography_basics]
└─🏴 cat 8-password.txt
*******
```
#### Repo:

- GitHub repository: holbertonschool-cyber_security
- Directory: cybersecurity_basics/0x03_cryptography_basics
- File: 8-crack_hashcat.sh, 8-password.txt

0/12 pts

## 9. Hashcat Combination!
#### mandatory

Write a bash scriptthat combine two wordlists using hashcat

- You should find the final wordlists after combination
- Your script should accept wordlist1.txt as an arguments $1
- Your script should accept wordlist2.txt as an arguments $2
```
┌──(maroua㉿HBTN-LAB)-[~/0x03cryptographybasics]
└─🏴 cat wordlist1.txt
pass
123
hello
┌──(maroua㉿HBTN-LAB)-[~/0x03cryptographybasics]
└─🏴 cat wordlist2.txt
word
world
000
┌──(maroua㉿HBTN-LAB)-[~/0x03cryptographybasics]
└─🏴 ./9-combination_hashcat.sh wordlist1.txt wordlist2.txt
password
passworld
pass000
123word
123world
123000
helloword
helloworld
hello000




```
#### Repo:

- GitHub repository: holbertonschool-cyber_security
- Directory: cybersecurity_basics/0x03_cryptography_basics
- File: 9-combination_hashcat.sh

0/8 pts

## 10. Hashcat Combination Attack
#### mandatory

Write a bash scriptthat crack the password using hashcat based on the previous task

- You should use hashcat
- Your script should accept hash.txt as an arguments $1
- You should find the hashed password.

- echo "<hashed_password>" > 3-password.txt

Hints

- You should use wordlist1.txt, wordlist2.txtafter combination
```
┌──(maroua㉿HBTN-LAB)-[~/0x03_cryptography_basics]
└─🏴 cat hash.txt
5ad8699d82cd039cab4ed739590969b9
┌──(maroua㉿HBTN-LAB)-[~/0x03_cryptography_basics]
└─🏴./10-attack_hashcat.sh hash.txt
hashcat (v6.2.6) starting

OpenCL API (OpenCL 3.0 PoCL 4.0+debian  Linux, None+Asserts, RELOC, SPIR, LLVM 15.0.7, SLEEF, DISTRO, POCL_DEBUG) - Platform #1 [The pocl project]
==================================================================================================================================================
* Device #1: cpu-skylake-avx512-Intel(R) Xeon(R) Platinum 8259CL CPU @ 2.50GHz, 1418/2900 MB (512 MB allocatable), 2MCU

Minimum password length supported by kernel: 0
Maximum password length supported by kernel: 256

Dictionary cache hit:
* Filename..: wordlist1.txt
* Passwords.: 3
* Bytes.....: 15
* Keyspace..: 3

Dictionary cache hit:
* Filename..: wordlist2.txt
* Passwords.: 3
* Bytes.....: 15
* Keyspace..: 3

Hashes: 1 digests; 1 unique digests, 1 unique salts
Bitmaps: 16 bits, 65536 entries, 0x0000ffff mask, 262144 bytes, 5/13 rotates

Optimizers applied:
* Zero-Byte
* Early-Skip
* Not-Salted
* Not-Iterated
* Single-Hash
* Single-Salt
* Raw-Hash

ATTENTION! Pure (unoptimized) backend kernels selected.
Pure kernels can crack longer passwords, but drastically reduce performance.
If you want to switch to optimized kernels, append -O to your commandline.
See the above message to find out about the exact limits.

Watchdog: Hardware monitoring interface not found on your system.
Watchdog: Temperature abort trigger disabled.

Host memory required for this attack: 0 MB

Dictionary cache hit:
* Filename..: wordlist1.txt
* Passwords.: 3
* Bytes.....: 15
* Keyspace..: 9

The wordlist or mask that you are using is too small.
This means that hashcat cannot use the full parallel power of your device(s).
Unless you supply more work, your cracking speed will drop.
For tips on supplying more work, see: https://hashcat.net/faq/morework

Approaching final keyspace - workload adjusted.

5ad8699d82cd039cab4ed739590969b9:********

Session..........: hashcat
Status...........: Cracked
Hash.Mode........: 0 (MD5)
Hash.Target......: 5ad8699d82cd039cab4ed739590969b9
Time.Started.....: Tue Sep 26 14:56:48 2023 (0 secs)
Time.Estimated...: Tue Sep 26 14:56:48 2023 (0 secs)
Kernel.Feature...: Pure Kernel
Guess.Base.......: File (wordlist1.txt), Left Side
Guess.Mod........: File (wordlist2.txt), Right Side
Speed.#1.........:- 21940 H/s (0.01ms) @ Accel:256 Loops:3 Thr:1 Vec:16
Recovered........: 1/1 (100.00%) Digests (total), 1/1 (100.00%) Digests (new)
Progress.........: 9/9 (100.00%)
Rejected.........: 0/9 (0.00%)
Restore.Point....: 0/3 (0.00%)
Restore.Sub.#1...: Salt:0 Amplifier:0-3 Iteration:0-3
Candidate.Engine.: Device Generator
Candidates.#1....: password -> ********

Started: Tue Sep 26 14:56:46 2023
Stopped: Tue Sep 26 14:56:50 2023
┌──(maroua㉿HBTN-LAB)-[~/0x03_cryptography_basics]
└─🏴 cat 10-password.txt
********
```
#### Repo:

- GitHub repository: holbertonschool-cyber_security
- Directory: cybersecurity_basics/0x03_cryptography_basics
- File: 10-attack_hashcat.sh, 10-password.txt

0/12 pts
