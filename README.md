# toadstool
```
        __.....__
     .'' _  o    '`.
   .' O (_)     () o`.
  .           O       .
 . ()   o__...__    O  .
. _.--'''       '''--._ .
:'                     ';
 `-.__    :   :    __.-'
      '''-:   :-'''
         I     l
         :     :
        I       l
        :       :
        `._____.' 
 ```       
An overlay script that installs lauded security tools ontop of a fresh Ubuntu 18.xx desktop image.

So far includes:
* All 300 Kali Tools via kaltoolin
* ctf-tools
* pwntools
* rsa ctf tool
* shellpop
* isf
* ida pro 7 demo
* pyrebox
* unix privesc check
* Hwacha
* Shellter
* Avet
* Frida
* Hashcat
* Veil
* Fluxion, 
* Bettercap, 
* crackmapexec, 
* scapy, 
* autosploit, 
* pupy
More to follow

# FAQ
**Q:What is the purpose of this project?**
A: I liked the idea of having the security tools available in Kali installable on a fresh Ubuntu machine. Before embarking on creating a Kali tool installer script, I  checked to see if someone had done that and thankfully discovered Kaltoolin. This scratched most of my itch but I had numerous interesting tools I used not available by default in Kali and wanted a convenient way to these. The purpose of this project is to aggregate a large-ish set of tools that I and others I know use often that goes beyond the typical Kali install. 

**Q: What are the primary use cases for these tools?**
A: Typical distros include a few quality tools for a variety of use cases. Mostly focusing on Web exploitation and Reconissance, but leaving a few very crucial tools out that are considered stock in the security development / reverse engineering community. By joining the common varieties of pentest, malware/exploit generation, forensic, radio frequency and reverse engineering tools under one script-umbrella it combines the strengths of many distrubtions and makes the process of kickstarting analysis much faster.

**Q: Why these tools?**
> A: Many tools exist and perform similar (if not the same functions) as one another. These tools were chosen primarily because they were pinned to best-of lists, well received within various communities if not the staple tool of its type. There will be some duplication or overlap because some individuals prefer tool A or B for one reason or another, so tools weren't stripped out if there was some overlap.

**Q: What's next?**
> A: Keep adding tools that I and other of my security professionals use, better automate the installation process, right now it's very crude but does the job.. sorta. Let's just call it a work in progress.

**Q: Why Toadstool?**
> A: Mushrooms feed and thrive off other organic matter. Since this project is more or less an installer, it thrives off of the projects it installs. Without those projects, you wouldn't have Toadstool. 
