--1
SELECT precio,precio*1.045,CEIL(precio*1.045),ROUND(precio*1.045) FROM automoviles WHERE marca_marcas="Seat";

--2
SELECT TRUNCATE(DATEDIFF(contratos.ffinal,contratos.finicial)*automoviles.precio,4) AS "Trucate de 4",
    TRUNCATE(DATEDIFF(contratos.ffinal,contratos.finicial)*automoviles.precio,2) AS "Trucate de 2",
    ROUND(DATEDIFF(contratos.ffinal,contratos.finicial)*automoviles.precio,2) AS "Redondeo de 2",numcontrato FROM contratos 
    INNER JOIN automoviles ON contratos.matricula_automoviles=automoviles.matricula WHERE contratos.ffinal IS NOT NULL;

--3
SELECT LEFT(apellidos,10),LEFT(nombre,6) FROM clientes;

--4
SELECT CONCAT_WS("--------",apellidos,nombre) AS "Nombres y apellidos" FROM clientes;

--5
SELECT matricula AS Matricula,ELT(alquilado+1,"libre","ocupado") AS Estado FROM automoviles;

--6
SELECT CONCAT(RPAD(CONCAT(marca_marcas,' ',modelo),40,'.'),LPAD(precio,10,'.')) AS "Lista de precios" FROM automoviles;

--7
SELECT nombre,apellidos FROM clientes WHERE apellidos LIKE "%o%";

--8
UPDATE automoviles SET marca_marcas=UPPER(marca_marcas);

--9
SELECT nombre,apellidos,CHAR_LENGTH(apellidos) AS "Longitud apellidos" FROM clientes;

--10
SELECT nombre,INSERT(apellidos,3,5,"MYSQL") FROM clientes;

--11
SELECT nombre,INSERT(apellidos,2,0,"MYSQL") FROM clientes;

--12
SELECT nombre,direccion,INSTR(direccion,',') AS Posicion FROM clientes;

--13
SELECT nombre,apellidos,REPLACE(direccion,',','-') FROM clientes;

--14
SELECT nombre,apellidos FROM clientes WHERE MONTH(fechaexp)=10;

--15
SELECT nombre,apellidos,CONCAT("El dia ",DAY(fechaexp)," de ",ELT(MONTH(fechaexp),'Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre',
    'Octubre','Nobiembre','Diciembre')," de ",YEAR(fechaexp)) AS "Fecha de expedición" FROM clientes ORDER BY fechaexp DESC LIMIT 4;

--16
SELECT DATE_FORMAT(CURTIME(),"Son las %H horas %i minutos");

--17
SELECT CONCAT("Nací en ",ELT(WEEKDAY("2004-11-04")+1,"Lunes","Martes","Miercoles","Jueves","Viernes","Sabado","Domingo")) AS "Día de nacimiento";

--18
SELECT DATEDIFF(NOW(),"2004-11-04") AS "Días vividos";

--19
SELECT DATE(ADDDATE(NOW(),INTERVAL 3 MONTH)) AS "Fecha",
    ELT(WEEKDAY(ADDDATE(NOW(),INTERVAL 3 MONTH))+1,"Lunes","Martes","Miercoles","Jueves","Viernes","Sabado","Domingo") AS "Día de la semana";

--20
SELECT *,INTERVAL(DATEDIFF(ffinal,finicial),2,5,10,11)+1 AS "Tipo de duración" FROM contratos WHERE ffinal IS NOT NULL;

--21
SELECT marca_marcas,GROUP_CONCAT(modelo SEPARATOR "---") FROM automoviles GROUP BY marca_marcas;

--22
CREATE TABLE clientese SELECT ENCODE(CONCAT(nombre,apellidos),"FEBRERO") AS "Nombre" FROM clientes;
SELECT DECODE(nombre,"FEBRERO") FROM clientese;