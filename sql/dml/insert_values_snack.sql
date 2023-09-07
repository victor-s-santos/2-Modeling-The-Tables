INSERT INTO snack (name, id_company, company_name)
select "Item" snack, c.id company_id, "Company" company_name FROM fastfoodnutritionmenu inner join company c on c.name = "Company";