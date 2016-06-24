R-Sweave v1.1 by Gilbert Ritschard (gilbert.ritschard@unig.ch)

Variant of RWinEdt:

 - inclusion of the RWinEdt stuff (menu, highlighting, tool bar buttons)
   in a standard WinEdt session
   instead of running it in a limited stand alone WinEdt instance.

 - additional stuff (menu, buttons) for the sweave support (sweave.edt)

Most of the credit of this support goes to 	Uwe Ligges, the author of
RWinEdt. Many thanks to him for allowing me to reuse his material in
this support.

The included RWinEdt stuff is under GPL-2 licence, thus we distribute
this R-Sweave support also under GPL licence.

Licence: GPL v2 or newer (http://www.gnu.org/copyleft/gpl.html)

=============================================================

Changes since first version:
  - support and menu item for Stangle (for concatenating all chunks
    into a single .R file)

=============================================================

Installation Instructions:
=========================

1. Create a sub-folder "R-Sweave" in "%B\Contrib"
   (where %B refers probably to "Program Files\WinEdt Team\WinEdt")
   and put there the content of the R-Sweave.zip file.

2. Open WinEdt.

3. Make a backup of your present configuration (using
   options/maintenance/backup).

4. Launch the "R-Sweave_install.edt" macro
   (For instance by opening the file in WinEdt and pressing Ctrl-Shift-F9).

 Optionally, you may add R-Sweave related buttons to the Tool Bar
 through the "Enter Tool Bar Setup..." dialog (contextual menu
 from the tool bar). However, you should first restart WinEdt to have
 access to the R-Sweave buttons.

Now, you should be done.

===============================================================

Usage instructions:
==================

You can customize the menu items.

Here are the arguments (registry) that can be passed to the
Sweave.edt macro:

LetReg(6,"xxx"); where xxx can be pdf, dvi, Stop or Direct
                 the latter being an alias of pdf.

LetReg(7,"R installation path");
                 can be used to tell the macro where it can find
                 the R binaries. If empty, sweave.edt
                 uses the value given by the Windows registry.

LetReg(8,"cache"); for running cacheSweave instead of Sweave.

LetReg(8,"R"); for running Stangle instead of Sweave.
                 Stangle just concatenates all chuncks into
                 a single %n.R file. Indeed when choosing this
                 option, the %!6 register will be ignored.

LetReg(9,"open"); When set Sweave.edt just opens an R console.

================================================================

Good Luck.


Gilbert

=========================================================
Here is how we retrieved the R menu and highlighting patterns from
RWinEdt:

  a. Open WinEdt (standard session).

  b. Create a new "R" menu item and make a backup of the current
     configuration (Menu: Options/Maintenance/Backup).

  c. Make a copy of the "%b\Config\Backup" directory into a /myBackup folder.

  d. Open RWinEdt (it is a stand alone session of WinEdt with the R menu)

  e. Make a backup of the configuration by launching the following
     macro command (Define and Run macro ...):

     Exe('_Backup.edt','%b\Config\Backup')

  f. Make a copy of the "%b\Config\Backup" directory into a \R folder.

  g. Copy the content of /myBackup into "%b\Config\Backup".

  h. Copy the "Main Menu R.dat" file from \R to "%b\Config\Backup"

  i. Retrieve the R concerned lines from
     "keywords.dat", "Filter Sets.dat" and "Switches.dat"
