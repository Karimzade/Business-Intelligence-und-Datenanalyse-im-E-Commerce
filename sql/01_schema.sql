Delete from enthaelt;
Delete from Rechnungen;
Delete from Kunden;
Delete from Laender;
Delete from Artikel;
/* PostGreSQL zurücksetzen der Autowerte */
Alter Sequence kunden_kunr_seq RESTART With 1;
Alter Sequence artikel_arid_seq RESTART With 1;
Alter Sequence rechnungen_renr_seq RESTART With 1;
/* SQL-Server */
/* 
DBCC Checkident (kunden ,RESEED)
DBCC Checkident (Rechnungen ,RESEED)
DBCC Checkident (Artikel ,RESEED) */


Insert Into Laender (laKenn, laLand) Values('D', 'Deutschland');
Insert Into Laender (laKenn, laLand) Values('F', 'Frankreich');
Insert Into Laender (laKenn, laLand) Values('B', 'Belgien');
Insert Into Laender (laKenn, laLand) Values('GR', 'Griechenland');
Insert Into Laender (laKenn, laLand) Values('I', 'Italien');
Insert Into Laender (laKenn, laLand) Values('CH', 'Schweiz');
Insert Into Laender (laKenn, laLand) Values('A', 'Österreich');
Insert Into Laender (laKenn, laLand) Values('PL', 'Polen');
Insert Into Laender (laKenn, laLand) Values('CZ', 'Tschehien');
Insert Into Laender (laKenn, laLand) Values('E', 'Spanien');
Insert Into Laender (laKenn, laLand) Values('DK', 'Dänemark');
Insert Into Laender (laKenn, laLand) Values('NL', 'Niederlande');
Insert Into Laender (laKenn, laLand) Values('USA', 'Vereinigte Staaten von Amerika');

Insert Into Kunden (kuName, kuStr, kuPLZ, kuLandKenn, kuOrt, kuAnspr, kuEMail) Values('Meier GmbH', 'Rehweg 19', '33597', 'D', 'Bielefeld', 'Frau Berger', 'anita.berger@meiergmbh.de' );
Insert Into Kunden (kuName, kuStr, kuPLZ, kuLandKenn, kuOrt, kuAnspr, kuEMail) Values('Meyer', 'Steg 47', '28325', 'D', 'Bremen', 'Herr Meyer', 'meyer@meyer.com' );
Insert Into Kunden (kuName, kuStr, kuPLZ, kuLandKenn, kuOrt, kuAnspr, kuEMail) Values('Jürgen Meyer AG', 'Insel 9', '28779', 'D', 'Bremen', 'Herr Sonne', 'sonne@meyer.de' );
Insert Into Kunden (kuName, kuStr, kuPLZ, kuLandKenn, kuOrt, kuAnspr, kuEMail) Values('Mayer', 'Bergstraße 57', '80331', 'D', 'München', 'Frau Winter', 'winter@mayer.de' );
Insert Into Kunden (kuName, kuStr, kuPLZ, kuLandKenn, kuOrt, kuAnspr, kuEMail) Values('Mejer AG', 'Kerkstraat 5', '1085', 'NL', 'Amsterdam', 'Frau Birke', 's.birke@mejerag.nl');
Insert Into Kunden (kuName, kuStr, kuPLZ, kuLandKenn, kuOrt, kuAnspr, kuEMail) Values('Meerwasser', 'Birkenweg 9', '34121', 'D', 'Kassel', 'Frau Wagner', 'b.wagner@meerwasser.de');
Insert Into Kunden (kuName, kuStr, kuPLZ, kuLandKenn, kuOrt, kuAnspr, kuEMail) Values('Liberty AG', 'East Broadway 283', '10002', 'USA', 'New York', Null, Null);

Insert Into Artikel (arNr, arBez, arPreis) Values('11-1111', 'Pentium 3', 650);
Insert Into Artikel (arNr, arBez, arPreis) Values('11-1112', 'Pentium 5', 850);
Insert Into Artikel (arNr, arBez, arPreis) Values('11-1113', 'Pentium 7', 950);
Insert Into Artikel (arNr, arBez, arPreis) Values('12-1111', 'AMD Ryzen 5', 750);
Insert Into Artikel (arNr, arBez, arPreis) Values('12-1112', 'AMD Ryzen 7', 900);
Insert Into Artikel (arNr, arBez, arPreis) Values('13-1111', 'Bildschirm', 150);
Insert Into Artikel (arNr, arBez, arPreis) Values('14-1111', 'Tintenstrahldrucker', 250);
Insert Into Artikel (arNr, arBez, arPreis) Values('14-1112', 'Laserdrucker', 400);
Insert Into Artikel (arNr, arBez, arPreis) Values('14-1113', 'Farblaserdrucker', 650);

