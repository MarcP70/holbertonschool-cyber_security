Wireshark Basics

    Amateur
    By: Abderrahmen Hidoussi
    Weight: 1
    Your score will be updated as you progress.

Resources
Read or watch:

    Wireshark-Filters

Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

    What is Wireshark.
    How to use Wiresharkfilters .
    Analyzing a Package with Wireshark .

Requirements
General

    Allowed editors: vi, vim, emacs.
    All your scripts will be tested on Kali Linux.
    A README.md file, at the root of the folder of the project, is mandatory .

More Info

    All your files must contain two lines .
    All your files must end with a new line .
    All your filters should be written in the txt file format

Example:

cyber-sec@ubuntu$ cat ip_filter.txt
ip.addr==192.0.2.1



cyber-sec@ubuntu$

Install Wireshark.

If Wireshark is not already installed on your terminal

$sudo add-apt-repository ppa:wireshark-dev/stable
$sudo apt update
$sudo apt install wireshark
$sudo usermod -aG wireshark $USER

Basic usage Wireshark.

$ wireshark

Tasks
0. IP protocol scan
mandatory

Create a Wireshark filter to detect packets sent by the nmap -sO <target> command for IP protocol scanning.

    Your Filter string should be able to capture pakages similar to this:

No.     Time           Source                Destination           Protocol Length Info
    370 11.616723413   172.22.101.90         216.58.205.206        IPv4     34

Frame 370: 34 bytes on wire (272 bits), 34 bytes captured (272 bits) on interface wlo1, id 0
Ethernet II, Src: b4:0e:de:92:17:97 (b4:0e:de:92:17:97), Dst: d4:76:a0:53:43:94 (d4:76:a0:53:43:94)
Internet Protocol Version 4, Src: 172.22.101.90, Dst: 216.58.205.206

Hint: run the nmap command and try to capture your own pakage .

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: network_security/0x05_wireshark_basics
    File: 0-ip_scan.txt

0/0 pts
1. TCP SYN scan
mandatory

Create a Wireshark filter to detect packets sent by the nmap -sS <target> command for TCP SYN scan.

    Your Filter string should be able to capture pakages similar to this:

No.     Time           Source                Destination           Protocol Length Info
     86 6.873523942    172.22.101.90         172.217.17.110        TCP      58     34124 → 443 [SYN] Seq=0 Win=1024 Len=0 MSS=1460

Frame 86: 58 bytes on wire (464 bits), 58 bytes captured (464 bits) on interface wlo1, id 0
Ethernet II, Src: b4:0e:de:92:17:97 (b4:0e:de:92:17:97), Dst: d4:76:a0:53:43:94 (d4:76:a0:53:43:94)
Internet Protocol Version 4, Src: 172.22.101.90, Dst: 172.217.17.110
Transmission Control Protocol, Src Port: 34124, Dst Port: 443, Seq: 0, Len: 0

Hint: run the nmap command and try to capture your own pakage .

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: network_security/0x05_wireshark_basics
    File: 1-tcp_syn.txt

0/4 pts
2. TCP Connect() scan
mandatory

Create a Wireshark filter to detect packets sent by the nmap -sT <target> command for TCP Connect() scan.

    Your Filter string should be able to capture pakages similar to this:

No.     Time           Source                Destination           Protocol Length Info
     27 1.540073953    172.22.101.90         142.250.200.206       TCP      74     58264 → 21 [SYN] Seq=0 Win=64240 Len=0 MSS=1460 SACK_PERM=1 TSval=737940926 TSecr=0 WS=128

Frame 27: 74 bytes on wire (592 bits), 74 bytes captured (592 bits) on interface wlo1, id 0
Ethernet II, Src: b4:0e:de:92:17:97 (b4:0e:de:92:17:97), Dst: d4:76:a0:53:43:94 (d4:76:a0:53:43:94)
Internet Protocol Version 4, Src: 172.22.101.90, Dst: 142.250.200.206
Transmission Control Protocol, Src Port: 58264, Dst Port: 21, Seq: 0, Len: 0

Hint: run the nmap command and try to capture your own pakage .

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: network_security/0x05_wireshark_basics
    File: 2-tcp_connect_scan.txt

0/4 pts
3. TCP FIN scan
mandatory

Create a Wireshark filter to detect packets sent by the nmap -sF <target> command for TCP FIN scan .

    Your Filter string should be able to capture pakages similar to this:

No.     Time           Source                Destination           Protocol Length Info
    182 12.253459933   172.22.101.90         172.217.17.110        TCP      54     34380 → 23 [FIN] Seq=1 Win=1024 Len=0

Frame 182: 54 bytes on wire (432 bits), 54 bytes captured (432 bits) on interface wlo1, id 0
Ethernet II, Src: b4:0e:de:92:17:97 (b4:0e:de:92:17:97), Dst: d4:76:a0:53:43:94 (d4:76:a0:53:43:94)
Internet Protocol Version 4, Src: 172.22.101.90, Dst: 172.217.17.110
Transmission Control Protocol, Src Port: 34380, Dst Port: 23, Seq: 1, Len: 0

