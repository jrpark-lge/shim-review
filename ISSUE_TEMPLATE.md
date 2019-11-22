Make sure you have provided the following information:

 - [x] link to your code branch cloned from rhboot/shim-review in the form user/repo@tag
    https://github.com/jrpark-lge/shim-review
 - [x] completed README.md file with the necessary information
 - [x] shim.efi to be signed
 - [x] public portion of your certificate embedded in shim (the file passed to VENDOR_CERT_FILE)
 - [x] any extra patches to shim via your own git tree or as files
 - [x] any extra patches to grub via your own git tree or as files
 - [x] build logs


###### What organization or people are asking to have this signed:
LG Electronics Inc.

###### What product or service is this for:
LGE's Thin client OS for LGE or third-party thin client devices and PCs

###### What is the origin and full version number of your shim?
Originated from https://github.com/rhboot/shim tag 15,
up to commit https://github.com/rhboot/shim/commit/a4a1fbe728c9545fc5647129df0cf1593b953bec


###### What's the justification that this really does need to be signed for the whole world to be able to boot it:
We want our linux-based thin client OS to be installed on any systems with secure boot support. The systems includes our/third-party thin client products and PCs: our thin client OS is not only for LGE devices, but for the devices customers are using. They should be able to operate our linux thin client OS protected by secure boot.

###### How do you manage and protect the keys used in your SHIM?
The private key is protected by physically isolated hardware and only security managers can access it.

###### Do you use EV certificates as embedded certificates in the SHIM?
Yes

###### What is the origin and full version number of your bootloader (GRUB or other)?
`[your text here]`

###### If your SHIM launches any other components, please provide further details on what is launched
Our shim does not launch any other components.

###### How do the launched components prevent execution of unauthenticated code?
We only launches grub2 and it does not allow unathenticated code to be executed.

###### Does your SHIM load any loaders that support loading unsigned kernels (e.g. GRUB)?
No.

###### What kernel are you using? Which patches does it includes to enforce Secure Boot?
Linux kernel 4.18 with lockdown patches applied.

###### What changes were made since your SHIM was last signed?
This is our first shim review request.

###### What is the hash of your final SHIM binary?
099855ee14d502bebcd5d7b877802c6613eb87e80ebfbe22dead5178c90c63d0 shimx64.efi