/*kunr 5 und 6 fehlen */
Insert Into Rechnungen (reDat, reKuNr) Values('2024-05-02', 4);
Insert Into Rechnungen (reDat, reKuNr) Values('2024-05-31', 2);
Insert Into Rechnungen (reDat, reKuNr) Values('2024-06-12', 3);
Insert Into Rechnungen (reDat, reKuNr) Values('2024-07-05', 1);
Insert Into Rechnungen (reDat, reKuNr) Values('2024-08-02', 7);
Insert Into Rechnungen (reDat, reKuNr) Values('2024-09-02', 4);
Insert Into Rechnungen (reDat, reKuNr) Values('2024-10-02', 3);
Insert Into Rechnungen (reDat, reKuNr) Values('2024-11-07', 2);
Insert Into Rechnungen (reDat, reKuNr) Values('2024-12-02', 4);
Insert Into Rechnungen (reDat, reKuNr) Values('2025-05-16', 1);
Insert Into Rechnungen (reDat, reKuNr) Values('2025-05-19', 2);
Insert Into Rechnungen (reDat, reKuNr) Values('2025-05-22', 2);
Insert Into Rechnungen (reDat, reKuNr) Values('2025-05-23', 4);
Insert Into Rechnungen (reDat, reKuNr) Values('2025-05-27', 7);
Insert Into Rechnungen (reDat, reKuNr) Values('2025-05-29', 3);
Insert Into Rechnungen (reDat, reKuNr) Values('2025-05-30', 4);
Insert Into Rechnungen (reDat, reKuNr) Values('2025-06-04', 2);
Insert Into Rechnungen (reDat, reKuNr) Values('2025-06-19', 3);
Insert Into Rechnungen (reDat, reKuNr) Values('2025-06-25', 1);
Insert Into Rechnungen (reDat, reKuNr) Values('2025-06-27', 2);
Insert Into Rechnungen (reDat, reKuNr) Values('2025-07-02', 4);
Insert Into Rechnungen (reDat, reKuNr) Values('2025-07-11', 3);
Insert Into Rechnungen (reDat, reKuNr) Values('2025-07-15', 1);
Insert Into Rechnungen (reDat, reKuNr) Values('2025-07-18', 3);
Insert Into Rechnungen (reDat, reKuNr) Values('2025-07-29', 2);
Insert Into Rechnungen (reDat, reKuNr) Values('2025-08-04', 2);

Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(1, 3, 4, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(1, 6, 4, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(1, 8, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(2, 1, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(2, 6, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(1, 3, 4, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(3, 9, 2, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(4, 2, 10, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(4, 6, 10, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(4, 8, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(5, 4, 6, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(5, 6, 6, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(6, 5, 8, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(6, 6, 8, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(7, 4, 3, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(7, 6, 3, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(7, 9, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(8, 2, 15, 10);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(8, 6, 15, 10);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(8, 8, 2, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(9, 1, 4, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(9, 6, 4, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(10, 5, 6, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(10, 6, 6, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(10, 7, 6, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(11, 4, 2, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(11, 6, 2, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(11, 8, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(12, 1, 20, 10);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(12, 6, 20, 10);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(12, 8, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(13, 4, 8, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(13, 6, 8, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(14, 3, 2, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(14, 6, 2, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(14, 9, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(15, 5, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(15, 6, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(15, 9, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(16, 1, 2, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(16, 6, 2, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(16, 8, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(17, 2, 3, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(17, 6, 3, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(18, 4, 8, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(18, 6, 8, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(18, 9, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(19, 1, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(19, 6, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(19, 7, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(20, 4, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(20, 6, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(20, 7, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(21, 2, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(21, 6, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(21, 8, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(22, 3, 9, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(22, 6, 9, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(22, 9, 2, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(23, 3, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(23, 6, 1, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(24, 1, 8, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(24, 6, 8, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(24, 9, 2, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(25, 5, 10, 10);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(25, 6, 10, 10);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(26, 3, 5, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(26, 6, 5, 0);
Insert Into enthaelt (enReNr, enArID, enMenge, enRabatt) Values(26, 9, 1, 0);










