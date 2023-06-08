Program Proyecto1copia;  {La estación del metro de Caracas requiere que usted desarrolle un programa 
                    de ventas de boletos, donde debe preguntar si desea o no comprar el boleto, 
                    en caso de que decida comprarlos debe pedirle los datos al usuario (Nombre, 
                    Apellido, Cédula y la cantidad de boletos que desea comprar), tener 
                    en cuenta que existen diferentes tipos de boletos y el usuario debe seleccionar 
                    alguna de las siguientes opciones:}
Uses crt;
Var
    Lobby, Confirmacion1, boleto, cantidad, totalpagar: Integer; {funciones interfaz}
    viajes, interaccion1, interaccion2, interaccion3, interaccion4, interaccion5, interaccion6, interaccion7, interaccion8, interaccion9, interaccion10: Integer; {funciones eleccion de boletos}
    Nombre, Apellido, Cedula, Skip: String; {recoleccion de datos con simbolos alfabeticos}
const
    metro=1;
    metrobus=2;
begin
    repeat
        ClrScr;
        WriteLn('Bienvenido al metro de Caracas, desea comprar un boleto?'); WriteLn;
        WriteLn('Presione 1 si desea comprar un boleto');
        WriteLn('Presione 2 si desea Salir');
        ReadLn(Lobby);
            if Lobby=1 then
                begin
                    repeat
                        ClrScr;
                        WriteLn ('Datos necesarios para para tramitar su boleto.'); WriteLn;
                        WriteLn ('Por favor Escriba su nombre.');
                        ReadLn (Nombre);
                        WriteLn ('Por favor escriba su apellido.');        
                        Readln(Apellido);
                        WriteLn ('Por favor escriba su cedula de identidad.');        
                        Readln(Cedula);
                            ClrScr;
                            WriteLn ('Esta seguro de que sus datos son: ');
                            WriteLn;
                            WriteLn ('Nombre: ', Nombre);  
                            WriteLn ('Apellido: ', Apellido);
                            WriteLn ('Cedula: ', Cedula);
                            WriteLn;
                            WriteLn ('Si desea corregir algun dato presione 1'); 
                            WriteLn ('Si sus datos son correctos presione 2'); 
                            ReadLn(Confirmacion1);
                    Until Confirmacion1<>1
                end;
            if Confirmacion1=2 then
            Repeat
                begin
                    ClrScr;
                    WriteLn ('Bienvenido ', Nombre,' ',Apellido, '.');
                    WriteLn ('Precio de boletos:'); WriteLn;
                    WriteLn ('Metro: ', metro, '$.');
                    WriteLn ('Metrobus: ', metrobus, '$.'); WriteLn;
                    WriteLn('Que boleto desea comprar?');
    gotoxy(8,9);
    WriteLn('_________________________________________________________');
    gotoxy(8,10);
    WriteLn('l        Boletos       !           Cobertura            l');
    gotoxy(8,11);
    WriteLn('l______________________!________________________________l');
    gotoxy(8,12);
    WriteLn('l 1-Simple.            ! 1 viaje en metro.              l');
    gotoxy(8,13);
    WriteLn('l_______________________________________________________l');
    gotoxy(8,14);
    WriteLn('l                      ! 1 viaje en metro.              l');
    gotoxy(8,15);
    WriteLn('l 2-Integrado.         ! 1 viaje en metrobus.           l');
    gotoxy(8,16);
    WriteLn('l_______________________________________________________l');
    gotoxy(8,17);
    WriteLn('l                      !                                l');
    gotoxy(8,18);
    WriteLn('l 3-Ida y vuelta.      ! 2 viaje en metro.              l');
    gotoxy(8,19);
    WriteLn('l_______________________________________________________l');
    gotoxy(8,20);
    WriteLn('l                      !                                l');
    gotoxy(8,21); 
    WriteLn('l 4- Ida y vuelta      ! 2 viaje en metrobus.           l');
    gotoxy(8,22);
    WriteLn('l    integrado.        ! 2 viaje en metro.              l');
    gotoxy(8,23);
    WriteLn('l______________________!________________________________l');
    gotoxy(8,24);
    WriteLn('l                      !                                l');
    gotoxy(8,25);
    WriteLn('l 5- Multiabono.       ! 10 viaje en metro.             l');
    gotoxy(8,26);
    WriteLn('l______________________!________________________________l');
    gotoxy(8,27);
    WriteLn('l                      !                                l');
    gotoxy(8,28);
    WriteLn('l 6- Multiabono        ! 10 viaje en metro.             l');
    gotoxy(8,29);
    WriteLn('l    Integrado.        ! 10 viaje en metrobus.          l');
    gotoxy(8,30);
    WriteLn('l______________________!________________________________l');
    gotoxy(8,31);
    WriteLn('l                      !                                l');
    gotoxy(8,32);
    WriteLn('l 7- Estudiantil       ! 10 viaje en metro.             l');
    gotoxy(8,33);
    WriteLn('l    Simple.           !                                l');
    gotoxy(8,34);
    WriteLn('l______________________!________________________________l');
    gotoxy(8,35);
    WriteLn('l                      !                                l');
    gotoxy(8,36);
    WriteLn('l 8- Estudiantil       ! 10 viaje en metro.             l');
    gotoxy(8,37);
    WriteLn('l    Integrado.        ! 10 viaje en metro.             l');
    gotoxy(8,38);
    WriteLn('l______________________!________________________________l');
    gotoxy(8,39);
    WriteLn('l                      ! 20 viajes                      l');
    gotoxy(8,40);
    WriteLn('l 9- Metrotarjeta.     ! 30 viajes                      l');
    gotoxy(8,41);
    WriteLn('l                      ! 40 viajes                      l');
    gotoxy(8,42);
    WriteLn('l______________________!________________________________l');
    gotoxy(8,43);
    WriteLn('l                      ! 20 viajes (metro y metrobus).  l');
    gotoxy(8,44);
    WriteLn('l 10- Metrotarjeta     ! 30 viajes (metro y metrobus).  l');
    gotoxy(8,45);
    WriteLn('l    Integrada.        ! 40 viajes (metro y metrobus).  l');
    gotoxy(8,46);
    WriteLn('l______________________!________________________________l');
    gotoxy(1,49);
    WriteLn('Presione 0 si desea salir.');                   
                    ReadLn(boleto);
                        if boleto=1 then
                            begin
                                Repeat
                                    ClrScr;
                                    Cantidad:=0;
                                    WriteLn ('Usted ha elegido: Boleto simple. Elija el tipo de viaje.'); WriteLn;
                                    WriteLn ('1 - Viaje en metro: 1$');
                                    WriteLn ('2 - Viaje en metrobus: 2$ (no disponible para boleto simple.).'); WriteLn;
                                    WriteLn ('3 - Volver al inicio.');
                                    ReadLn(interaccion1);
                                        if interaccion1=1 then
                                            begin
                                                ClrScr;
                                                viajes:=1;
                                                WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                ReadLn (cantidad);
                                                totalpagar:=(cantidad*metro); 
                                                viajes:=(viajes*cantidad); WriteLn;
                                                WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                Skip:=readkey;
                                                interaccion1:=3;
                                            end;
                                        if interaccion1=2 then
                                            begin
                                                ClrScr;
                                                WriteLn ('Lo sentimos, esa opcion no esta disponible para su tipo de boleto.'); WriteLn;
                                                WriteLn ('Presione cualquier tecla para volver atras.');
                                                Skip:=ReadKey;    
                                            end;
                                until interaccion1<>2
                            end
                        else if boleto=2 then
                            begin
                                Repeat
                                    ClrScr;
                                    WriteLn ('Usted ha elegido: Boleto integrado. Elija el tipo de viaje.'); WriteLn;
                                    WriteLn ('1 - Viaje en metro: 1$');
                                    WriteLn ('2 - Viaje en metrobus: 2$.'); WriteLn;
                                    WriteLn ('3 - Volver al inicio.');
                                    ReadLn(interaccion2);
                                        if interaccion2=1 then
                                            begin
                                                ClrScr;
                                                WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                ReadLn (cantidad);
                                                totalpagar:=(cantidad*metro); WriteLn;
                                                viajes:=1; viajes:=(viajes*cantidad);
                                                WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                Skip:=readkey;
                                                interaccion2:=3;
                                            end;
                                        if interaccion2=2 then
                                            begin
                                               ClrScr;
                                                WriteLn ('Usted ha elejido viaje en metrobus satisfactoriamente.'); WriteLn;
                                                WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metrobus, '$.');
                                                ReadLn (cantidad);
                                                totalpagar:=(cantidad*metrobus); WriteLn;
                                                viajes:=1; viajes:=(viajes*cantidad);
                                                WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                Skip:=readkey;
                                                interaccion2:=3;     
                                            end;
                                until interaccion2=3
                                end
                        else if boleto=3 then
                                begin
                                    Repeat
                                        ClrScr;
                                        WriteLn ('Usted ha elegido: Boleto ida y vuelta. Elija el tipo de viaje.'); WriteLn;
                                        WriteLn ('1 - Viaje en metro: 1$');
                                        WriteLn ('2 - Viaje en metrobus: 2$.'); WriteLn;
                                        WriteLn ('3 - Volver al inicio.');
                                        ReadLn(interaccion3);
                                            if interaccion3=1 then
                                                begin
                                                    ClrScr;
                                                    WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                    WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                    ReadLn (cantidad);
                                                    totalpagar:=(cantidad*metro); WriteLn;
                                                    viajes:=2; viajes:=(viajes*cantidad);
                                                    WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                    Skip:=readkey;
                                                    interaccion3:=3;
                                                end;
                                            if interaccion3=2 then
                                                begin
                                                    ClrScr;
                                                    WriteLn ('Lo sentimos, esa opcion no esta disponible para su tipo de boleto.'); WriteLn;
                                                    WriteLn ('Presione cualquier tecla para volver atras.');
                                                    Skip:=ReadKey; 
                                                end;
                                    until interaccion3=3;
                                                end
                        else if boleto=4 then
                                begin
                                    Repeat
                                        ClrScr;
                                        WriteLn ('Usted ha elegido: Boleto ida y vuelta integrado. Elija el tipo de viaje.'); WriteLn;
                                        WriteLn ('1 - Viaje en metro: 1$');
                                        WriteLn ('2 - Viaje en metrobus: 2$.'); WriteLn;
                                        WriteLn ('3 - Volver al inicio.');
                                        ReadLn(interaccion4);
                                            if interaccion4=1 then
                                                begin
                                                    ClrScr;
                                                    WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                    WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                    ReadLn (cantidad);
                                                    totalpagar:=(cantidad*metro); WriteLn;
                                                    viajes:=2; viajes:=(viajes*cantidad);
                                                    WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                    Skip:=readkey;
                                                    interaccion4:=3;
                                                end;
                                            if interaccion4=2 then
                                                begin
                                                    ClrScr;
                                                    WriteLn ('Usted ha elejido viaje en metrobus satisfactoriamente.'); WriteLn;
                                                    WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metrobus, '$.');
                                                    ReadLn (cantidad);
                                                    totalpagar:=(cantidad*metrobus); WriteLn;
                                                    viajes:=2; viajes:=(viajes*cantidad);
                                                    WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                    Skip:=readkey;
                                                    interaccion2:=3;  
                                                end;
                                    until interaccion4=3;
                                                end
                        else if boleto=5 then
                                begin
                                    Repeat
                                        ClrScr;
                                        WriteLn ('Usted ha elegido: Boleto Multiabono. Elija el tipo de viaje.'); WriteLn;
                                        WriteLn ('1 - Viaje en metro: 1$');
                                        WriteLn ('2 - Viaje en metrobus: 2$.'); WriteLn;
                                        WriteLn ('3 - Volver al inicio.');
                                        ReadLn(interaccion5);
                                            if interaccion5=1 then
                                                begin
                                                    ClrScr;
                                                    WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                    WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                    ReadLn (cantidad);
                                                    totalpagar:=(cantidad*metro); WriteLn;
                                                    viajes:=10; viajes:=(viajes*cantidad);
                                                    WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                    Skip:=readkey;
                                                    interaccion5:=3;
                                                end;
                                            if interaccion5=2 then
                                                begin
                                                    ClrScr;
                                                    WriteLn ('Lo sentimos, esa opcion no esta disponible para su tipo de boleto.'); WriteLn;
                                                    WriteLn ('Presione cualquier tecla para volver atras.');
                                                    Skip:=ReadKey;   
                                                end;
                                    until interaccion5=3;
                                                end
                        else if boleto=6 then
                                begin
                                    Repeat
                                        ClrScr;
                                        WriteLn ('Usted ha elegido: Boleto Multiabono integrado. Elija el tipo de viaje.'); WriteLn;
                                        WriteLn ('1 - Viaje en metro: 1$');
                                        WriteLn ('2 - Viaje en metrobus: 2$.'); WriteLn;
                                        WriteLn ('3 - Volver al inicio.');
                                        ReadLn(interaccion6);
                                            if interaccion6=1 then
                                                begin
                                                    ClrScr;
                                                    WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                    WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                    ReadLn (cantidad);
                                                    totalpagar:=(cantidad*metro); WriteLn;
                                                    viajes:=10; viajes:=(viajes*cantidad);
                                                    WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                    Skip:=readkey;
                                                    interaccion6:=3;
                                                end;
                                            if interaccion6=2 then
                                                begin
                                                    ClrScr;
                                                    WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                    WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                    ReadLn (cantidad);
                                                    totalpagar:=(cantidad*metrobus); WriteLn;
                                                    viajes:=10; viajes:=(viajes*cantidad);
                                                    WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                    Skip:=readkey;
                                                    interaccion6:=3;   
                                                end;
                                    until interaccion6=3;                                                
                                                end
                        else if boleto=7 then
                                begin
                                    Repeat
                                        ClrScr;
                                        WriteLn ('Usted ha elegido: Boleto estudiantil simple. Elija el tipo de viaje.'); WriteLn;
                                        WriteLn ('1 - Viaje en metro: 1$');
                                        WriteLn ('2 - Viaje en metrobus: 2$.'); WriteLn;
                                        WriteLn ('3 - Volver al inicio.');
                                        ReadLn(interaccion7);
                                            if interaccion7=1 then
                                                begin
                                                    ClrScr;
                                                    WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                    WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                    ReadLn (cantidad);
                                                    totalpagar:=(cantidad*metro); WriteLn;
                                                    viajes:=10; viajes:=(viajes*cantidad);
                                                    WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                    Skip:=readkey;
                                                    interaccion7:=3;
                                                end;
                                            if interaccion7=2 then
                                                begin
                                                    ClrScr;
                                                    WriteLn ('Lo sentimos, esa opcion no esta disponible para su tipo de boleto.'); WriteLn;
                                                    WriteLn ('Presione cualquier tecla para volver atras.');
                                                    Skip:=ReadKey;  
                                                end;
                                    until interaccion7=3;
                                                end                                                
                        else if boleto=8 then
                                begin
                                    Repeat
                                        ClrScr;
                                        WriteLn ('Usted ha elegido: Boleto estudiantil integrado. Elija el tipo de viaje.'); WriteLn;
                                        WriteLn ('1 - Viaje en metro: 1$');
                                        WriteLn ('2 - Viaje en metrobus: 2$.'); WriteLn;
                                        WriteLn ('3 - Volver al inicio.');
                                        ReadLn(interaccion8);
                                            if interaccion8=1 then
                                                begin
                                                    ClrScr;
                                                    WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                    WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                    ReadLn (cantidad);
                                                    totalpagar:=(cantidad*metro); WriteLn;
                                                    viajes:=10; viajes:=(viajes*cantidad);
                                                    WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                    Skip:=readkey;
                                                    interaccion8:=3;
                                                end;
                                            if interaccion8=2 then
                                                begin
                                                    ClrScr;
                                                    WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                    WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                    ReadLn (cantidad);
                                                    totalpagar:=(cantidad*metrobus); WriteLn;
                                                    viajes:=20; viajes:=(viajes*cantidad);
                                                    WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                    Skip:=readkey;
                                                    interaccion6:=3;    
                                                end
                                    until interaccion8=3;
                                                end
                        else if boleto=9 then
                                begin
                                    Repeat
                                        ClrScr;
                                        WriteLn ('Usted ha elegido: Boleto metrotarjeta. Elija el tipo de viaje.'); WriteLn;
                                        WriteLn ('1 - Viaje en metro: 1$');
                                        WriteLn ('2 - Viaje en metrobus: 2$.'); WriteLn;
                                        WriteLn ('3 - Volver al inicio.');
                                        ReadLn(interaccion9);
                                        ClrScr;
                                        WriteLn ('Elija la cantidad de usos.'); WriteLn;
                                        WriteLn ('1 - 20 usos');
                                        WriteLn ('2 - 30 usos');
                                        WriteLn ('3 - 40 usos');
                                        ReadLn(viajes);                                        
                                            if interaccion9=1 then
                                                begin
                                                    if viajes=1 then
                                                        begin
                                                            ClrScr;
                                                            WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                            WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                            ReadLn (cantidad);
                                                            totalpagar:=(cantidad*metro); WriteLn;
                                                            viajes:=20; viajes:=(viajes*cantidad);
                                                            WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                            ReadLn;
                                                            interaccion9:=3;
                                                        end
                                                    else if viajes=2 then
                                                        begin
                                                            ClrScr;
                                                            WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                            WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                            ReadLn (cantidad);
                                                            totalpagar:=(cantidad*metro); WriteLn;
                                                            viajes:=30; viajes:=(viajes*cantidad);
                                                            WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                            ReadLn;
                                                            interaccion9:=3;
                                                        end
                                                    else if viajes=3 then  
                                                        begin
                                                            ClrScr;
                                                            WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                            WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                            ReadLn (cantidad);
                                                            totalpagar:=(cantidad*metro); WriteLn;
                                                            viajes:=40; viajes:=(viajes*cantidad);
                                                            WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                            ReadLn;
                                                            interaccion9:=3;
                                                        end                                                                                                        
                                                end;
                                            if interaccion9=2 then
                                                begin
                                                    if viajes=1 then
                                                        begin
                                                            ClrScr;
                                                            WriteLn ('Usted ha elejido viaje en metrobus satisfactoriamente.'); WriteLn;
                                                            WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                            ReadLn (cantidad);
                                                            totalpagar:=(cantidad*metrobus); WriteLn;
                                                            viajes:=20; viajes:=(viajes*cantidad);
                                                            WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                            ReadLn;
                                                            interaccion9:=3;
                                                        end
                                                    else if viajes=2 then
                                                        begin
                                                            ClrScr;
                                                            WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                            WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                            ReadLn (cantidad);
                                                            totalpagar:=(cantidad*metrobus); WriteLn;
                                                            viajes:=30; viajes:=(viajes*cantidad);
                                                            WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                            ReadLn;
                                                            interaccion9:=3;
                                                        end
                                                    else if viajes=3 then  
                                                        begin
                                                            ClrScr;
                                                            WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                            WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                            ReadLn (cantidad);
                                                            totalpagar:=(cantidad*metro); WriteLn;
                                                            viajes:=40; viajes:=(viajes*cantidad);
                                                            WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                            ReadLn;
                                                            interaccion9:=3;
                                                        end                                                                                                        
                                                end;
                                    until interaccion9=3;                       
                                                end
                        else if boleto=10 then
                                begin
                                    Repeat
                                        ClrScr;
                                        WriteLn ('Usted ha elegido: Boleto metrotarjeta. Elija el tipo de viaje.'); WriteLn;
                                        WriteLn ('1 - Viaje en metro: 1$');
                                        WriteLn ('2 - Viaje en metrobus: 2$.'); WriteLn;
                                        WriteLn ('3 - Volver al inicio.');
                                        ReadLn(interaccion9);
                                        ClrScr;
                                        WriteLn ('Elija la cantidad de usos.'); WriteLn;
                                        WriteLn ('1 - 20 usos');
                                        WriteLn ('2 - 30 usos');
                                        WriteLn ('3 - 40 usos');
                                        ReadLn(viajes);                                        
                                            if interaccion9=1 then
                                                begin
                                                    if viajes=1 then
                                                        begin
                                                            ClrScr;
                                                            WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                            WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                            ReadLn (cantidad);
                                                            totalpagar:=(cantidad*metro); WriteLn;
                                                            viajes:=20; viajes:=(viajes*cantidad);
                                                            WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                            ReadLn;
                                                            interaccion9:=3;
                                                        end
                                                    else if viajes=2 then
                                                        begin
                                                            ClrScr;
                                                            WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                            WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                            ReadLn (cantidad);
                                                            totalpagar:=(cantidad*metro); WriteLn;
                                                            viajes:=30; viajes:=(viajes*cantidad);
                                                            WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                            ReadLn;
                                                            interaccion9:=3;
                                                        end
                                                    else if viajes=3 then  
                                                        begin
                                                            ClrScr;
                                                            WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                            WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                            ReadLn (cantidad);
                                                            totalpagar:=(cantidad*metro); WriteLn;
                                                            viajes:=40; viajes:=(viajes*cantidad);
                                                            WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                            ReadLn;
                                                            interaccion9:=3;
                                                        end                                                                                                        
                                                end;
                                            if interaccion9=2 then
                                                begin
                                                    if viajes=1 then
                                                        begin
                                                            ClrScr;
                                                            WriteLn ('Usted ha elejido viaje en metrobus satisfactoriamente.'); WriteLn;
                                                            WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                            ReadLn (cantidad);
                                                            totalpagar:=(cantidad*metrobus); WriteLn;
                                                            viajes:=20; viajes:=(viajes*cantidad);
                                                            WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                            ReadLn;
                                                            interaccion9:=3;
                                                        end
                                                    else if viajes=2 then
                                                        begin
                                                            ClrScr;
                                                            WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                            WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                            ReadLn (cantidad);
                                                            totalpagar:=(cantidad*metrobus); WriteLn;
                                                            viajes:=30; viajes:=(viajes*cantidad);
                                                            WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                            ReadLn;
                                                            interaccion9:=3;
                                                        end
                                                    else if viajes=3 then  
                                                        begin
                                                            ClrScr;
                                                            WriteLn ('Usted ha elejido viaje en metro satisfactoriamente.'); WriteLn;
                                                            WriteLn ('Cuantos boletos desea comprar? (Precio de viaje en metro: ', metro, '$.');
                                                            ReadLn (cantidad);
                                                            totalpagar:=(cantidad*metro); WriteLn;
                                                            viajes:=40; viajes:=(viajes*cantidad);
                                                            WriteLn ('Su total a pagar es: ', totalpagar, '$ por ', cantidad, ' boletos. Su numero de viajes en metro son: ', viajes);
                                                            ReadLn;
                                                            interaccion9:=3;
                                                        end                                                                                                        
                                                end;
                                    until interaccion9=3;
                                                       end
                                                end;                       
     until interaccion1<>3
until Lobby<>1;
ClrScr;
WriteLn('Gracias, tenga buena viaje.');
readLn()
end.