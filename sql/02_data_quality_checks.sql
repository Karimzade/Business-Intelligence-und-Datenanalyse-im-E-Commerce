Create Table Laender (
        laKenn varchar(3) Primary Key,
        laLand varchar(255) Not Null
);
Create Table Kunden (
        /*PostGreSQL */
        kuNr serial Primary Key, 
        /*SQL Server */
        /* kuNr int autoincrement Primary Key  */
        kuName varchar(255) Not Null, 
        kuStr varchar(255) Not Null, 
        kuPLZ varchar(10) Not Null, 
        kuLandKenn varchar(3), 
        kuOrt varchar(255) Not Null,
        kuAnspr varchar(255), 
        kuEMail varchar(255), 
        Foreign Key (kuLandKenn) References Laender(laKenn)
);
Create Table Rechnungen (
        /*PostGreSQL */
        reNr serial Primary Key, 
        /*SQL Server */
        /* reNr int autoincrement Primary Key  */        
        reDat Date Not Null, 
        reKuNr int, 
        Foreign Key (reKuNr) References Kunden(kuNr)
);
Create Table Artikel (
        /*PostGreSQL */
        arID serial Primary Key, 
        /*SQL Server */
        /* arID int autoincrement Primary Key  */    
        arNr varchar(10) Not Null, 
        arBez varchar(255) Not Null, 
        arPreis numeric(10,2)
);
Create Table enthaelt (
        enReNr int, 
        enArID int, 
        enMenge int, 
        enRabatt int, 
        Foreign Key (enArID) References Artikel(arID), 
        Foreign Key (enReNr) References Rechnungen(reNr)
);
