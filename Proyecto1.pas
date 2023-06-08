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
    linea, subestacion: Longint; {Interfaz lineas y subestaciones}
    SubestacionSalida, SubestacionLlegada: string;
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
                                        WriteLn ('Usted ha elegido: Boleto metrotarjeta integrada. Elija el tipo de viaje.'); WriteLn;
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
                                            if interaccion10=1 then
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
                                                            interaccion10:=3;
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
                                                            interaccion10:=3;
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
                                                            interaccion10:=3;
                                                        end                                                                                                        
                                                end;
                                            if interaccion10=2 then
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
                                                            interaccion10:=3;
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
                                                            interaccion10:=3;
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
                                                            interaccion10:=3;
                                                        end                                                                                                        
                                                end;
                                    until interaccion9=3;
                                                       end
                            end;
if (boleto>=1) and (boleto<10) then
    begin
        repeat
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

                if linea>8 then           
                    begin
                        writeln ('El numero ingresado no esta dentro de las opciones');
                        writeln ('Presione cualquier tecla para continuar');
                        readln;
                    end
                else if linea>=0 then
        until (linea>=0) and (linea<9);
        clrscr;
            case linea of    
                1:  Begin 
                        writeln ('Usted ha elegido la Linea 1');
                        writeln ('');
                        writeln ('                 Seleccione la subestacion de salida');
                        writeln (' _____________________________________________________________________');
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
                        case subestacion of
                            1: begin 
                                ClrScr;
                                SubestacionSalida:='Propatria';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            2: begin 
                                ClrScr;
                                SubestacionSalida:='Perez Bonalde';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            3: begin 
                                ClrScr;
                                SubestacionSalida:='Plaza Sucre';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            4: begin 
                                ClrScr;
                                SubestacionSalida:='Gato Negro';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            5: begin 
                                ClrScr;
                                SubestacionSalida:='Agua Salud';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            6: begin 
                                ClrScr;
                                SubestacionSalida:='Cabo Amarillo';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            7: begin 
                                ClrScr;
                                SubestacionSalida:='Capitolio';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            8: begin 
                                ClrScr;
                                SubestacionSalida:='La Hoyada';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            9: begin 
                                ClrScr;
                                SubestacionSalida:='Parque Carabobo';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            10: begin 
                                ClrScr;
                                SubestacionSalida:='Bellas Artes';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            11: begin 
                                ClrScr;
                                SubestacionSalida:='Colegio de Ing.';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            12: begin 
                                ClrScr;
                                SubestacionSalida:='Plaza Venezuela';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            13: begin 
                                ClrScr;
                                SubestacionSalida:='Sabana Grande';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            14: begin 
                                ClrScr;
                                SubestacionSalida:='Chacaito';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            15: begin 
                                ClrScr;
                                SubestacionSalida:='Chacao';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            16: begin 
                                ClrScr;
                                SubestacionSalida:='Altamira';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            17: begin 
                                ClrScr;
                                SubestacionSalida:='Miranda';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            18: begin 
                                ClrScr;
                                SubestacionSalida:='Los Dos Caminos';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            19: begin 
                                ClrScr;
                                SubestacionSalida:='Los Cotijos';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            20: begin 
                                ClrScr;
                                SubestacionSalida:='La California';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            21: begin 
                                ClrScr;
                                SubestacionSalida:='Petare';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            22: begin 
                                ClrScr;
                                SubestacionSalida:='Palo Verde';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                        else
                            writeln ('Subestación no reconocida.');
                        end;                             
                    end;

                2:  begin
                        writeln ('Usted ha elegido la Linea 2');
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
                    case subestacion of
                            1: begin 
                                ClrScr;
                                SubestacionSalida:='El Silencio';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            2: begin 
                                ClrScr;
                                SubestacionSalida:='Capuchinos';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            3: begin 
                                ClrScr;
                                SubestacionSalida:='Maternidad';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            4: begin 
                                ClrScr;
                                SubestacionSalida:='Artiguas';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            5: begin 
                                ClrScr;
                                SubestacionSalida:='La Yaguara';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            6: begin 
                                ClrScr;
                                SubestacionSalida:='Carapita';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            7: begin 
                                ClrScr;
                                SubestacionSalida:='Antimano';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            8: begin 
                                ClrScr;
                                SubestacionSalida:='Caricuao';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            9: begin 
                                ClrScr;
                                SubestacionSalida:='Zoologico';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                            10: begin 
                                ClrScr;
                                SubestacionSalida:='Ruiz Pineda/ Las Adjuntas';
                                writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
                                Readln;
                            end;
                        else
                            writeln ('Subestación no reconocida.');
                        end; 
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
                    case subestacion of
        1: begin 
            ClrScr;
            SubestacionSalida:='Plaza Venezuela';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        2: begin 
            ClrScr;
            SubestacionSalida:='Ciudad Universitaria';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        3: begin 
            ClrScr;
            SubestacionSalida:='Los Simbolos';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        4: begin 
            ClrScr;
            SubestacionSalida:='La Bandera';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        5: begin 
            ClrScr;
            SubestacionSalida:='El Valle';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        6: begin 
            ClrScr;
            SubestacionSalida:='Los Jardines';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        7: begin 
            ClrScr;
            SubestacionSalida:='Coche';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        8: begin 
            ClrScr;
            SubestacionSalida:='Mercado';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        9: begin 
            ClrScr;
            SubestacionSalida:='La Rinconada';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
    else
        writeln ('Subestación no reconocida.');
    end;
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
    case subestacion of
        1: begin 
            ClrScr;
            SubestacionSalida:='Zona Rental';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        2: begin 
            ClrScr;
            SubestacionSalida:='Parque Central';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        3: begin 
            ClrScr;
            SubestacionSalida:='Nuevo Circo';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        4: begin 
            ClrScr;
            SubestacionSalida:='Teatros';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        5: begin 
            ClrScr;
            SubestacionSalida:='Capuchinos';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        6: begin 
            ClrScr;
            SubestacionSalida:='Maternidad';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        7: begin 
            ClrScr;
            SubestacionSalida:='Artigas';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        8: begin 
            ClrScr;
            SubestacionSalida:='La Paz';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        9: begin 
            ClrScr;
            SubestacionSalida:='La Yaguara';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        10: begin 
            ClrScr;
            SubestacionSalida:='Carapita';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        11: begin 
            ClrScr;
            SubestacionSalida:='Antimano';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        12: begin 
            ClrScr;
            SubestacionSalida:='Mamera';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        13: begin 
            ClrScr;
            SubestacionSalida:='Ruiz';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
    else
        writeln ('Subestación no reconocida.');
    end;
                    end;            
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
    case subestacion of
        1: begin 
            ClrScr;
            SubestacionSalida:='Bello Monte';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        2: begin 
            ClrScr;
            SubestacionSalida:='Las Mercedes';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        3: begin 
            ClrScr;
            SubestacionSalida:='Parque Simon Bolivar';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        4: begin 
            ClrScr;
            SubestacionSalida:='Bello Campo';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        5: begin 
            ClrScr;
            SubestacionSalida:='Hugo Chavez';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        6: begin 
            ClrScr;
            SubestacionSalida:='Montecristo';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        7: begin 
            ClrScr;
            SubestacionSalida:='Boleita';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        8: begin 
            ClrScr;
            SubestacionSalida:='El Marquez';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        9: begin 
            ClrScr;
            SubestacionSalida:='Warairarepano';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
    else
        writeln ('Subestación no reconocida.');
    end;
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
    case subestacion of
        1: begin 
            ClrScr;
            SubestacionSalida:='Zoologico';
            writeln ('Usted ha seleccionado la subestacion de salida: ', SubestacionSalida,'.');
            Readln;
        end;
        2: begin 
            ClrScr;
            SubestacionSalida:='La Rinconada';
            writeln ('Usted ha seleccionado la subestacion de salida: ', SubestacionSalida,'.');
            Readln;
        end;
    else
        writeln ('Subestación no reconocida.');
    end;
    writeln ('Seleccione la subestacion de llegada:');
    readln (subestacion);
        case subestacion of
        1: begin 
            ClrScr;
            SubestacionLlegada:='Zoologico';
            writeln ('Usted ha seleccionado la subestacion de llegada: ', SubestacionLlegada,'.');
            Readln;
        end;
        2: begin 
            ClrScr;
            SubestacionLlegada:='La Rinconada';
            writeln ('Usted ha seleccionado la subestacion de llegada: ', SubestacionLlegada,'.');
            Readln;
        end;
    else
        writeln ('Subestación no reconocida.');
    end;

                    end;
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
    case subestacion of
        1: begin 
            ClrScr;
            SubestacionSalida:='Las Flores';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        2: begin 
            ClrScr;
            SubestacionSalida:='Panteon';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        3: begin 
            ClrScr;
            SubestacionSalida:='Socorro';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        4: begin 
            ClrScr;
            SubestacionSalida:='La Hoyada';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        5: begin 
            ClrScr;
            SubestacionSalida:='El Cristo';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        6: begin 
            ClrScr;
            SubestacionSalida:='Roca Tarpeya';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        7: begin 
            ClrScr;
            SubestacionSalida:='Presidente Medina';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        8: begin 
            ClrScr;
            SubestacionSalida:='INCES';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        9: begin 
            ClrScr;
            SubestacionSalida:='Roosevelt';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        10: begin 
            ClrScr;
            SubestacionSalida:='La Bandera';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        11: begin 
            ClrScr;
            SubestacionSalida:='Los Ilustres';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
    else
        writeln ('Subestación no reconocida.');
    end;  
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
    case subestacion of
        1: begin 
            ClrScr;
            SubestacionSalida:='Petare 2';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        2: begin 
            ClrScr;
            SubestacionSalida:='19 de Abril';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        3: begin 
            ClrScr;
            SubestacionSalida:='5 de Julio';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        4: begin 
            ClrScr;
            SubestacionSalida:='24 de Julio';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
        5: begin 
            ClrScr;
            SubestacionSalida:='Warairarepano';
            writeln ('Usted ha seleccionado la subestacion: ', SubestacionSalida,'.');
            Readln;
        end;
    else
        writeln ('Subestación no reconocida.');
    end;
                    end;              
    end;
end;
{final}                       
     until interaccion1<>3
until Lobby<>1;
ClrScr;
WriteLn('Gracias, tenga buena viaje.');
readLn()
end.