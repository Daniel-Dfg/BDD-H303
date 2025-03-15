-- Table Utilisateur
CREATE TABLE
    IF NOT EXISTS Utilisateur (
        idUtilisateur INTEGER PRIMARY KEY,
        pseudonyme TEXT NOT NULL,
        motDePasse TEXT NOT NULL
    );

-- Table Compétence
CREATE TABLE
    IF NOT EXISTS Competence (
        idCompetence INTEGER PRIMARY KEY,
        nom TEXT NOT NULL,
        niveauRequis INTEGER NOT NULL CHECK (niveauRequis >= 0),
        coutMana INTEGER NOT NULL CHECK (coutMana >= 0),
        tempsRecharge INTEGER NOT NULL CHECK (tempsRecharge >= 0)
    );

-- Table Statistique
CREATE TABLE
    IF NOT EXISTS Statistique (
        idStatistique INTEGER PRIMARY KEY AUTOINCREMENT,
        nom TEXT NOT NULL UNIQUE,
        description TEXT
    );

-- Table Classe
CREATE TABLE
    IF NOT EXISTS Classe (
        idClasse INTEGER PRIMARY KEY AUTOINCREMENT,
        nom TEXT NOT NULL UNIQUE,
        hpBase INTEGER NOT NULL CHECK (hpBase >= 0),
        manaBase INTEGER NOT NULL CHECK (manaBase >= 0),
        forceBase INTEGER NOT NULL CHECK (forceBase >= 0),
        agiliteBase INTEGER NOT NULL CHECK (agiliteBase >= 0),
        intelligenceBase INTEGER NOT NULL CHECK (intelligenceBase >= 0)
    );

-- Table ClasseStatistique
CREATE TABLE
    IF NOT EXISTS ClasseStatistique (
        idClasse INTEGER NOT NULL,
        idStatistique INTEGER NOT NULL,
        valeurBase INTEGER NOT NULL CHECK (valeurBase >= 0),
        PRIMARY KEY (idClasse, idStatistique),
        FOREIGN KEY (idClasse) REFERENCES Classe (idClasse) ON DELETE CASCADE,
        FOREIGN KEY (idStatistique) REFERENCES Statistique (idStatistique) ON DELETE CASCADE
    );

-- Table Personnage
CREATE TABLE
    IF NOT EXISTS Personnage (
        idPersonnage INTEGER PRIMARY KEY AUTOINCREMENT,
        idUtilisateur INTEGER NULL,
        idClasse INTEGER NOT NULL,
        nom TEXT NOT NULL,
        niveau INTEGER NOT NULL DEFAULT 1 CHECK (niveau >= 0),
        experience INTEGER NOT NULL DEFAULT 0 CHECK (experience >= 0),
        argent INTEGER NOT NULL DEFAULT 100 CHECK (argent >= 0),
        FOREIGN KEY (idUtilisateur) REFERENCES Utilisateur (idUtilisateur) ON DELETE CASCADE,
        FOREIGN KEY (idClasse) REFERENCES Classe (idClasse) ON DELETE CASCADE
    );

-- Table PersonnageStatistique
CREATE TABLE
    IF NOT EXISTS PersonnageStatistique (
        idPersonnage INTEGER NOT NULL,
        idStatistique INTEGER NOT NULL,
        valeur INTEGER NOT NULL CHECK (valeur >= 0),
        PRIMARY KEY (idPersonnage, idStatistique),
        FOREIGN KEY (idPersonnage) REFERENCES Personnage (idPersonnage) ON DELETE CASCADE,
        FOREIGN KEY (idStatistique) REFERENCES Statistique (idStatistique) ON DELETE CASCADE
    );

-- Table ClasseCompetence
CREATE TABLE
    IF NOT EXISTS ClasseCompetence (
        idClasse INTEGER NOT NULL,
        idCompetence INTEGER NOT NULL,
        niveauDeDeblocage INTEGER NOT NULL CHECK (niveauDeDeblocage >= 0), -- ça fais un peu doublon avec le niveau requis de compétence (mais ici c'est des attributs automatiquement débloqué tout les 5 niveau par exemple)
        PRIMARY KEY (idClasse, idCompetence),
        FOREIGN KEY (idClasse) REFERENCES Classe (idClasse) ON DELETE CASCADE,
        FOREIGN KEY (idCompetence) REFERENCES Competence (idCompetence) ON DELETE CASCADE
    );

-- Table PersonnageCompetence
CREATE TABLE
    IF NOT EXISTS PersonnageCompetence (
        idPersonnage INTEGER NOT NULL,
        idCompetence INTEGER NOT NULL,
        PRIMARY KEY (idPersonnage, idCompetence),
        FOREIGN KEY (idPersonnage) REFERENCES Personnage (idPersonnage) ON DELETE CASCADE,
        FOREIGN KEY (idCompetence) REFERENCES Competence (idCompetence) ON DELETE CASCADE
    );