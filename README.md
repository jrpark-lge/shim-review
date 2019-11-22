This repo is for review of requests for signing shim.  To create a request for review:

- clone this repo
- edit the template below
- add the shim.efi to be signed
- add build logs
- commit all of that
- tag it with a tag of the form "myorg-shim-arch-YYYYMMDD"
- push that to github
- file an issue at https://github.com/rhboot/shim-review/issues with a link to your branch

Note that we really only have experience with using grub2 on Linux, so asking
us to endorse anything else for signing is going to require some convincing on
your part.

Here's the template:

-------------------------------------------------------------------------------
What organization or people are asking to have this signed:
-------------------------------------------------------------------------------
LG Electronics, Inc.

-------------------------------------------------------------------------------
What product or service is this for:
-------------------------------------------------------------------------------
LGE's Thin client OS for LGE or third-party thin client devices and PCs

-------------------------------------------------------------------------------
What's the justification that this really does need to be signed for the whole world to be able to boot it:
-------------------------------------------------------------------------------
We want our linux-based thin client OS to be installed on any systems with secure boot support. The systems includes our/third-party thin client products and PCs: our thin client OS is not only for LGE devices, but for the devices customers are using. They should be able to operate our linux thin client OS protected by secure boot.

-------------------------------------------------------------------------------
Who is the primary contact for security updates, etc.
-------------------------------------------------------------------------------
- Name: Jongryul Park
- Position: engineer
- Email address: jongryul.park@lge.com
- PGP key, signed by the other security contacts, and preferably also with signatures that are reasonably well known in the linux community:
   pgp_keys/jongryul.park.pub.asc

-------------------------------------------------------------------------------
Who is the secondary contact for security updates, etc.
-------------------------------------------------------------------------------
- Name: Jaesuk Kim
- Position: engineer
- Email address: jaesuk.kim@lge.com
- PGP key, signed by the other security contacts, and preferably also with signatures that are reasonably well known in the linux community:
   pgp_keys/jaesuk.kim.pub.asc

-------------------------------------------------------------------------------
What upstream shim tag is this starting from:
-------------------------------------------------------------------------------
From tag 15

-------------------------------------------------------------------------------
URL for a repo that contains the exact code which was built to get this binary:
-------------------------------------------------------------------------------
https://github.com/rhboot/shim/tree/a4a1fbe728c9545fc5647129df0cf1593b953bec

-------------------------------------------------------------------------------
What patches are being applied and why:
-------------------------------------------------------------------------------
No additional patches are applied.

-------------------------------------------------------------------------------
What OS and toolchain must we use to reproduce this build?  Include where to find it, etc.  We're going to try to reproduce your build as close as possible to verify that it's really a build of the source tree you tell us it is, so these need to be fairly thorough. At the very least include the specific versions of gcc, binutils, and gnu-efi which were used, and where to find those binaries.
-------------------------------------------------------------------------------
OS: Ubuntu 18.04
gcc: 7.4.0-1ubuntu1\~18.04.1 (https://packages.ubuntu.com/bionic/gcc-7)
binutils: 2.30-21ubuntu1\~18.04.2 (https://packages.ubuntu.com/bionic-updates/binutils)
gnu-efi: 3.0.8-0ubuntu1\~18.04.1 (https://packages.ubuntu.com/bionic-updates/gnu-efi)

Dockerfile is ready for reproduce build.

-------------------------------------------------------------------------------
Which files in this repo are the logs for your build?   This should include logs for creating the buildroots, applying patches, doing the build, creating the archives, etc.
-------------------------------------------------------------------------------
build-log-shimx64.txt

-------------------------------------------------------------------------------
Put info about what bootloader you're using, including which patches it includes to enforce Secure Boot here:
-------------------------------------------------------------------------------
It is grub2 2.02-2ubuntu8.13. This includes secure boot patches from ubuntu and debian.

-------------------------------------------------------------------------------
Put info about what kernel you're using, including which patches it includes to enforce Secure Boot here:
-------------------------------------------------------------------------------
We are using kernel 4.18 and kernel lockdown patcheset is applied.

