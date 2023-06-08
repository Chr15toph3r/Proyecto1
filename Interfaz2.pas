Program notas;
uses crt;
var
linea, subestacion: Longint;

begin
    repeat {un reapeat en dado caso el numero que se ingrese no este dentro de las opciones}
        clrscr; 
            writeln ('Seleccione el numero de linea en la que desea viajar.');
            writeln ('1. Linea 1');
            writeln ('2. Linea 2');
            writeln ('3. Linea 3');
            writeln ('4. Linea 4');
            writeln ('5. Linea 5');
            writeln ('6. Linea 6');
            writeln ('7. Linea 7');
            writeln ('8. Linea Clavetren');
            Readln (linea);
            {ahora se verifica que 'linea' no sea mayor o igual a 9}
            if linea>8 then           
                begin
                    writeln ('El numero ingresado no esta dentro de las opciones');
                    writeln ('Presione cualquier tecla para continuar');
                    readln;
                end;
    until (linea>0) and (linea<9);
    clrscr;
        {ahora se seleccionara la subestacion de salida para cada linea de metro}  
        case linea of    
            {cada linea de metro tendra su propio case con interfaz para mostras cada estacion de la 
            linea selecionada.}
            1:  Begin 
                    writeln ('Usted ha elegido la Linea 1');
                    writeln ('');
                    writeln ('                 Seleccione la subestacion de salida');
                    writeln ('______________________________________________________________________');
                    writeln ('|                         |                     |                     |');
                    writeln ('|1. Propatria.            |9.  Parque Carabobo. |17. Miranda.         |');
                    writeln ('|2. Perez Bonalde.        |10. Bellas Artes.    |18. Los Dos Caminos. |');
                    writeln ('|3. Plaza Sucre.          |11. Colegio de Ing.  |19. Los Cotijos.     |');
                    writeln ('|4. Gato Negro.           |12. Plaza Venezuela. |20. La California    |');
                    writeln ('|5. Agua Salud.           |13. Sabana Grande.   |21. Petare.          |');
                    writeln ('|6. Cabo Amarillo.        |14. Chacaito.        |22. Palo Verde       |');
                    writeln ('|7. Capitolio.            |15. Chacao.          |                     |');
                    writeln ('|8. La Hoyada.            |16. Altamira.        |                     |');
                    writeln ('|_________________________|_____________________|_____________________|'); 
                    readln (subestacion);               
                end;
            
            2:  begin
                    writeln ('Usted ha elegido la Linea 5');
                    writeln ('');
                    writeln ('                 Seleccione la subestacion de salida');
                    writeln (' _______________________________________________________________________________');
                    writeln ('|                         |                     |                               |');
                    writeln ('|1. El Silencio.          |4.  La Paz.          |7. Mamera.                     |');
                    writeln ('|2. Capuchinos            |5. La Yaguara.       |8. Caricuao.                   |');
                    writeln ('|3. Maternidad.           |6. Carapita.         |9. Zoologico.                  |');
                    writeln ('|4. Artiguas.             |7. Antimano.         |10. Ruiz Pineda/ Las Adjuntas. |');
                    writeln ('|_________________________|_____________________|_______________________________|'); 
                    readln (subestacion); 
                end;
            
            3:  begin
                    writeln ('Usted ha elegido la Linea 3');
                    writeln ('');
                    writeln ('                 Seleccione la subestacion de salida');
                    writeln (' ____________________________________________________________________');
                    writeln ('|                         |                     |                    |');
                    writeln ('|1. Plaza Venezuela.      |4.  La Bandera.      |7. Coche.           |');
                    writeln ('|2. Ciudad Universitaria. |5. El Valle.         |8. Meracdo.         |');
                    writeln ('|3. Los Simbolos.         |6. Los Jardines.     |9. La Rinconada.    |');
                    writeln ('|_________________________|_____________________|____________________|'); 
                    readln (subestacion); 
                end;
            
            4:  begin
                    writeln ('Usted ha elegido la Linea 4');
                    writeln ('');
                    writeln ('                 Seleccione la subestacion de salida');
                    writeln (' ___________________________________________________________________');
                    writeln ('|                         |                     |                   |');
                    writeln ('|1. Zona Rental.          |6.  Maternidad.      |11. Antimano.      |');
                    writeln ('|2. Parque Central.       |7.  Artigas.         |12. Mamera.        |');
                    writeln ('|3. Nuevo Circo.          |8.  La Paz.          |13. Ruiz.          |');
                    writeln ('|4. Teatros.              |9.  La Yaragua.      |                   |');
                    writeln ('|5. Capichinos.           |10. Carapita.        |                   |');
                    writeln ('|_________________________|_____________________|___________________|'); 
                    readln (subestacion); 
                end;
            {hay que poner unos acentos en algunas palabras}
            
            5:  begin
                    writeln ('Usted ha elegido la Linea 5');
                    writeln ('');
                    writeln ('                 Seleccione la subestacion de salida');
                    writeln (' ____________________________________________________________________');
                    writeln ('|                         |                     |                    |');
                    writeln ('|1. Bello Monte.          |4. Bello Campo.      |7. Boleita.         |');
                    writeln ('|2. Las Mercedes.         |5. Hugo Chavez.      |8. El Marquez.      |');
                    writeln ('|3. Parque Simon Bolivar. |6. Montecristo.      |9. Warairarepano.   |');
                    writeln ('|_________________________|_____________________|____________________|'); 
                    readln (subestacion); 
                end;

            6:  begin
                    writeln ('Usted ha elegido la Linea 6');
                    writeln ('');
                    writeln ('                 Seleccione la subestacion de salida');
                    writeln (' ____________________________________________________________________');
                    writeln ('|                         |                     |                    |');
                    writeln ('|1. Zoologico.            |2. La Rinconada.     |                    |');
                    writeln ('|_________________________|_____________________|____________________|'); 
                    readln (subestacion);
                end;
            
            {colocar acentos}
            7:  begin
                    writeln ('Usted ha elegido la Linea 7');
                    writeln ('');
                    writeln ('                 Seleccione la subestacion de salida');
                    writeln (' _____________________________________________________________________');
                    writeln ('|                         |                       |                   |');
                    writeln ('|1. Las Flores.           |5.  El Cristo.         |9.  Roosevelt.     |');
                    writeln ('|2. Panteon.              |6.  Roca Tarpeya.      |10. La Bandera.    |');
                    writeln ('|3. Socorro.              |7.  Presidente Medina. |11. Los Ilustres.  |');
                    writeln ('|4. La Hoyada.            |8.  INCES.             |                   |');
                    writeln ('|_________________________|_______________________|___________________|'); 
                    readln (subestacion);  
                end;
            
             8: begin
                    writeln ('Usted ha elegido la Linea Clabetren');
                    writeln ('');
                    writeln ('                 Seleccione la subestacion de salida');
                    writeln (' ____________________________________________________________________');
                    writeln ('|                         |                     |                    |');
                    writeln ('|1. Petare 2              |3. 5 de Julio.       |5. Warairarepano.   |');
                    writeln ('|2. 19 de Abril.          |4. 24 de Julio.      |                    |');
                    writeln ('|_________________________|_____________________|____________________|'); 
                    readln (subestacion);
                end;              
        end;
end.