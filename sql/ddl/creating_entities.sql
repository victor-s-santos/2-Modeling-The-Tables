CREATE TABLE IF NOT EXISTS company(
    id SERIAL PRIMARY KEY,
    name VARCHAR (100) UNIQUE NOT NULL,
    summary TEXT NOT NULL,
    "createdAt" DATETIME NOW,
    "updatedAt" DATETIME NULL,
);

CREATE TABLE IF NOT EXISTS type_of_snack(
    id SERIAL PRIMARY KEY,
    name VARCHAR (100) UNIQUE NOT NULL,
    summary TEXT NOT NULL,
    "createdAt" DATETIME NOW,
    "updatedAt" DATETIME NULL,
);

CREATE TABLE IF NOT EXISTS nutricional_info(
    id SERIAL PRIMARY KEY,
    "Calories" integer NULL,
    "CaloriesFromFat" integer NULL,
    "TotalFat(g)" double precision NULL,
    "SaturetedFat(g)" double precision NULL,
    "TransFat(g)" double precision NULL,
    "Cholesterol(mg)" integer NULL,
    "Sodium(mg)" integer NULL,
    "Carbs(g)" double precision NULL,
    "Fiber(g)" double precision NULL,
    "Sugars(g)" double precision NULL,
    "Protein(g)" double precision NULL,
    "createdAt" DATETIME NULL,
    "updatedAt" DATETIME NULL
);