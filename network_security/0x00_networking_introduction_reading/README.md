# Networking Introduction - reading

    Amateur
    By: Yosri Ghorbel
    Weight: 1
    Your score will be updated as you progress.

#### Concepts

For this project, we expect you to look at these concepts:

- [Network Topologies](./Network_Topologies.pdf)
- [The OSI Model](./The_OSI_Model.pdf)
- [From Device IDs to Routing](./From_Device_IDs_to_Routing.pdf)

## Learning Objectives

At the end of this project, you are expected to be able to `explain to anyone`, without the help of Google:

- What are `networks` and their importance?
- What is `network topology`?
- What is a `Local Area Network` ?
- What are the three basic `LAN topologies` ?
- What is `framing` and `addressing` in `LANs`?
- What is the `bus topology`?
- What is the `star topology`?
- What is the `ring topology`?
- What are the main `LAN networking devices` ?
- What do various `LAN networking devices` do ?
- What are the seven `layers` of the `OSI model` and their `functions`?
- What are examples of `protocols` and `technologies` for each `layer` of the `OSI model`?
- What is the role of the `physical layer` ?
- What do the `data link layer` do ?
- What are `IP addresses` and `MAC addresses`?
- What are the formats and structures of `MAC addresses` and `IP addresses`?
- What is `CIDR`?
- What were the limitations of the previous class-based `IP address` system?
- What are the `subnet classes` ?
- What is `routing`?
- How do you interpret `routing tables`?

## Requirements
### General

- Allowed editors: `vi`, `vim`, `emacs`.
- All your scripts will be tested on `Kali Linux`.
- All your scripts should be exactly two lines long (`$ wc -l` file should print 2)
- You must substitute the IP range for `$1`.
- All your files should end with a new line (`Why?`)
- The first line of all your files should be exactly `#!/bin/bash`.
- A `README.md` file, at the root of the folder of the project, is mandatory
- You are not allowed to use backticks, `&&`, `||` or `;`.
- Your code should use the `Betty style`. It will be checked using `betty-style.pl` and `betty-doc.pl`
- All your files must be executable

## More Info

<details>
<summary>Quiz questions</summary>

Great! You've completed the quiz successfully! Keep going! (Hide quiz)

##### Question #0

Which of the protocols listed below reside at the OSI transport layer?

&#9744;    SSL/TLS

&#9745;    UDP

&#9744;    IMP

&#9745;    TCP

&#9744;    ATM

##### Question #1

Which OSI layer is responsible for establishing, maintaining, and terminating connections between applications?

&#9744;    Network layer

&#9744;    Application layer

&#9745;    Session layer

&#9744;    Data link layer

##### Question #2

Layer 4 of the OSI model is also known as:

&#9744;    Network layer

&#9745;    Transport layer

&#9744;    Session layer

&#9744;    Data link layer

##### Question #3

In telecommunications, Protocol Data Unit (PDU) is a term used for describing a specific unit of data passed across a network:

&#9745;    True

&#9744;    False

##### Question #4

Which of the statements listed below is true?

&#9745;    OSI physical layer PDU is the bit

&#9745;    OSI network layer PDU is the packet

&#9745;    OSI transport layer PDU is the segment

&#9745;    OSI data link layer PDU is the frame

&#9745;    PDUs between OSI session and application layers are referred to simply as the data

##### Question #5

Character encoding, data compression and encryption/decryption take place at the:

&#9744;    Application layer of the OSI model

&#9744;    Session layer of the OSI model

&#9744;    Transport layer of the OSI model

&#9745;    Presentation layer of the OSI model

##### Question #6

In the OSI model, Media Access Control (MAC) and Logical Link Control (LLC) sublayers are the components of:

&#9744;    Session layer

&#9744;    Transport layer

&#9745;    Data link layer

&#9744;    Network layer

##### Question #7

Routers operate at:

&#9744;    Application layer of the OSI model

&#9744;    Physical layer of the OSI model

&#9745;    Layer 3 of the OSI mode

&#9744;    Layer 6 of the OSI model

&#9745;    Network layer of the OSI model

##### Question #8

Which of the following protocols is used at the OSI network layer?

&#9745;    IPv4

&#9744;    TCP

&#9744;    UDP

&#9745;    ICMP

&#9745;    IPv6

##### Question #9

What is networking?

&#9745;    Connecting multiple devices or systems together to facilitate communication, data sharing, and resource sharing.

&#9745;    Establishing and maintaining connections between devices.

&#9744;    Exchanging business cards at social events

&#9744;    Creating and maintaining social connections for professional purposes.

##### Question #10

What does topology refer to in computer networks?

&#9744;    The physical layout of a network

&#9745;    The geometric arrangement of devices and links in a network

&#9744;    The way data flows through a network

##### Question #11

Which statement is true about LAN topologies?

&#9744;    There are four basic LAN topologies: bus, ring, star, and mesh.

&#9745;    A LAN connects devices within a limited geographical area.

&#9744;    Logical topology refers to the physical layout of the network.

##### Question #12

Which type(s) of addressing can be used in LANs?

&#9745;    Unicast addressing is used for one- to- one communication

&#9745;    Multicast addressing is used for one- to- many communication.

&#9745;    Broadcast addressing is used for one- to- all communication.

##### Question #13

Which statements are true regarding Bus Topology?

&#9745;    All stations share a single cable segment.

&#9744;    Each station has its own dedicated cable.

&#9744;    It utilizes a central hub or switch.

##### Question #14

Which statement(s) describe Ring Topology?

&#9745;    Data travels around the ring in one direction.

&#9744;    Devices are connected using shielded twisted- pair cables only.

&#9745;    Ring networks are typically wired in a star configuration.

##### Question #15

What is a MAC address used for?

&#9744;    To assign IP addresses to devices

&#9744;    To create network diagrams

&#9744;    To route network traffic

&#9745;    To identify network interfaces

##### Question #16

Which layer of the OSI model does a MAC address belong to?

&#9744;    Layer 1 (Physical layer)

&#9745;    Layer 2 (Data link layer)

&#9744;    Layer 3 (Network layer)

&#9744;    Layer 4 (Transport layer)

##### Question #17

Which version of IP addresses was developed due to the exhaustion of IPv4 addresses?

&#9744;    IPv5

&#9744;    DNS

&#9744;    CIDR

&#9745;    IPv6

##### Question #18

Which class of IP addresses was reserved for multicast groups?

&#9744;    Class A

&#9744;    Class B

&#9744;    Class C

&#9745;    Class D

##### Question #19

What is routing in computer networks?

&#9745;    The process of selecting a path for traffic between multiple networks.

&#9744;    The process of assigning IP addresses to devices.

&#9744;    The process of creating visual representations of computer networks.

&#9744;    The process of managing and maintaining networking hardware

##### Question #20

How many bits are used for the host identifier in an IPv4 address using CIDR notation /24?

&#9744;    8 bits

&#9744;    16 bits

&#9744;    A variable number of bits depending on the subnet size.

&#9745;    The remaining bits after specifying the network prefix length.

</details>

## Tasks
#### 0. Quiz passed!
mandatory
Score: 100.00% (Checks completed: 100.00%)

Nothing else, you made it!
1/1 pt
