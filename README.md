# Mkf2
Windows batch files to create UASAP and FORTRAN II tapes for use with the IBM 704 simulator

This is the complete package to create the 4k and 8k Fortran systemtape.

Perform the following (this works on 32 bit and 64 bit Windows):

1. Download SHARE Tape 2 from http://www.piercefuller.com/library/kyu2.html (filename is "adc00038") and put it into subdirectory MKUASAP

2. Double click on setpath.cmd. 

      This opens a command prompt with subdirecory Tools704 added to the PATH variable.
      
2. From that command prompt cd into MKUASAP directory and enter MKUASAP 

      This creates an UASAP tape and loader from the binary record in the Share tape and copies it into subdir UASAP   
      
3. When finished cd .. and cd MKFORT2 and enter MKFORT2

      This runs a set of batchfiles to create the Fortran II 4k and 8k Systemtapes from the assembler sources. 
      
      The FORTRAN II compiler sources come from http://www.softwarepreservation.org/projects/FORTRAN/ with additional corrections
      done by me and others.
      
4. When the tapes are created cd into F2_4K or F2_8K 

Then run:
 
f2 primer1.f
 
This is the first example from the Fortran primer. (See "F28-6019_704_FORTRAN_primer.pdf" from bitsavers 704 directory) 

In the batch file, as first step the source file is converted into a Hollerith carddeck using Punch.exe

Then the simulator is started, booting from the 4k System Tape.

It first halts when the card reader becomes empty.

The next halt is a HTR 77777 at 035. This indicates that the Fortran compiler run is finished. 

Then in the batch file some blank cards from the compiler output are removed with CleanDeck.exe

As output you get a carddeck primer1.cbn and the printer output LP.txt


To run it enter:
 
run primer1.cbn
 
At the first halt enter x and hit return to exit.

In LP.txt is the printer output of the sample. (Just the number 2.99085)
 
For a larger example compile primer14.f and run it with
 
run primer14.cbn primer14_input.txt

The second parameter of "run" is added to the carddeck and can be read with the READ statement by the Fortran program.
(This example is from page 55 of the Fortran primer)

A few more examples are in that directory.
