create database if not exists Collateral;
use Collateral;
create table if not exists Bestellungen (	
       BestellNr int, 
       KundenNr int,
       Sachbearbeiter varchar(40),
       Bestelldatum date,
       Liefertermin date,
       Bezahlt_am date,
       primary key(BestellNr)
);

create table if not exists Kunden (
       KundenNr int,
       KundenName varchar(20),
       Strasse varchar(30),
       Zipcode varchar(10),
       Ort varchar(20),
       Telefon int, 
       Telefax int,
       Barzahlung int,      
);

create table if not exists BestellPositionen (
      ArtikelNr int,
      BestellNr int,
      Stuck int,
);

create table if not exists Artikel (
       ArtikelNr int, 
       LieferantenCode int,
       Bezeichnung varchar(30),
       Warengruppe varchar(10),
       Einkaufspreis float, 
       Verkaufspreis float,
       USTSatz int,
       Lieferbar date,
);
