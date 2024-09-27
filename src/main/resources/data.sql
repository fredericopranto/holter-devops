INSERT INTO HOLTER.USER_ (email, password) 
  	VALUES ('fredericopranto@gmail.com', '$2a$12$ftPkGl5Or.leneJ8YWFKW.iV3fN3p9x8ghdzf.zWgrrUFnLF8VvpG');  --admin
INSERT INTO HOLTER.PERMISSION (role, user_id) 
   	VALUES ('ADMIN', (SELECT id FROM HOLTER.USER_ WHERE email = 'fredericopranto@gmail.com'));