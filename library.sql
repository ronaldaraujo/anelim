CREATE TABLE Book( 
    bid SERIAL PRIMARY KEY,
    title TEXT NOT NULL, 
    isbn TEXT NOT NULL 
  );
  CREATE TABLE Reader( 
    rid SERIAL PRIMARY KEY,
    firstname TEXT NOT NULL, 
    lastname TEXT NOT NULL, 
    born DATE NOT NULL, 
    gender BOOLEAN NOT NULL, 
    phone TEXT 
  );
  CREATE TABLE Borrow( 
    borrowed TIMESTAMP NOT NULL, 
    rid INTEGER NOT NULL REFERENCES Reader,
    bid INTEGER NOT NULL REFERENCES Book, 
    PRIMARY KEY(bid) -- a book is borrowed once at a time!
  );