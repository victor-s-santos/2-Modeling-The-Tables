INSERT INTO snack (name, id_company)
select "Item" snack, c.id company_id FROM fastfoodnutritionmenu inner join company c on c.name = "Company";