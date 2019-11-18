# Mkf2
Windows batch files to create UASAP and FORTRAN II tapes for use with the IBM 704 simulator.

This is the complete package to create the 4k and 8k FORTRAN systemtape.

The used source files are from the FORTRAN Software Preservation page with corrections done by me 
(using a self-written OCR program) and others.

Perform the following (this works on 32 bit and 64 bit Windows):

1. Download SHARE Tape 2 from http://www.piercefuller.com/library/kyu2.html (filename is "adc00038") and put it into subdirectory MKUASAP
(Backup link https://web.archive.org/web/20160305044118/http://www.piercefuller.com/library/kyu2.html )

2. Double click on setpath.cmd. 

      This opens a command prompt with subdirecory Tools704 added to the PATH variable.
      
2. From that command prompt cd into MKUASAP directory and enter MKUASAP 

      This creates an UASAP tape and loader from the binary record in the Share tape and copies it into subdir UASAP   
      
3. When finished cd .. and cd MKFORT2 and enter MKFORT2

      This runs a set of batchfiles with a lot of console output.
      It creates the Fortran II 4k and 8k Systemtapes from the assembler sources. 
            
4. When finished cd into F2_4K or F2_8K 

Then run:
 
f2 primer1.f
 
This is the first example from the Fortran primer. (See "F28-6019_704_FORTRAN_primer.pdf" from bitsavers 704 directory) 

In the batch file, as first step the source file is converted into a Hollerith carddeck using Punch.exe

Then the simulator is started, booting from the 4k System Tape.

It first halts when the card reader becomes empty.

The next halt is a HTR 77777 at 035. This indicates that the Fortran compiler run is finished. 

Then in the batch file some blank cards from the compiler output are removed with CleanDeck.exe

As output you get a carddeck primer1.cbn and the compiler messages in LP.txt


To run it enter:
 
run primer1.cbn
 
In LP.txt is the printer output of the sample. (Just the number 2.99085)
 
For a larger example compile primer14.f and run it with
 
run primer14.cbn primer14_input.txt

The second parameter of "run" is added to the carddeck and can be read with the READ statement by the Fortran program.
This example is from page 55 of the Fortran primer, the input data is from here https://rosettacode.org/wiki/Polynomial_regression

MatInv.f is the "Matrix Inversion Order 5" sample from the Fortran software preservation site (date ca. 1958).
Link: https://archive.computerhistory.org/resources/text/Fortran/102679230.05.01.acc.pdf

This document contains an assembler listing of the compiler output and the numerical result of the matrix inversion.
This can be used to check that the compiler runs properly and that the floating point emulation is correct.
The current version of the simulator gives now the same result for both as the original IBM 704.

A few more examples are in that directory.

For the general operation of the Fortran compiler see the operation manual pages 29-39.
("704_FORTRAN_II_OperMan.pdf" in bitsavers 704 directory)
