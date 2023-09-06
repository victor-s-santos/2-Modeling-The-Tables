SET TIMEZONE TO 'America/Sao_Paulo';

CREATE TABLE IF NOT EXISTS company(
    id SERIAL PRIMARY KEY,
    name VARCHAR (100) UNIQUE NOT NULL,
    summary TEXT,
    "createdAt" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS snack(
    id SERIAL PRIMARY KEY, 
    name VARCHAR (100) UNIQUE NOT NULL,
    summary TEXT NOT NULL,
    id_company integer not null,
    constraint fk_id_company FOREIGN KEY (id_company)
    references company (id),
    "createdAt" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS nutricional_info(
    id SERIAL PRIMARY KEY,
    snack_name VARCHAR (100), 
    id_snack integer not null,
    constraint fk_id_snack FOREIGN key (id_snack)
    references snack (id),
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
    "createdAt" TIMESTAMPTZ NULL,
    "updatedAt" TIMESTAMPTZ NULL
);