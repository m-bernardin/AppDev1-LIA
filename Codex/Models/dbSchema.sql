CREATE TABLE Formats(
    INTEGER formatId,
    INTEGER deckSize,
    BOOLEAN enforceColourIdentity,
    BOOLEAN strictSize,

    CONSTRAINT PK_Formats PRIMARY KEY(formatId),
    CONSTRAINT CH_deckSize_positive CHECK(deckSize>=0)
)
