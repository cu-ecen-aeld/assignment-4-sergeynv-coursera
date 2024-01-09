# Overview

This repository contains assignment starter code for buildroot based assignments for the course Advanced Embedded Software Design, ECEN 5713

It also contains instructions related to modifying your buildroot project to use with supported hardware platforms.  See [this wiki page](https://github.com/cu-ecen-5013/buildroot-assignments-base/wiki/Supported-Hardware) for details.

# Sources, HOW-TOs, Useful commands etc.

- [Assignment 4: Buildroot Builds (PDF)](https://d3c33hcgiwev3.cloudfront.net/ivEdBePlTg2xHQXj5a4NKg_588bf4e3cf524d65bd47ffa0caee1df1_Assignment-4-Buildroot-Builds.pdf?Expires=1704931200&Signature=S7eX3WuriQ6ujmpJWTCF2Je4Xnhnd3~Z5gj-kIg2MluwcfonKJLar0rbTygjumTC~pNZKxt-Un6qodWjOKktHulud2HXxez1WJDKo4Sn8HkpN1jLoSSQAn8QMeaO7cXWPiRFVFlnU3wfsCkQK4ZKIjVM17jhSxtYpTZXOaim~HQ_&Key-Pair-Id=APKAJLTNE6QMUY6HBC5A)

- [Assignment 4: Buildroot Tips (PDF)](https://d3c33hcgiwev3.cloudfront.net/9994lpIMTACfeJaSDDwAMQ_d94f9b8c28c54cfeb219d33324cf13f1_Assignment-4-Buildroot-Tips.pdf?Expires=1704931200&Signature=SknB8u5pmD~wHHhkYKqMW7EyvqraKj7yaO97GRECOg8xrX6g~Jc0PlwSqb2cyhZawaA9b8I4bg7cbyLxLSDpbIuNDu34AO2WbsLZS7toMbBIZgo0-eHM9cQV9FaGmI9segqvxW1TWoNH8G38DrbpYGUZCAKxaw~lyDZPMDdGWug_&Key-Pair-Id=APKAJLTNE6QMUY6HBC5A)
  - Single Package Rebuild: use `make aesd-assignments-rebuild` or `make aesd-assignments-reconfigure` from the buildroot directory.
  - The `output/target` directory contains the “almost complete” content which will make up your root filesystem.
  - Local builds: use `AESD_ASSIGNMENTS_OVERRIDE_SRCDIR=/path/to/local`

- [Buildroot Tips part 2 (PDF)](https://d3c33hcgiwev3.cloudfront.net/Zfv7joY-S8m7-46GPrvJMQ_f609b49a9ee54ba38dd22c59af2969f1_Buildroot-Tips-Part-2.pdf?Expires=1704931200&Signature=UX6YUPKCcAr~AoTRKoF8oFwhQ4fzCdZbM~bZkWygDtUdMUSAEqh1-YYl-8CtoHSP~IERFGXErK-qjFLB9~uJ4eyfMtDecMn1eZnaagb2NwFTHha5smQXTLXe5V3jA5OoSWKWjVqR3GZFJD-qpfgBqJwn4cBIx2M5vJhz5eRahjE_&Key-Pair-Id=APKAJLTNE6QMUY6HBC5A)
