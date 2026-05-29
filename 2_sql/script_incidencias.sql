
/*creacion de la tabla eventos*/
create table eventos(
	id int auto_increment not null primary key,
    fecha date,
    usuario varchar(50),
    area varchar(25),
    categoria varchar (30),
    tipo_problema varchar(50),
    detalle varchar(250),
    tiempo_resolucion int,
    solucion varchar(250)
);

/* Procedimiento almacenado para select de eventos */
delimiter // 

create procedure pa_eventos()
begin
select * from eventos;
end //

delimiter ;

call pa_eventos();

/* Insert de los datos de excel */

INSERT INTO eventos
(fecha, usuario, area, categoria, tipo_problema, detalle, tiempo_resolucion, solucion)
VALUES
(STR_TO_DATE('22/04/26','%d/%m/%y'),'Lupita','Ventas','Hardware','Impresora','Impresora marcaba error para cerrar la puerta',5,'Revisar correcta colocación del toner y cierre de puerta'),
(STR_TO_DATE('22/04/26','%d/%m/%y'),'Diego','Sistemas','Hardware','Minisplit','Minisplit de servidores haciendo ruido',5,'Apagarlo para que se descongele y poner uno provisional'),
(STR_TO_DATE('22/04/26','%d/%m/%y'),'Chivis','2do piso','Hardware','Impresora','Se acabó el toner a la impresora 2do piso',10,'Cambio de toner'),
(STR_TO_DATE('23/04/26','%d/%m/%y'),'Miguel','Almacen','Hardware','Impresora','Se desconfiguró su impresora',3,'Volver a agregar la impresora y ponerla como predeterminada'),
(STR_TO_DATE('23/04/26','%d/%m/%y'),'Hermilo','Almacen','Software','Sistema operativo','Ventana emergente con aviso',2,'Informar el motivo de la ventana emergente (actualización)'),
(STR_TO_DATE('24/04/26','%d/%m/%y'),'Francisco','Ventas','Hardware','Impresora','No se veia la tinta en la segunda copia del papel',120,'Mantenimiento a impresora, ajuste de parametros y fuente'),
(STR_TO_DATE('24/04/26','%d/%m/%y'),'Anabel','Contaduria','Hardware','Impresora','Se le acabó la tinta',5,'Cambio de toner'),
(STR_TO_DATE('29/04/26','%d/%m/%y'),'Sofi','2do piso','Hardware','Impresora','Papel atorado, ya no imprimia despues',5,'Sacar papel, reiniciar'),
(STR_TO_DATE('30/04/26','%d/%m/%y'),'Eli','3er piso','Hardware','Impresora','Se le termino la tinta',5,'Cambio de toner'),
(STR_TO_DATE('30/04/26','%d/%m/%y'),'Hermilo','Almacen','Hardware','Impresora','Se termino la tinta',5,'Cambio de toner'),
(STR_TO_DATE('04/05/26','%d/%m/%y'),'Jaime','Gerencia','Hardware','Impresora','Se termino la tinta',5,'Se relleno la tinta'),
(STR_TO_DATE('04/05/26','%d/%m/%y'),'Chivis','2do piso','Software','Quattro pro','No abria un archivo en quattro pro',3,'Reiniciar programa'),
(STR_TO_DATE('04/05/26','%d/%m/%y'),'Barranco','Ventas','Software','ASPEL','Se cambiaba el formato pdf para una impresión',15,'Revisar configuraciones del programa e impresora'),
(STR_TO_DATE('07/05/26','%d/%m/%y'),'Fernando','1er piso','Hardware','PC','No prendia su computadora',3,'Revisar botón que falla y conexión a la corriente'),
(STR_TO_DATE('07/05/26','%d/%m/%y'),'Contadora','Contaduria','Software','Correo','Correo marcaba no enviado',3,'La dirección de correo estaba mal escrita'),
(STR_TO_DATE('07/05/26','%d/%m/%y'),'Sofi','2do piso','Software','Quattro pro','No se podia imprimir un archivo',10,'Cambiar configuracion de quattro pro para imprimir'),
(STR_TO_DATE('08/05/26','%d/%m/%y'),'Lupita','Ventas','Software','ASPEL','No se podia imprimir un documento',5,'Revisar funcionamiento de impresora, cerrar y abrir sesión del programa'),
(STR_TO_DATE('11/05/26','%d/%m/%y'),'Karla','Ventas','Hardware','PC','Terminal no encendía',10,'Abrir terminal, limpiar, cambiar pila y revisar boton de encendido'),
(STR_TO_DATE('11/05/26','%d/%m/%y'),'Karla','Ventas','Software','Sistema operativo','No se podia conectar al servidor',5,'Cambiar hora de la terminal desde la bios para que se pudiera conectar'),
(STR_TO_DATE('11/05/26','%d/%m/%y'),'Karla','Ventas','Hardware','Impresora','No se reconocia la impresora y el programa se trababa',10,'Conectar la impresora en el puerto correcto, configurarla e imprimir'),
(STR_TO_DATE('11/05/26','%d/%m/%y'),'Monroy','Ventas','Software','Sistema operativo','Mensaje de alerta al conectar a servidor',2,'Informar el motivo de la ventana emergente (actualización)'),
(STR_TO_DATE('12/05/26','%d/%m/%y'),'Karla','Ventas','Hardware','PC','La terminal no encendia',5,'Revisar el boton de encendido que falla'),
(STR_TO_DATE('12/05/26','%d/%m/%y'),'Sofi','2do piso','Hardware','Impresora','Impresiones salian sin tinta',5,'Revisar toner, agitar para que salga bien la tinta'),
(STR_TO_DATE('12/05/26','%d/%m/%y'),'Sofi','2do piso','Hardware','Impresora','Hojas atoradas',5,'Desatascar hojas'),
(STR_TO_DATE('12/05/26','%d/%m/%y'),'Sofi','2do piso','Hardware','Impresora','Impresora sin toner',10,'Cambio de toner a la impresora'),
(STR_TO_DATE('13/05/26','%d/%m/%y'),'Serrano','Sistemas','Software','ASPEL','Usuarios no podían usar sistema ASPEL',20,'Reinicio del servidor y revisar arranque del sistema ASPEL'),
(STR_TO_DATE('13/05/26','%d/%m/%y'),'Karla','Ventas','Hardware','Impresora','Impresiones salian sin tinta',15,'Limpieza de la impresora, hoja de limpieza, revisar y agitar el toner'),
(STR_TO_DATE('13/05/26','%d/%m/%y'),'Francisco','Ventas','Software','Excel','Impresiones salian con rayas desfazadas',10,'Revision del formato en excel'),
(STR_TO_DATE('14/05/26','%d/%m/%y'),'Hermilo','Almacen','Hardware','Impresora','No salian las impresiones, la impresora se desconfiguro',10,'Cambio de puerto, reinicio de terminal y agregar impresora'),
(STR_TO_DATE('14/06/26','%d/%m/%y'),'Francisco','Ventas','Software','ASPEL','Aspel marcaba error al querer enviar una factura por correo',15,'Revisión de factura y correo que estaba mal escrito'),
(STR_TO_DATE('18/05/26','%d/%m/%y'),'Serrano','Sistemas','Software','Servidor','Servidor FreeNAS se reinicio y no cargaban apps de usuarios',30,'Reinicio del servidor y revisar arranque de sistema y apps de usuarios'),
(STR_TO_DATE('18/05/26','%d/%m/%y'),'Sofi','2do piso','Software','Sistema operativo','No se podia conectar a sus aplicaciones remotas',10,'Dar de alta con su contraseña nuevamente al usuario en freenas'),
(STR_TO_DATE('18/05/26','%d/%m/%y'),'Fernando','1er piso','Software','Sistema operativo','No arrancaba su terminal porque no cargó correctamente el SO',3,'Reiniciar terminal desconectandola para que cargara el sistema'),
(STR_TO_DATE('18/05/26','%d/%m/%y'),'Miguel','Almacen','Hardware','Telefono','Telefono sin linea',10,'Encender la pastilla que se bajó, no habia luz en el cuarto donde se conectan sus telefonos'),
(STR_TO_DATE('18/05/26','%d/%m/%y'),'Hermilo','Almacen','Software','Sistema operativo','No arrancaba su terminal porque no cargó correctamente el SO',3,'Reiniciar terminal desconectandola para que cargara el sistema'),
(STR_TO_DATE('18/05/26','%d/%m/%y'),'Miguel','Almacen','Hardware','Impresora','Se desconfiguró su impresora',5,'Volver a agregar la impresora y ponerla como predeterminada'),
(STR_TO_DATE('19/05/26','%d/%m/%y'),'Karla','Ventas','Hardware','PC','Su terminal no encendia sola despues de apagarse',10,'Revisar boton de encendido y configuracion en BIOS'),
(STR_TO_DATE('19/05/26','%d/%m/%y'),'Manolo','Ventas','Software','ASPEL','No se podia imprimir un reporte desde SAE',10,'Revisar impresora predeterminada, salir y entrar de la sesion de SAE'),
(STR_TO_DATE('19/05/26','%d/%m/%y'),'Lupita','Ventas','Hardware','Impresora','Las hojas se atoraban al querer imprimir',5,'Revisar la impresora por dentro (tenia un lapicero atorado dentro)'),
(STR_TO_DATE('20/05/26','%d/%m/%y'),'German','2do piso','Hardware','PC','Su terminal no encendia',5,'Revisar energia, eliminador no estaba bien conectado'),
(STR_TO_DATE('21/05/26','%d/%m/%y'),'Hermilo','Almacen','Hardware','PC','Terminal no encendía',10,'Revisar energia, señal de video, boton de encendido (no sirve bien)'),
(STR_TO_DATE('21/05/26','%d/%m/%y'),'Chivis','2do piso','Hardware','Impresora','Se quedó trabada mientras queria imprimir documento',5,'Apagar y prender impresora'),
(STR_TO_DATE('22/05/26','%d/%m/%y'),'Sofi','2do piso','Software','Correo','Correo desordenado y no podia ver los mas recientes',5,'Cerrar y abrir, ordenar por fecha descendente'),
(STR_TO_DATE('25/05/26','%d/%m/%y'),'Lupita','Ventas','Software','Impresora','No quería escanear y marcaba error',5,'Reiniciar, eliminar trabajos en cola'),
(STR_TO_DATE('25/05/26','%d/%m/%y'),'Hermilo','Almacen','Hardware','PC','PC no encendía',5,'Desconectar, revisar cable de red e insistir con el boton de encendido'),
(STR_TO_DATE('25/05/26','%d/%m/%y'),'Lupita','Ventas','Software','Correo','Aplicación de correo congelada al querer enviar un correo',3,'Cerrar correo desde el administrador de tareas, iniciarlo y revisar que se enviaran los correos'),
(STR_TO_DATE('26/05/26','%d/%m/%y'),'Nicolas','Ventas','Software','PC','No arrancaba su terminal porque no cargó correctamente el SO',10,'Reiniciar servidor DHCP, desconectar telefono porque no recibía ip y conectar pc directo a red'),
(STR_TO_DATE('26/05/26','%d/%m/%y'),'Verni','Ventas','Hardware','Impresora','No imprimia bien porque se quedó sin tinta',5,'Cambiar toner de la impresora');

call pa_eventos();

/* TOP 5 PROBLEMAS MAS COMUNES */
select 
	tipo_problema,
    count(tipo_problema) as total
    from eventos
    group by tipo_problema
    order by total desc 
    limit 5;
    
/* TIEMPO PROMEDIO DE RESOLUCIÓN POR CATEGORÍA */

SELECT 
    categoria,
    COUNT(*) AS total_casos,
    ROUND(AVG(tiempo_resolucion), 2) AS promedio_resolucion
FROM eventos
GROUP BY categoria
ORDER BY promedio_resolucion DESC;

/* INCIDENCIAS POR AREA */

SELECT area,
count(*) as total_incidencias
from eventos
group by area
order by total_incidencias desc;

/* Tendencia por fecha */

SELECT 
    DATE(fecha) AS dia,
    COUNT(*) AS total_incidencias,
    ROUND(AVG(tiempo_resolucion), 2) AS tiempo_promedio
FROM eventos
GROUP BY dia
ORDER BY dia;