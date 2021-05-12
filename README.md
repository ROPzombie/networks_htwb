# Computer Networks Exercises @HTW Berlin

Computer Networks (lab exercises) is an introductory course to computer networks. It is part of the bachelor in applied computer science at HTW Berlin (Hochschule für Technik und Wirtschaft Berlin <https://ai-bachelor.htw-berlin.de/studium/aufbau-des-studiums>).

This course uses several operating systems to show that the theory is applied in different tools very similarly. Therefore we use freeBSD as the main operating system as it is pretty well documented and just works. Furthermore we use Arch Linux, Cisco IOS (as a popular vendor for networking equipment, even though they often lack good security controls).

### The course contents includes:

 1. Basic shell and UNIX usage & basic computer network hardware
    * Basic commands, navigation in the FS
    * In- & Output redirection, Piping
    * UNIX DAC, permissions
    * vi & vim, SED, AWK, grep
 2. Setting up simple network (IPv4, IPv6)
    * Usage of network interface adminstration via net-tools amd iprout2
        * Analysis of existing network configuration
        * Determine configuration (static or via DHCP)
    * Pure switched network
        * Setting up ip addresses, netmask etc. for switched LAN
        * Advantage of IPv6 link local addresses for LAN usage
    * Simple routing
        * setting up simple Linux router
        * usage of routes and routing tools
        * Forwarding & routing tables
 3. More advanced routing:(IPv4 & IPv6)
    * Backbone routing via freeBSD and Cisco
    * In depth IPv4/v6 addressing
    * IPv6 addressing schemes, prefixes etc.
    * Cisco Router & Setup of Cisco Routers
    * Setup of routes and default gateway
    * NAT, PAT
        * Basic firewalling for NAT via PF and IPFW
    * Uplink to the DFN (Deutsches Forschungsnetz) & Internet (via NAT)
 4. Wireshark & packet analysis
    * Introduction to Wireshark
    * Active and passive network traffic analysis
    * Several protocols (ARP, IP, TCP,...)
        * Analysis of hex-string Ethernet frames
        * Structure of Ethernet frames, IP packets, UDP/TCP datagrams
        * TCP handshake, termination
    * Network sniffing (unencrypted password/login credential sniffing) different protocols
 5. Basic Network services
    * Traceroute & Paris Traceroute
    * Routing Algorithms (Dijkstra, Bellman-Ford)
    * Seutp of DHCP-Server along own DHCP Network
    * Domain Name System -- Name Resolution (DNS)
        * Iterative vs. recursive
        * Components of DNS systems
        * Tooling via dig,drill, local unbound
        * Setup & Administration of an own domain
 6. IT & Network Security
    * Short introduction cryptographic principles
    * SSH Foo
    * TLS Foo
    * VPN via Wireguard
    * Firewalling via pf
    * Structural problems in certain network protocols
    * Protocol attacks
        * ARP Spoofing & ARP cache poisoning
        * DNS Spoofing
        * TCP highjacking, SYN flood, amplification attacks
        * 
