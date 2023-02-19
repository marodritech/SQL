# Ejercicios alteracion de tablas 

use  zapatillas;
# crear columnas 
alter table zapatillas 
	add column marca varchar(45) not null , 
	add column talla int not null ;
    
# modificar columna    
alter table empleados
	modify column salario float not null;
    
# quitar columna 
alter table clientes 
	drop column pais ;
alter table clientes
    modify column codigo_postal int(5) ;
    
alter table facturas 
	add column total float ;

    

    
    
   
    
