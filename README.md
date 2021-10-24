# R-Init

**Author:** Fred Clavel  
**Last Update:** 2021 Oct 23

This repository is designed for housing initialization scripts in R. They are designed to replicate the Python functionality of generating a requirements.txt file and updating libraries based on the list of requirements. Because R lacks a native process for this operation, I made one up. It is carried out across two short scripts. 

### Note that as of the most recent update, this process depends on native R Studio processes, so running it in R console or via command line will not work.


**Files include:**

- `create_requirements.R`
- `install_requirements.R`
- `Rpackages.txt` (a file for the lazy)

The most common use case I envision for these scripts is a system change. If you are migrating from an old system to a new one, you will likely need a fresh install of R and RStudio (or whatever IDE you use - but you should use RStudio `[see note above]`). It can be kind of a pain to manually re-initialize your library after a new install by writing a bunch of install.packages("somestupidpackage") lines to get all your old packages back before getting started with any new programming. 

Instead of dealing with this tedium, you can run the scripts in this repo to automatically update your new system library with the exact same packages as your old library, with very little end-user input.

---
## How to use these scripts

The scripts should be run in the order listed above, according to the instructions below.

1. How to use `create_requirements.R `

The `create_requirements.R` script will export a list of all of your current packages to a text file called `Rpackages.txt` in the same directory location as the script itself. You should run this script on the system that already has the package library you currently work with.

After the run is complete, migrate the `Rpackages.txt` file to your new system however you prefer (e.g., e-mail it to yourself, save to a flash drive, whatever works for you).

2. How to use `install_packages.R`

**NOTE: This script  must be saved to the same directory location as your `Rpackages.txt` file.**

The `install_packages.R` script will check your current system's R library against the Rpackages.txt file, and will attempt to install all of the packages listed in the text file that are currently missing from your system. Depending on the number of packages your new system is missing relative to your old system, this operation can take a few seconds or several minutes. The script will prompt you with information about the number of new packages to install and ask if you wish to proceed - **you must enter "y" or "n" into the console to proceed once you are prompted**. If you already have all of the same packages from your old system library installed in your new system library, the script will report that the process was aborted without incident.

3. The `Rpackages.txt` file in this repo - for the lazy. 

If you wish to skip step 1 above, you can simply download the included R packages list in this text file. It will build your library as an exact copy of one of mine at the time of publication. This library is relatively rudimentary, but should contain most of what the average stats user might need. No guarantees that it'll have what you need though, but feel free to read the file and see what's included.
