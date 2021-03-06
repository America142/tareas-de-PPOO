%insumos : nombre, costo
insumo(cemento,20).
insumo(arena,15).
insumo(cal,10).

%equipos: nombre, costo
equipo(grua,200).
equipo(taladro,50).

%proyeccion del nombre de los insumos
proyectarNombreInsumo(Nombre):-insumo(Nombre,_).
%proyeccion del costo de los insumos
proyectarCostoInsumo(Costo):-insumo(_,Costo).

%proyeccion del nombre de los equipos
proyectarNombreEquipo(Nombre):-equipo(Nombre,_).
%proyeccion del costo de los equipos
proyectarCostoEquipo(Costo):-equipo(_,Costo).

%seleccionar insumos que cuesten mas de 15
seleccionarInsumoCostoMayor15(Nombre,Costo):-insumo(Nombre,Costo),Costo>15.
%seleccionar equipos que cuesten mas de 100
seleccionarEquipoCostoMayor100(Nombre,Costo):-equipo(Nombre,Costo), Costo >100.

%seleccionar insumos con costo menor a un tope
seleccionarInsumoCostoMenor(Nombre,Costo,Tope):-insumo(Nombre,Costo),Costo<Tope.
%seleccionar equipos con costo menor a un tope
seleccionarEquipoCostoMenor(Nombre,Costo,Tope):-equipo(Nombre,Costo),Costo<Tope.

%seleccionar insumos con costo mayor a un tope
seleccionarInsumoCostoMayor(Nombre,Costo,Tope):-insumo(Nombre,Costo),Costo>Tope.
%seleccionar equipos con costo mayor a un tope
seleccionarEquipoCostoMayor(Nombre,Costo,Tope):-equipo(Nombre,Costo),Costo>Tope.

%producto cartesiano de insumos
productoCartesianoInsumos(N1,C1,N2,C2):-insumo(N1,C1),insumo(N2,C2).
%producto cartesiano de equipos
productoCartesianoEquipos(N1,C1,N2,C2):-equipo(N1,C1),equipo(N2,C2).

%producto cartesiano entre insumos y equipos
productoCartesiano(N1,C1,N2,C2):-insumo(N1,C1),equipo(N2,C2).

%union de insumos y equipos
union(N,C):-insumo(N,C);equipo(N,C).

%interseccion de insumos y equipos
interseccion(N,C):-insumo(N,C),equipo(N,C).

%diferencia entre insumos y equipos
diferenciaInsumoEquipo(N,C):-insumo(N,C),not(equipo(N,C)).
%diferencia(N,C):-union(N,C),\+(insumo(N,C)).

%diferencia entre equipos e insumos
diferenciaEquipoInsumo(N,C):-equipo(N,C),not(insumo(N,C)).
%diferencia(N,C):-union(N,C),\+(equipo(N,C)).
