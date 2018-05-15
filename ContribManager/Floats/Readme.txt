___________________________________________________________

 Collect floats in Tree [for WinEdt 10]

===========================================================

 by Karl Koeller
 E-mail: karlkoeller@gmail.com

 http://www.winedt.org/

___________________________________________________________


This package allows the user to collect figure, table, algorithm,
and listing environments in the Tree interface by their captions.

---------------------------
 INSTALLATION
---------------------------

Open the macro file "Install.edt" in WinEdt, and execute it by
choosing "Macros" menu > "Execute Current Macro".

---------------------------
 UNINSTALLATION
---------------------------

Open the macro file "Uninstall.edt" in WinEdt (also available in
%b\Uninstall\Floats folder), and execute it by choosing "Macros"
menu > "Execute Current Macro".

---------------------------
 USAGE
---------------------------

Simply build the Tree to see your figure, table, algorithm, and
listing environments collected there.

Supported environments are:

  Figures
   - figure
   - figure*

  Tables
   - table
   - table*
   - longtable
   - longtabu

  Algorithms
   - algorithm
   - algorithm*
   - procedure
   - procedure*
   - function
   - function*
   - algorithm2e
   - algorithm2e*

  Listings
   - lstlisting
   - listing

Environments without a caption are displayed as '(untitled)'.

The package also collects

   - \captionof{figure}{?}
   - \captionof{table}{?}
   - \captionof{algorithm}{?}
   - \lstinputlisting{?}
