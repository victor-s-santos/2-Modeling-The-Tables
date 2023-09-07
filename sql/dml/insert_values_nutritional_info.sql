insert into nutritional_info (snack_name, id_snack, company_name, id_company, "Calories", "CaloriesFromFat", "TotalFat(g)", "SaturatedFat(g)", "TransFat(g)", "Cholesterol(mg)", "Sodium(mg)", "Carbs(g)", "Fiber(g)", "Sugars(g)",
                              "Protein(g)")

select distinct on (ft."Item", c.id)
    ft."Item" AS snack_name,
    sn.id AS snack_id,
    c.name AS company_name,
    c.id AS company_id,
    "Calories",
    "CaloriesFromFat",
    "TotalFat(g)",
    "SaturatedFat(g)",
    "TransFat(g)",
    "Cholesterol(mg)",
    "Sodium(mg)",
    "Carbs(g)",
    "Fiber(g)",
    "Sugars(g)",
    "Protein(g)"
from fastfoodnutritionmenu ft
inner join company c ON c.name = ft."Company"
inner join snack sn ON sn.name = ft."Item";