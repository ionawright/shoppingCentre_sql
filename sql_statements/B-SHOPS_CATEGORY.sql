SELECT CONCAT (C.SHOP_NO, " - ", SHOP_NAME) "FASHION SHOPS" 
FROM CENTRE_SHOP_IW C 
INNER JOIN SHOP_IW S 
WHERE CATEGORY = "FASHION"
