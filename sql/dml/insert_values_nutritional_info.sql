insert into nutritional_info (snack_name, id_snack, company_name, id_company, "Calories", "CaloriesFromFat", "TotalFat(g)", "SaturatedFat(g)", "TransFat(g)", "Cholesterol(mg)", "Sodium(mg)", "Carbs(g)", "Fiber(g)", "Sugars(g)",
                              "Protein(g)")

select distinct on (sn.id)
    ft."Item" snack_name,
    sn.id snack_id,
    c.name company_name,
    c.id company_id,
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
inner join company c on c.name = ft."Company"
inner join snack sn on sn.name = ft."Item";