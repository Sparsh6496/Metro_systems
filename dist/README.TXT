========================
BUILD OUTPUT DESCRIPTION
========================

When you build an Java application project that has a main class, 
the IDE
automatically copies all of the JAR
files on the projects classpath to your projects dist/lib folder. 
The IDE
also adds each of the JAR files to the Class-Path element in the application
JAR files manifest file (MANIFEST.MF).


To run the project from the command line, go to the dist folder and
type the following:

java -jar "metro_System.jar" 


To distribute this project, zip up the dist folder (including the lib folder)
and distribute the ZIP file.

=========================
DATABASE INSETRTION STEPS
=========================

Install a XAMPP server if not already installed .

Now import the "metros.sql" file into your XAMPP server

Steps for Importing file :
1. Click on the IMPORT TAB on the Top bar of the Home Page of XAMPP server.
2. After clicking , browse the file "metros.sql" from the location downloaded.
	Choose Character set to UTF-8 and Format to be SQL.
3. Click on "Go" in the bottom of the screen.
4. Now database would be imported into your XAMPP server.
  