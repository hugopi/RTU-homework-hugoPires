WITH SQ_Pack ;
USE SQ_Pack ;
WITH SQ_Pack_rec ;
USE SQ_Pack_rec ;

PROCEDURE task2_package IS
   a : integer := 5 ;
   b : integer := 3 ;
BEGIN
   full_info(a);
   full_info(a,b);
END task2_package ;
