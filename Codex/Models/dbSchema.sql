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
)