Hint: run the nmap command and try to capture your own pakage .

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: network_security/0x05_wireshark_basics
    File: 3-tcp_fin.txt

0/4 pts
4. TCP ping sweeps
mandatory

Create a Wireshark filter to detect packets sent by the nmap -sn -PS/-PA <subnet> command for TCP SYN Ping/TCP ACK Ping .

    Your Filter string should be able to capture pakages similar to this:

No.     Time           Source                Destination           Protocol Length Info
     17 1.695831808    172.22.101.90         142.250.200.206       TCP      58     44255 → 80 [SYN] Seq=0 Win=1024 Len=0 MSS=1460

Frame 17: 58 bytes on wire (464 bits), 58 bytes captured (464 bits) on interface wlo1, id 0
Ethernet II, Src: b4:0e:de:92:17:97 (b4:0e:de:92:17:97), Dst: d4:76:a0:53:43:94 (d4:76:a0:53:43:94)
Internet Protocol Version 4, Src: 172.22.101.90, Dst: 142.250.200.206
Transmission Control Protocol, Src Port: 44255, Dst Port: 80, Seq: 0, Len: 0

Hint: run the nmap command and try to capture your own pakage .

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: network_security/0x05_wireshark_basics
    File: 4-tcp_ping_sweep.txt

0/4 pts
5. UDP port scan
mandatory

Create a Wireshark filter to detect packets sent by the nmap -sU <target> command for UDP port scan .

    Your Filter string should be able to capture pakages similar to this:

No.     Time           Source                Destination           Protocol Length Info
   1340 4.982253065    142.250.200.206       172.22.101.90         ICMP     70     Destination unreachable (Port unreachable)

Frame 1340: 70 bytes on wire (560 bits), 70 bytes captured (560 bits) on interface wlo1, id 0
Ethernet II, Src: d4:76:a0:53:43:94 (d4:76:a0:53:43:94), Dst: b4:0e:de:92:17:97 (b4:0e:de:92:17:97)
Internet Protocol Version 4, Src: 142.250.200.206, Dst: 172.22.101.90
Internet Control Message Protocol

Hint: run the nmap command and try to capture your own pakage .

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: network_security/0x05_wireshark_basics
    File: 5-udp_port_scan.txt

0/4 pts
6. UDP ping sweeps
mandatory

Create a Wireshark filter to detect packets sent by the nmap -sn -PU <subnet> command for UDP ping sweeps .

    Your Filter string should be able to capture pakages similar to this:

No.     Time           Source                Destination           Protocol Length Info
     92 6.850769581    172.22.101.90         142.250.200.206       UDP      42     59791 → 40125 Len=0

Frame 92: 42 bytes on wire (336 bits), 42 bytes captured (336 bits) on interface wlo1, id 0
Ethernet II, Src: b4:0e:de:92:17:97 (b4:0e:de:92:17:97), Dst: d4:76:a0:53:43:94 (d4:76:a0:53:43:94)
Internet Protocol Version 4, Src: 172.22.101.90, Dst: 142.250.200.206
User Datagram Protocol, Src Port: 59791, Dst Port: 40125

Hint: run the nmap command and try to capture your own pakage .

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: network_security/0x05_wireshark_basics
    File: 6-udp_ping_sweep.txt

0/4 pts
7. ICMP ping sweep
mandatory

Create a Wireshark filter to detect packets sent by the nmap -sn -PE <subnet> command for ICMP ping sweeps .

    Your Filter string should be able to capture pakages similar to this:

No.     Time           Source                Destination           Protocol Length Info
     29 1.667485121    172.22.101.90         142.250.1.0           ICMP     42     Echo (ping) request  id=0x1d0b, seq=0/0, ttl=54 (no response found!)

Frame 29: 42 bytes on wire (336 bits), 42 bytes captured (336 bits) on interface wlo1, id 0
Ethernet II, Src: b4:0e:de:92:17:97 (b4:0e:de:92:17:97), Dst: d4:76:a0:53:43:94 (d4:76:a0:53:43:94)
Internet Protocol Version 4, Src: 172.22.101.90, Dst: 142.250.1.0
Internet Control Message Protocol

Hint: run the nmap command and try to capture your own pakage .

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: network_security/0x05_wireshark_basics
    File: 7-icmp_ping_sweep.txt

0/4 pts
8. ARP scanning
mandatory

Create a Wireshark filter to detect packets sent by the arp-scan -l command for ARP scanning .

    Your Filter string should be able to capture pakages similar to this:

No.     Time           Source                Destination           Protocol Length Info
      1 0.000000000    d4:76:a0:53:43:94     Broadcast             ARP      60     Who has 172.22.101.231? Tell 172.22.101.254

Frame 1: 60 bytes on wire (480 bits), 60 bytes captured (480 bits) on interface wlo1, id 0
Ethernet II, Src: d4:76:a0:53:43:94 (d4:76:a0:53:43:94), Dst: Broadcast (ff:ff:ff:ff:ff:ff)
Address Resolution Protocol (request)

Hint: run the arp command and try to capture your own pakage .

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: network_security/0x05_wireshark_basics
    File: 8-arp_scanning.txt

0/4 pts 
