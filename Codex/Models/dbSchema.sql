CREATE TABLE Formats(
    formatId INTEGER,
    deckSize INTEGER,
    enforceColourIdentity BOOLEAN,
    strictSize BOOLEAN,

    CONSTRAINT PK_Formats PRIMARY KEY(formatId AUTOINCREMENT),
    CONSTRAINT CH_deckSize_positive CHECK(deckSize>=0),
);

CREATE TABLE CataloguedCards(
    cardId INTEGER,
    dateAdded INTEGER,
    initialPrice REAL,
    scryfallUUID TEXT,
    name TEXT,
    manaCost TEXT,
    imageAddress TEXT,
    oracleText TEXT,
    power INTEGER,
    toughness INTEGER,
    typeLine TEXT,
    treatment TEXT,
    setCode TEXT,
    collectorCode INTEGER,
    lastKnownPrice REAL,
    flavourText TEXT,

    CONSTRAINT PK_CataloguedCards PRIMARY KEY(cardId AUTOINCREMENT)
);

CREATE TABLE Bans(
    banId INTEGER,
    formatId INTEGER,
    cardId INTEGER,

    CONSTRAINT PK_Bans PRIMARY KEY(banId AUTOINCREMENT),
    CONSTRAINT FK_Bans_Formats FOREIGN KEY (formatId)
        REFERENCES Formats(formatId),
    CONSTRAINT FK_Bans_CataloguedCards FOREIGN KEY (cardId)
        REFERENCES CataloguedCards(cardId)
);

CREATE TABLE Collections(
    collectionId INTEGER,
    formatId INTEGER,
    name TEXT,

    CONSTRAINT PK_Collecctions PRIMARY KEY(collectionId),
    CONSTRAINT FK_Collections_Format FOREIGN KEY (formatId)
        REFERENCES Format(formatId)
);

CREATE TABLE CardLinks(
    linkId INTEGER,
    cardId INTEGER,
    collectionId INTEGER,

    CONSTRAINT PK_CardLinks PRIMARY KEY(linkId AUTOINCREMENT),
    CONSTRAINT FK_CardLinks_CataloguedCards FOREIGN KEY (cardId)
        REFERENCES CataloguedCards(cardId),
    CONSTRAINT FK_CardLinks_Collections FOREIGN KEY (collectionId)
        REFERENCES Collections(collectionId)
)
