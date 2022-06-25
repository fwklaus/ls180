SELECT item, menu_price, ingredient_cost, 
round(((prep_time/60.0) * 13), 2) AS labor,
round(menu_price - ingredient_cost - ((prep_time/60.0) * 13), 2) AS profit
  FROM menu_items ORDER BY profit DESC;
