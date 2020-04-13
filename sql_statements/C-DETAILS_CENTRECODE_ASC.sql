SELECT CENTRE_SHOP_IW.CENTRE_CODE, CENTRE_IW.CENTRE_NAME, CENTRE_IW.LOCATION, CENTRE_SHOP_IW.SHOP_NO, SHOP_IW.SHOP_NAME 
FROM CENTRE_SHOP_IW 
INNER JOIN CENTRE_IW ON CENTRE_SHOP_IW.CENTRE_CODE = CENTRE_IW.CENTRE_CODE 
INNER JOIN SHOP_IW ON CENTRE_SHOP_IW.SHOP_NO = SHOP_IW.SHOP_NO 
ORDER BY CENTRE_CODE ASC