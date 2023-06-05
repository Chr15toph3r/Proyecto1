Program Proyecto1;  {La estación del metro de Caracas requiere que usted desarrolle un programa 
                    de ventas de boletos, donde debe preguntar si desea o no comprar el boleto, 
                    en caso de que decida comprarlos debe pedirle los datos al usuario (Nombre, 
                    Apellido, Cédula y la cantidad de boletos que desea comprar), tener 
                    en cuenta que existen diferentes tipos de boletos y el usuario debe seleccionar 
                    alguna de las siguientes opciones:}
Uses crt;
Var
Lobby, Confirmacion1: Integer; {funciones interfaz}
{recoleccion de datos numericos}
Nombre, Apellido, Cedula, Skip: String; {recoleccion de datos con simbolos alfabeticos}
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






until Lobby<>1;
ClrScr;
WriteLn('Gracias, tenga buena viaje.');
readLn()
end.
