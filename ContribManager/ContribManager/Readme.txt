___________________________________________________________

 Contributions manager [for WinEdt 10]

===========================================================

 by Karl Koeller
 E-mail: karlkoeller@gmail.com

 http://www.winedt.org/

___________________________________________________________


With this contribution you can manage winedt.org contributions
directly from within WinEdt.

The package comes with two executables, WinEdt-download.exe and
WinEdt-unzip.exe. The former is used for downloading packages while
the latter for unzipping them.

Some antivirus programs may consider them as malware. In this case
instruct your antivirus that they are false positives.

If you have any firewall installed, you have to grant access to the
internet to WinEdt-download.exe, otherwise the package won't work.

---------------------------
 INSTALLATION
---------------------------

Open the macro file "Install.edt" in WinEdt, and execute it by
choosing "Macros" menu > "Execute Current Macro".

---------------------------
 UNINSTALLATION
---------------------------

Open the macro file "Uninstall.edt" in WinEdt (also available in
%b\Uninstall\ContribManager folder), and execute it by choosing
"Macros" menu > "Execute Current Macro".

---------------------------
 POST-INSTALL ACTIONS
---------------------------

For the package to work correctly, you will have to run the command
'Download' for each already installed contribution from the
corresponding submenu (including ContribManager).

If you have the package bibMacros installed, you will have also to
run the command 'Install' for this item.

---------------------------
 USAGE
---------------------------

A menu 'ContribManager' containing actions for all available
contributions is added.

The command "Check for Program Updates" checks for WinEdt updates.

The command "Show Installed Only" toggles the visualization of
non-installed packages.

The command "Check for Updates" checks and downloads updates for
all installed packages.

Installed contributions are marked with a check mark, while
packages that needs maintenance during an update are marked with a
maintenance icon.

Possible actions for each contribution are:

- Download
  Downloads the package and stores it in a local repository.

- Cleanup
  Removes the package from the local repository.

- Install
  Installs the package.

- Uninstall
  Uninstalls the package.

- Readme
  Opens the documentation of the package.

- Website
  Opens the web page of the package.

- Check for Updates
  Checks and downloads package updates.
