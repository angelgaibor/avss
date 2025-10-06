***********************************************************************************************
***** Sintaxis: Conversión de Tiempos, Agregados, Participación EUT 2012										
***** Instituto Nacional de Estadística y Censos						
***** Fecha: Noviembre 2013
***********************************************************************************************
*Abrimos la Base de Datos EUT 2012*

******************************************************************************************************************************************************
******** CONVERSIÓN DE TIEMPO (HORAS-MINUTOS) A SEMANA INTEGRAL(LUNES A DOMINGO)*******************************
******************************************************************************************************************************************************.

*Tiempo en trabajo mercado laboral*.

RECODE P19A P19B P19C P19D (0 99=SYSMIS).
compute ttrabalab = suma.1(P19A, (P19B/60), P19C, (P19D/60)).
VARIABLE LABELS ttrabalab "P19-trabajar la semana pasada o la última semana que trabajó".
EXECUTE .

*Tiempo en trasladarse al trabajo, ida y vuelta*.

RECODE P20A P20B P20C P20D (0 99=SYSMIS).
compute ttratrab = suma.1(P20A, (P20B/60), P20C, (P20D/60)).
VARIABLE LABELS  ttratrab "P20-Tiempo en trasladarse al trabajo, ida y vuelta".
EXECUTE .

*Tiempo en buscar trabajo*.

RECODE P22A P22B P22C P22D (0 99=SYSMIS).
compute tbustra=suma.1(P22A, (P22B/60), P22C, (P22D/60)).
VARIABLE LABELS tbustra "P22-Tiempo en buscar trabajo".
EXECUTE .

*Tiempo en realizar cobros del bono desarrollo humano*.

RECODE P46A P46B P46C P46D (0 99=SYSMIS).
COMPUTE tbodesa=suma.1(P46A, (P46B/60), P46C, (P46D/60)).
VARIABLE LABELS tbodesa "P46-Tiempo en cobrar bono de desarrollo humano".
EXECUTE .

*Tiempos en realilzar cobro bono Joaquin Gallegos Lara*.

RECODE P49A P49B P49C P49D (0 99=SYSMIS).
COMPUTE tbodiseve=suma.1(P49A, (P49B/60), P49C, (P49D/60)).
VARIABLE LABELS tbodiseve "P49-Tiempo en cobrar el bono por discapacidad severa, Joaquín Gallegos Lara".
EXECUTE .

*Tiempo en cobrar el bono por discapacidad*.

RECODE PPS8A PPS8B PPS8C PPS8D (0 99=SYSMIS=).
COMPUTE tbdiscapa=suma.1(PPS8A, (PPS8B/60), PPS8C, (PPS8D/60)).
VARIABLE LABELS tbdiscapa "PPS8-Tiempo en realizar el cobro del bono por discapacidad".
EXECUTE .

*Tiempo en realizar cobro de bono jubilar*.

RECODE PPS15A PPS15B PPS15C PPS15D (0 99=SYSMIS).
COMPUTE tbojubila=suma.1(PPS15A, (PPS15B/60), PPS15C, (PPS15D/60)).
VARIABLE LABELS tbojubila "PPS15-Tiempo en realizar el cobro del bono jubilar".
EXECUTE .

*MODULO 8, USO DEL TIEMPO*
*tiempo semanal en dormir*.

RECODE UT02A UT02B  UT02C  UT02D  (0 99=SYSMIS).
COMPUTE tdurmio=SUMA.1(UT02A, (UT02B/60), UT02C, (UT02D/60)).
VARIABLE LABELS tdurmio "UT02 - Tiempo semanal en dormir".
EXECUTE .

*tiempo semanal en comer*.

RECODE UT03A UT03B  UT03C  UT03D  (0 99=SYSMIS).
COMPUTE tcomer =SUMA.1(UT03A, (UT03B/60), UT03C, (UT03D/60)).
VARIABLE LABELS tcomer 'UT03 Tiempo Semana Integral en Comer'.
EXECUTE.

*tiempo semanal de higiene y cuidado personal*.

RECODE UT04A UT04B  UT04C UT04D (0 99=SYSMIS).
COMPUTE thigiene=SUMA.1(UT04A, (UT04B/60), UT04C, (UT04D/60)).
VARIABLE LABELS thigiene "UT04 - Tiempo semanal en cuidado e higiene personal".
EXECUTE .

*Tiempo semanal de enfermedad*.

RECODE UT05A UT05B  UT05C UT05D (0 99=SYSMIS).
COMPUTE tenferm@=SUMA.1(UT05A, (UT05B/60), UT05C, (UT05D/60)).
VARIABLE LABELS tenferm@ "UT05 - Tiempo semanal en estar enfermo/a".
EXECUTE .

*Tiempo de traslado en caso de enfermedad*.

RECODE UT09A UT09B  UT09C UT09D (0 99=SYSMIS).
COMPUTE ttraslenf =SUMA.1(UT09A, (UT09B/60), UT09C, (UT09D/60)).
VARIABLE LABELS ttraslenf "UT09 - Tiempo de traslado en caso de enfermedad".
EXECUTE .

*Tiempo semanal de consulta para cuidado de salud*:

RECODE UT10A UT10B  UT10C UT10D (0 99=SYSMIS).
COMPUTE tconsult =SUMA.1(UT10A, (UT10B/60), UT10C, (UT10D/60)).
VARIABLE LABELS tconsult "UT10 - Tiempo en consultas para cuidado de salud".
EXECUTE .

*tiempo semanal de asistir a clases formales o informales*.

RECODE UT11A UT11B  UT11C UT11D (0 99=SYSMIS).
COMPUTE tclasess =SUMA.1(UT11A, (UT11B/60), UT11C, (UT11D/60)).
VARIABLE LABELS tclasess "UT11-Tiempo asistencia a clases".
EXECUTE .

*Tiempo de traslado a clases*.

RECODE UT12A UT12B  UT12C UT12D (0 99=SYSMIS).
COMPUTE ttrasclases =SUMA.1(UT12A, (UT12B/60), UT12C, (UT12D/60)).
VARIABLE LABELS ttrasclases "UT12-Tiempo traslado a clases".
EXECUTE .

*Tiempo de hacer deberes escolares*.

RECODE UT13A UT13B  UT13C UT13D (0 99=SYSMIS).
COMPUTE tdeberes =SUMA.1(UT13A, (UT13B/60), UT13C, (UT13D/60)).
VARIABLE LABELS tdeberes "UT13-Tiempo de hacer deberes".
EXECUTE .

*Tiempo asistencia a clases de nivelación y/o refuerzo pedagógico*.

RECODE UT14A UT14B  UT14C UT14D (0 99=SYSMIS).
COMPUTE trefuerzo =SUMA.1(UT14A, (UT14B/60), UT14C, (UT14D/60)).
VARIABLE LABELS trefuerzo "UT14-Tiempo asistencia a nivelación o refuerzo pedagógico".
EXECUTE .

*Tiempo de cocinar o preprarar alimentos para el hogar*.

RECODE UT15A UT15B  UT15C UT15D (0 99=SYSMIS).
COMPUTE tcocinar =SUMA.1(UT15A, (UT15B/60), UT15C, (UT15D/60)).
VARIABLE LABELS tcocinar "UT15-Tiempo de cocinar o preparar alimentos para el hogar".
EXECUTE .

*Tiempo de servir la comida, poner mesa en hogar*.

RECODE UT16A UT16B  UT16C UT16D (0 99=SYSMIS).
COMPUTE tservirmesa =SUMA.1(UT16A, (UT16B/60), UT16C, (UT16D/60)).
VARIABLE LABELS tservirmesa "UT16-Tiempo de servir comida, poner mesa en hogar".
EXECUTE .

*Tiempo de lavar, secar y/o acomodar vajilla en hogar*.

RECODE UT17A UT17B  UT17C UT17D (0 99=SYSMIS).
COMPUTE tlavajilla =SUMA.1(UT17A, (UT17B/60), UT17C, (UT17D/60)).
VARIABLE LABELS tlavajilla "UT17-Tiempo de lavar, secar, vajilla hogar".
EXECUTE .

*Tiempo limpiar cocina o lugar donde cocina en hogar*.

RECODE UT18A UT18B  UT18C UT18D (0 99=SYSMIS).
COMPUTE tlimcoci =SUMA.1(UT18A, (UT18B/60), UT18C, (UT18D/60)).
VARIABLE LABELS tlimcoci "UT18-Tiempo de limpieza de cocina o lugar de cocina en hogar".
EXECUTE .

*Tiempo de desgranar, tostar, moler, lavar semillas para consumo del hogar*.

RECODE UT19A UT19B  UT19C UT19D (0 99=SYSMIS).
COMPUTE tdesgrana =SUMA.1(UT19A, (UT19B/60), UT19C, (UT19D/60)).
VARIABLE LABELS tdesgrana "UT19-Tiempo desgranar, tostar, moler para consumo del hogar".
EXECUTE .

*Tiempo de destilar bebidas alcohólicas y no alcohólicas en hogar*.

RECODE UT20A UT20B  UT20C UT20D (0 99=SYSMIS).
COMPUTE tbebidas =SUMA.1(UT20A, (UT20B/60), UT20C, (UT20D/60)).
VARIABLE LABELS tbebidas "UT20-Tiempo de preparar bebidas".
EXECUTE .

*Tiempo de faenamiento animales para consumo del hogar*.

RECODE UT21A UT21B  UT21C UT21D (0 99=SYSMIS).
COMPUTE tfaenam =SUMA.1(UT21A, (UT21B/60), UT21C, (UT21D/60)).
VARIABLE LABELS tfaenam "UT21-Tiempo de faenamiento animales para hogar".
EXECUTE .

*Tiempo de llevar almuerzo o comida algún miembro hogar a trabajo, escuela, hospital*.

RECODE UT22A UT22B  UT22C UT22D (0 99=SYSMIS).
COMPUTE tllevarcom =SUMA.1(UT22A, (UT22B/60), UT22C, (UT22D/60)).
VARIABLE LABELS tllevarcom "UT22-Tiempo llevar comida a miembros hogar trabajo, escuela, hopital".
EXECUTE .

*Tiempo de encerder fogón de leña o carbón*.

RECODE UT23A UT23B  UT23C UT23D (0 99=SYSMIS).
COMPUTE tfogon =SUMA.1(UT23A, (UT23B/60), UT23C, (UT23D/60)).
VARIABLE LABELS tfogon "UT23-Tiempo de encender fogón de leña o carbón".
EXECUTE .

*Tiempo preparar dulces para hogar*.

RECODE UT24A UT24B  UT24C UT24D (0 99=SYSMIS).
COMPUTE tdulces =SUMA.1(UT24A, (UT24B/60), UT24C, (UT24D/60)).
VARIABLE LABELS tdulces "UT24-Tiempo de preparar dulces y conservas para hogar".
EXECUTE .

*Tiempo de preparar pan, empanadas de harina trigo para hogar*.

RECODE UT25A UT25B  UT25C UT25D (0 99=SYSMIS).
COMPUTE tpanemp =SUMA.1(UT25A, (UT25B/60), UT25C, (UT25D/60)).
VARIABLE LABELS tpanemp "UT25-Tiempo de preparar pan, empanadas harina de trigo para hogar".
EXECUTE .

*Tiempo de preparar otros productos como leche de soya, empanadas, bolones de verde y otros para hogar*.

RECODE UT26A UT26B  UT26C UT26D (0 99=SYSMIS).
COMPUTE totrosprod =SUMA.1(UT26A, (UT26B/60), UT26C, (UT26D/60)).
VARIABLE LABELS totrosprod "UT26-Tiempo de preparar otros productos: leche soya, empanadas, bolones verde para hogar".
EXECUTE .

*Tiempo preparar quesos y otros productos lácteos para hogar*.

RECODE UT27A UT27B  UT27C UT27D (0 99=SYSMIS).
COMPUTE tprodlact =SUMA.1(UT27A, (UT27B/60), UT27C, (UT27D/60)).
VARIABLE LABELS tprodlact "UT27-Tiempo de preparar productos lácteos para hogar".
EXECUTE .

*Tiempo de poner a secar maíz, café, cereales para hogar*.

RECODE UT28A UT28B  UT28C UT28D (0 99=SYSMIS).
COMPUTE tsecagran =SUMA.1(UT28A, (UT28B/60), UT28C, (UT28D/60)).
VARIABLE LABELS tsecagran "UT28-Tiempo de poner a secar granos para hogar".
EXECUTE .

*Tiempo de poner a secar carnes para consumo hogar*.

RECODE UT29A UT29B  UT29C UT29D (0 99=SYSMIS).
COMPUTE tsecarne =SUMA.1(UT29A, (UT29B/60), UT29C, (UT29D/60)).
VARIABLE LABELS tsecarne "UT29-Tiempo de poner a secar carnes para hogar".
EXECUTE .

*Tiempo de poner a secar productos del mar para hogar*.

RECODE UT30A UT30B  UT30C UT30D (0 99=SYSMIS).
COMPUTE tsecmar =SUMA.1(UT30A, (UT30B/60), UT30C, (UT30D/60)).
VARIABLE LABELS tsecmar "UT30-Tiempo de poner a secar productos del mar para hogar".
EXECUTE .

*Tiempo de tender cama o recoger lugar donde duerme*.

RECODE UT31A UT31B  UT31C UT31D (0 99=SYSMIS).
COMPUTE tcama =SUMA.1(UT31A, (UT31B/60), UT31C, (UT31D/60)).
VARIABLE LABELS tcama "UT31-Tiempo de tender cama o recoger lugar donde duerme en hogar".
EXECUTE .

*Tiempo de limpiar baño*.

RECODE UT32A UT32B  UT32C UT32D (0 99=SYSMIS).
COMPUTE tlimbaño =SUMA.1(UT32A, (UT32B/60), UT32C, (UT32D/60)).
VARIABLE LABELS tlimbaño "UT32-Tiempo de limpiar el baño/os del hogar".
EXECUTE .

*Tiempo de limpieza general de la casa*.

RECODE UT33A UT33B  UT33C UT33D (0 99=SYSMIS).
COMPUTE tlimpcasa =SUMA.1(UT33A, (UT33B/60), UT33C, (UT33D/60)).
VARIABLE LABELS tlimpcasa "UT33-Tiempo de limpieza general de casa".
EXECUTE .

*Tiempo de acarreo de agua para uso y/o consumo hogar*.

RECODE UT34A UT34B  UT34C UT34D (0 99=SYSMIS).
COMPUTE tacagua =SUMA.1(UT34A, (UT34B/60), UT34C, (UT34D/60)).
VARIABLE LABELS tacagua "UT34-Tiempo de acarreo de agua para uso del hogar".
EXECUTE.

*Tiempo de poner a calentar agua para bañarse*.

RECODE UT35A UT35B  UT35C UT35D (0 99=SYSMIS).
COMPUTE tcalenagua =SUMA.1(UT35A, (UT35B/60), UT35C, (UT35D/60)).
VARIABLE LABELS tcalenagua "UT35-Tiempo de poner a calentar agua para bañarse".
EXECUTE.

*Tiempo de lavar vehículo o animales de transporte del hogar*.

RECODE UT36A UT36B  UT36C UT36D (0 99=SYSMIS).
COMPUTE tlavavehic =SUMA.1(UT36A, (UT36B/60), UT36C, (UT36D/60)).
VARIABLE LABELS tlavavehic "UT36-Tiempo de lavar vehículo o animal de transporte del hogar".
EXECUTE.

*Tiempo de cuidado de mascotas del hogar*.

RECODE UT37A UT37B  UT37C UT37D (0 99=SYSMIS).
COMPUTE tcuimasc =SUMA.1(UT37A, (UT37B/60), UT37C, (UT37D/60)).
VARIABLE LABELS tcuimasc "UT37-Tiempo de cuidado de mascotas del hogar".
EXECUTE.

*Tiempo en actividades de jardinería del hogar*.

RECODE UT38A UT38B  UT38C UT38D (0 99=SYSMIS).
COMPUTE tjardine =SUMA.1(UT38A, (UT38B/60), UT38C, (UT38D/60)).
VARIABLE LABELS tjardine "UT38-Tiempo en actividades de jardinería del hogar".
EXECUTE.

*Tiempo para botar la basura*.

RECODE UT39A UT39B  UT39C UT39D (0 99=SYSMIS).
COMPUTE tbotabasu =SUMA.1(UT39A, (UT39B/60), UT39C, (UT39D/60)).
VARIABLE LABELS tbotabasu "UT39-Tiempo en botar la basura del hogar".
EXECUTE.

*Tiempo lavar o limpiar calzado miembros del hogar¨*.

RECODE UT40A UT40B  UT40C UT40D (0 99=SYSMIS).
COMPUTE tlavcalza =SUMA.1(UT40A, (UT40B/60), UT40C, (UT40D/60)).
VARIABLE LABELS tlavcalza "UT40-Tiempo en lavar o limpiar calzado de miembros del hogar".
EXECUTE.

*Tiempo de lavar la ropa de miembros del hogar*.

RECODE UT41A UT41B  UT41C UT41D (0 99=SYSMIS).
COMPUTE tlavropa =SUMA.1(UT41A, (UT41B/60), UT41C, (UT41D/60)).
VARIABLE LABELS tlavropa "UT41-Tiempo en lavar ropa de miembros del hogar".
EXECUTE.

*Tiempo en planchar ropa de miembros del hogar*.

RECODE UT42A UT42B  UT42C UT42D (0 99=SYSMIS).
COMPUTE tplanrop =SUMA.1(UT42A, (UT42B/60), UT42C, (UT42D/60)).
VARIABLE LABELS tplanrop "UT42-Tiempo en planchar ropa de miembros del hogar".
EXECUTE.

*Tiempo en llevar o retirar ropa de servicio de lavado u otras personas*.

RECODE UT43A UT43B  UT43C UT43D (0 99=SYSMIS).
COMPUTE tserlava =SUMA.1(UT43A, (UT43B/60), UT43C, (UT43D/60)).
VARIABLE LABELS tserlava "UT43-Tiempo en llevar o retirar ropa de servicio de lavado".
EXECUTE.

*Tiempo de doblar, guardar ropa de miembros del hogar*.

RECODE UT44A UT44B  UT44C UT44D (0 99=SYSMIS).
COMPUTE tguarop =SUMA.1(UT44A, (UT44B/60), UT44C, (UT44D/60)).
VARIABLE LABELS tguarop "UT44-Tiempo en doblar, guardar ropa miembros del hogar".
EXECUTE.

*Tiempo en tejer, bordar, confeccionar prendas de vestir*.

RECODE UT45A UT45B  UT45C UT45D (0 99=SYSMIS).
COMPUTE tconfec =SUMA.1(UT45A, (UT45B/60), UT45C, (UT45D/60)).
VARIABLE LABELS tconfec "UT45-Tiempo en confeccionar prendas a miembros del hogar".
EXECUTE.

*Tiempo en realizar compras periódicas*.

RECODE UT46A UT46B  UT46C UT46D (0 99=SYSMIS).
COMPUTE tcomperio =SUMA.1(UT46A, (UT46B/60), UT46C, (UT46D/60)).
VARIABLE LABELS  tcomperio "UT46-Tiempo en realizar compras periódicas para el hogar".
EXECUTE.

*Tiempo en realizar compras diarias para el hogar*.

RECODE UT47A UT47B  UT47C UT47D (0 99=SYSMIS).
COMPUTE tcomdiari =SUMA.1(UT47A, (UT47B/60), UT47C, (UT47D/60)).
VARIABLE LABELS tcomdiari "UT47-Tiempo en realizar compras diarias para el hogar".
EXECUTE.

*Tiempo en comprar medicinas para miembros del hogar*.

RECODE UT48A UT48B  UT48C UT48D (0 99=SYSMIS).
COMPUTE tcomedici =SUMA.1(UT48A, (UT48B/60), UT48C, (UT48D/60)).
VARIABLE LABELS tcomedici "UT48-Tiempo en realizar compras de medicamentos para miembros del hogar".
EXECUTE.

*Tiempo en comprar útiles escolares, ropa o zapatos para miembros del hogar*.

RECODE UT49A UT49B  UT49C UT49D (0 99=SYSMIS).
COMPUTE tcomutile =SUMA.1(UT49A, (UT49B/60), UT49C, (UT49D/60)).
VARIABLE LABELS tcomutile "UT49-Tiempo en comprar útiles escolares, ropa o zapatos para miembros del hogar".
EXECUTE.

*Tiempo en comprar utensillos para el hogar*

RECODE UT50A UT50B  UT50C UT50D (0 99=SYSMIS).
COMPUTE tcomutens =SUMA.1(UT50A, (UT50B/60), UT50C, (UT50D/60)).
VARIABLE LABELS tcomutens "UT50-Tiempo en comprar utensillos para el hogar".
EXECUTE.

*Tiempo en comprar aparatos ortopédicos para miembros del hogar.*

RECODE UT51A UT51B  UT51C UT51D (0 99=SYSMIS).
COMPUTE tcomortop =SUMA.1(UT51A, (UT51B/60), UT51C, (UT51D/60)).
VARIABLE LABELS tcomortop "UT51-Tiempo en comprar aparatos ortopédicos para miembros del hogar".
EXECUTE.

*Tiempo en comprar o realizar trámites para adquirir vivienda, terreno o vehículo*.

RECODE UT52A UT52B  UT52C UT52D (0 99=SYSMIS).
COMPUTE tcomvivie =SUMA.1(UT52A, (UT52B/60), UT52C, (UT52D/60)).
VARIABLE LABELS tcomvivie "UT52-Tiempo en comprar o realizar trámites para adquirir vivienda, terreno o vehículo".
EXECUTE.

*Tiempo en pago de servicios básicos del hogar*.

RECODE UT53A UT53B  UT53C UT53D (0 99=SYSMIS).
COMPUTE tpagser =SUMA.1(UT53A, (UT53B/60), UT53C, (UT53D/60)).
VARIABLE LABELS tpagser "UT53-Tiempo en realizar pagos de servicios básicos del hogar".
EXECUTE.

*Tiempo en realizar pagos necesarios para el hogar en oficina de gobierno, banco, establecimiento comercial, entre otros*.

RECODE UT54A UT54B  UT54C UT54D (0 99=SYSMIS).
COMPUTE tpagos =SUMA.1(UT54A, (UT54B/60), UT54C, (UT54D/60)).
VARIABLE LABELS tpagos "UT54-Tiempo en realizar pagos necesarios del hogar o de sus miembros".
EXECUTE.

*Tiempo de ordenar documentos importantes de miembros del hogar*.

RECODE UT55A UT55B  UT55C UT55D (0 99=SYSMIS).
COMPUTE tordena =SUMA.1(UT55A, (UT55B/60), UT55C, (UT55D/60)).
VARIABLE LABELS tordena "UT55-Tiempo en ordenar papeles importantes de miembros del hogar".
EXECUTE.

*Tiempo en organizar, supervisar, dirigir los quehaceres del hogar*.

RECODE UT56A UT56B  UT56C UT56D (0 99=SYSMIS).
COMPUTE tsupeqd =SUMA.1(UT56A, (UT56B/60), UT56C, (UT56D/60)).
VARIABLE LABELS tsupeqd "UT56-Tiempo en organizar, supervisar quehaceres del hogar".
EXECUTE.

*Tiempo en ocuparse de llevar las cuentas de los gastos e ingresos y decidir cómo se distribuye el presupuesto del hogar*.

RECODE UT57A UT57B  UT57C UT57D (0 99=SYSMIS).
COMPUTE tpresuhog =SUMA.1(UT57A, (UT57B/60), UT57C, (UT57D/60)).
VARIABLE LABELS tpresuhog "UT57-Tiempo en llevar y decidir sobre las cuentas de ingresos y gastos del hogar".
EXECUTE.

*Tiempo en vigilar la seguridad de la vivienda y vehículo del hogar*.

RECODE UT58A UT58B  UT58C UT58D (0 99=SYSMIS).
COMPUTE tseguhog =SUMA.1(UT58A, (UT58B/60), UT58C, (UT58D/60)).
VARIABLE LABELS tseguhog "UT58-Tiempo en asegurar vivienda y vehículo del hogar".
EXECUTE.

*Tiempo en activiaddes de mudanza*.

RECODE UT59A UT59B  UT59C UT59D (0 99=SYSMIS).
COMPUTE tmudanz =SUMA.1(UT59A, (UT59B/60), UT59C, (UT59D/60)).
VARIABLE LABELS tmudanz "UT59-Tiempo en actividades de mudanza del hogar".
EXECUTE.

*Tiempo en actividades para reacomodar espacios de la vivienda del hogar*.

RECODE UT60A UT60B  UT60C UT60D (0 99=SYSMIS).
COMPUTE tacomod =SUMA.1(UT60A, (UT60B/60), UT60C, (UT60D/60)).
VARIABLE LABELS tacomod "UT60-Tiempo en acomodar espacios en vivienda del hogar".
EXECUTE.

*Tiempo en dar de comer a algun/a niñ@ menor de 12 años del hogar*.

RECODE UT61A UT61B  UT61C UT61D (0 99=SYSMIS).
COMPUTE tcomenen =SUMA.1(UT61A, (UT61B/60), UT61C, (UT61D/60)).
VARIABLE LABELS tcomenen "UT61-Tiempo en dar de comer a niñ@ menor de 12 años del hogar".
EXECUTE.

*Tiempo de bañar y/o vestir a niñ@*.

RECODE UT62A UT62B  UT62C UT62D (0 99=SYSMIS).
COMPUTE tbañanen =SUMA.1(UT62A, (UT62B/60), UT62C, (UT62D/60)).
VARIABLE LABELS tbañanen "UT62-Tiempo en bañar y/o vestir a niñ@ menor de 12 años del hogar".
EXECUTE .

*¨Tiempo en jugar, conversar con niñ@ menor de 12 años*.

RECODE UT63A UT63B  UT63C UT63D (0 99=SYSMIS).
COMPUTE tjuganen =SUMA.1(UT63A, (UT63B/60), UT63C, (UT63D/60)).
VARIABLE LABELS tjuganen "UT63-Tiempo en jugar, conversar con niñ@ menor de 12 años del hogar".
EXECUTE.

*Tiempo en realizar o practicar ejecicios especiales o terapias a niñ@ menor de 12 años del hogar*.

RECODE UT64A UT64B  UT64C UT64D (0 99=SYSMIS).
COMPUTE tejernen =SUMA.1(UT64A, (UT64B/60), UT64C, (UT64D/60)).
VARIABLE LABELS tejernen "UT64-Tiempo de realizar o practicar ejercicios a niñ@ menor de 12 años del hogar".
EXECUTE.

*Tiempo de estar pendiente de algún niño o niña del hogar, mientras hacía otras cosas*.

RECODE UT65A UT65B  UT65C UT65D (0 99=SYSMIS).
COMPUTE tpendniñ@ =SUMA.1(UT65A, (UT65B/60), UT65C, (UT65D/60)).
VARIABLE LABELS tpendniñ@ "UT65-Tiempo de estar  pendiente de algún niño o niña del hogar mientras hacía otras cosas ".
EXECUTE.

*Tiempo de asistir a reuniones escolares de miembros del hogar*.

RECODE UT66A UT66B  UT66C UT66D (0 99=SYSMIS).
COMPUTE treunio =SUMA.1(UT66A, (UT66B/60), UT66C, (UT66D/60)).
VARIABLE LABELS treunio "UT66-Tiempo de asistir a reuniones escolares de miembros del hogar".
EXECUTE .

*Tiempo semanal de ayudar o estar pendiente de las tareas escolares de algún niño, niña o joven del hogar*.

RECODE UT67A UT67B  UT67C UT67D (0 99=SYSMIS).
COMPUTE tayudajov =SUMA.1(UT67A, (UT67B/60), UT67C, (UT67D/60)).
VARIABLE LABELS tayudajov "UT67-Tiempo de ayudar o estar pendiente de las tareas escolares de algún niño o niña o joven del hogar ".
EXECUTE.

*Tiempo en llevar o acompañar a miembro de hogar a guardería, escuela, colegio o algún otro centro educativo*.

RECODE UT68A UT68B  UT68C UT68D (0 99=SYSMIS).
COMPUTE tacomcla =SUMA.1(UT68A, (UT68B/60), UT68C, (UT68D/60)).
VARIABLE LABELS tacomcla "UT68-Tiempo en llevar o acompañar a miembro a algún centro educativo".
EXECUTE.

*Tiempo en acompañar, llevar o recoger a enferm@s a recibir atención médica*.

RECODE UT69A UT69B  UT69C UT69D (0 99=SYSMIS).
COMPUTE tacomatem =SUMA.1(UT69A, (UT69B/60), UT69C, (UT69D/60)).
VARIABLE LABELS tacomatem "UT69-Tiempo en acompañar, llevar o recoger a enferm@s del hogar a recibir atención médica".
EXECUTE.

*Tiempo en llevar o recoger a algún miembro del hogar del trabajo*.

RECODE UT70A UT70B  UT70C UT70D (0 99=SYSMIS).
COMPUTE ttrastrab =SUMA.1(UT70A, (UT70B/60), UT70C, (UT70D/60)).
VARIABLE LABELS ttrastrab "UT70-Tiempo en llevar o recoger a algún miembro del hogar del trabajo".
EXECUTE.

*Tiempo en acompañar a algún miembro del hogar a una clase especial o entrenamiento*.

RECODE UT71A UT71B  UT71C UT71D (0 99=SYSMIS).
COMPUTE tacomespe =SUMA.1(UT71A, (UT71B/60), UT71C, (UT71D/60)).
VARIABLE LABELS tacomespe "UT71-Tiempo en acompañar a algún miembro del hogar a una clase especial".
EXECUTE.

*Tiempo en cuidar a enferm@s miembros del hogar¨.

RECODE UT72A UT72B  UT72C UT72D (0 99=SYSMIS).
COMPUTE tcuienf =SUMA.1(UT72A, (UT72B/60), UT72C, (UT72D/60)).
VARIABLE LABELS tcuienf "UT72-Tiempo en cuidar a enferm@s miembros del hogar".
EXECUTE.

*Tiempo en acompañar a enferm@s a hospital, centros de salud*.

RECODE UT73A UT73B  UT73C UT73D (0 99=SYSMIS).
COMPUTE tacomhosp =SUMA.1(UT73A, (UT73B/60), UT73C, (UT73D/60)).
VARIABLE LABELS tacomhosp "UT73-Tiempo en acompañar a enferm@s a hospital, centros de salud".
EXECUTE.

*Tiempo en acompañar enferm@s a visitar parteras, terapistas, curanderos*.

RECODE UT74A UT74B  UT74C UT74D (0 99=SYSMIS).
COMPUTE tacomcura =SUMA.1(UT74A, (UT74B/60), UT74C, (UT74D/60)).
VARIABLE LABELS tacomcura "UT74-Tiempo en acompañar enferm@s a visitar parteras, terapistas".
EXECUTE.

*Tiempo en preparar remedios caseros para miembros del hogar*.

RECODE UT75A UT75B  UT75C UT75D (0 99=SYSMIS).
COMPUTE tpreprem =SUMA.1(UT75A, (UT75B/60), UT75C, (UT75D/60)).
VARIABLE LABELS tpreprem "UT75-Tiempo en preparar remedios caseros para miembros del hogar".
EXECUTE.

*Tiempo en efectuar o ayudar en reparaciones o construcción en la vivienda*.

RECODE UT77A UT77B  UT77C UT77D (0 99=SYSMIS).
COMPUTE trepara =SUMA.1(UT77A, (UT77B/60), UT77C, (UT77D/60)).
VARIABLE LABELS trepara "UT77-Tiempo en efectuar reparaciones en la vivienda del hogar".
EXECUTE.

*Tiempo en supervisar reparación en vivienda*.

RECODE UT78A UT78B  UT78C UT78D (0 99=SYSMIS).
COMPUTE tsuperv =SUMA.1(UT78A, (UT78B/60), UT78C, (UT78D/60)).
VARIABLE LABELS tsuperv "UT78-Tiempo en supervisar una reparación de vivienda del hogar".
EXECUTE.

*Tiempo en llevar, arreglar o ayudar a reparar medio de transporte del hogar*.

RECODE UT79A UT79B  UT79C UT79D (0 99=SYSMIS).
COMPUTE tarrevehi =SUMA.1(UT79A, (UT79B/60), UT79C, (UT79D/60)).
VARIABLE LABELS tarrevehi "UT79-Tiempo en llevar, arreglar o ayudar a reparar vehículo del hogar".
EXECUTE.

*Tiempo en llevar, arreglar o ayudar a reparar electrodomésticos del hogar*.

RECODE UT80A UT80B  UT80C UT80D (0 99=SYSMIS).
COMPUTE trepaelec =SUMA.1(UT80A, (UT80B/60), UT80C, (UT80D/60)).
VARIABLE LABELS trepaelec "UT80-Tiempo en llevar, ayudar a reparar electrodomésticos del hogar".
EXECUTE.

*Tiempo en hacer o ayudar a hacer un mueble y otra cosa para el hogar*.

RECODE UT81A UT81B  UT81C UT81D (0 99=SYSMIS).
COMPUTE tmueble =SUMA.1(UT81A, (UT81B/60), UT81C, (UT81D/60)).
VARIABLE LABELS tmueble "UT81-Tiempo en hacer o ayudar a hacer muebles para el hogar".
EXECUTE.

*Tiempo en cuidar animales de corral como gallinas, puercos, cuyes, entre otros, para consumo del hogar*.

RECODE UT82A UT82B  UT82C UT82D (0 99=SYSMIS).
COMPUTE tcuidanim =SUMA.1(UT82A, (UT82B/60), UT82C, (UT82D/60)).
VARIABLE LABELS tcuidanim "UT82-Tiempo en cuidar animales como gallinas, puercos, conejos del hogar".
EXECUTE.

*Tiempo dedicado a ordeñar, recoger huevos, trasquilas ovejas, entre otras*.

RECODE UT83A UT83B  UT83C UT83D (0 99=SYSMIS).
COMPUTE tordeña =SUMA.1(UT83A, (UT83B/60), UT83C, (UT83D/60)).
VARIABLE LABELS tordeña "UT83-Tiempo dedicado a ordeñar, recoger huevos, trasquilas ovejas, entre otros ".
EXECUTE.

*Tiempo dedicado a recolectar agua para el terreno*.

RECODE UT84A UT84B  UT84C UT84D (0 99=SYSMIS).
COMPUTE trecolagu =SUMA.1(UT84A, (UT84B/60), UT84C, (UT84D/60)).
VARIABLE LABELS trecolagu "UT84-Tiempo dedicado a recolectar agua para el terreno ".
EXECUTE.

*Tiempo en recolectar agua para animales domésticos del hogar*.

RECODE UT85A UT85B  UT85C UT85D (0 99=SYSMIS).
COMPUTE trecaguan =SUMA.1(UT85A, (UT85B/60), UT85C, (UT85D/60)).
VARIABLE LABELS trecaguan "UT85-Tiempo dedicado a recolectar agua para animales domésticos del hogar ".
EXECUTE.

*Tiempo en recoger leña, hongos o yerbas*.

RECODE UT86A UT86B  UT86C UT86D (0 99=SYSMIS).
COMPUTE trecoleña =SUMA.1(UT86A, (UT86B/60), UT86C, (UT86D/60)).
VARIABLE LABELS trecoleña "UT86-Tiempo dedicado a recoger leña, hongos o  yerbas ".
EXECUTE.

*Tiempo dedicado a recoger flores*.

RECODE UT87A UT87B  UT87C UT87D (0 99=SYSMIS).
COMPUTE trecoflor =SUMA.1(UT87A, (UT87B/60), UT87C, (UT87D/60)).
VARIABLE LABELS trecoflor "UT87-Tiempo dedicado a recoger  flores".
EXECUTE.

*Tiempo dedicado a recoger frutas*.

RECODE UT88A UT88B  UT88C UT88D (0 99=SYSMIS).
COMPUTE trecofrut =SUMA.1(UT88A, (UT88B/60), UT88C, (UT88D/60)).
VARIABLE LABELS trecofrut "UT88-Tiempo dedicado a recoger frutos".
EXECUTE.

*Tiempo dedicado a la pezca o caza*.

RECODE UT89A UT89B  UT89C UT89D (0 99=SYSMIS).
COMPUTE tpescaza =SUMA.1(UT89A, (UT89B/60), UT89C, (UT89D/60)).
VARIABLE LABELS tpescaza "UT89-Tiempo dedicado a la pesca o caza".
EXECUTE.

*tiempo semanal en sembrar, cosechar, desyerbar, preparar terreno, entre otros*.

RECODE UT90A UT90B  UT90C UT90D (0 99=SYSMIS).
COMPUTE tsemcos =SUMA.1(UT90A, (UT90B/60), UT90C, (UT90D/60)).
VARIABLE LABELS tsemcos "UT90 - Tiempo semanal en sembrar, cosechar, desyerbar, preparar terreno, entre otros".
EXECUTE.

*tiempo semanal de elaborar un adorno de masapan*.

RECODE UT92A UT92B  UT92C UT92D (0 99=SYSMIS).
COMPUTE tadomas =SUMA.1(UT92A, (UT92B/60), UT92C, (UT92D/60)).
VARIABLE LABELS tadomas "UT92 - Tiempo semanal de elaborar un adorno de masapan ".
EXECUTE.

*tiempo semanal de elaborar un adorno de concha o coco*.

RECODE UT93A UT93B  UT93C UT93D (0 99=SYSMIS).
COMPUTE tadococ =SUMA.1(UT93A, (UT93B/60), UT93C, (UT93D/60)).
VARIABLE LABELS tadococ "UT93 - Tiempo semanal de elaborar un adorno de concha o coco".
EXECUTE.

*tiempo semanal de elaborar un adorno de cerámica o barro*.

RECODE UT94A UT94B  UT94C UT94D (0 99=SYSMIS).
COMPUTE tadocer =SUMA.1(UT94A, (UT94B/60), UT94C, (UT94D/60)).
VARIABLE LABELS tadocer "UT94 - Tiempo semanal de elaborar un adorno de cerámica o barro".
EXECUTE.

*tiempo semanal de elaborar un adorno textil como tapetes, cortinas*.

RECODE UT95A UT95B  UT95C UT95D (0 99=SYSMIS).
COMPUTE tadotex =SUMA.1(UT95A, (UT95B/60), UT95C, (UT95D/60)).
VARIABLE LABELS tadotex "UT95 - Tiempo semanal de elaborar un adorno textil como tapetes, cortinas".
EXECUTE.

*tiempo semanal de elaborar un adorno de tagua o madera*.

RECODE UT96A UT96B  UT96C UT96D (0 99=SYSMIS).
COMPUTE tadomad =SUMA.1(UT96A, (UT96B/60), UT96C, (UT96D/60)).
VARIABLE LABELS tadomad "UT96 - Tiempo semanal de elaborar un adorno de tagua o madera".
EXECUTE.

*tiempo semanal de elaborar algún otro adorno*.

RECODE UT97A UT97B  UT97C UT97D (0 99=SYSMIS).
COMPUTE tadorno =SUMA.1(UT97A, (UT97B/60), UT97C, (UT97D/60)).
VARIABLE LABELS tadorno "UT97 - Tiempo semanal de elaborar algún otro adorno".
EXECUTE.

*tiempo semanal en quehaceres gratuitos en otros hogares*.

RECODE UT98A UT98B  UT98C UT98D (0 99=SYSMIS).
COMPUTE tqgratis =SUMA.1(UT98A, (UT98B/60), UT98C, (UT98D/60)).
VARIABLE LABELS tqgratis "UT98 - Tiempo semanal en quehaceres domésticos gratuitos en otros hogares".
EXECUTE.

*tiempo semanal en cuidado gratuito en otros hogares*.

RECODE UT99A UT99B  UT99C UT99D (0 99=SYSMIS).
COMPUTE tcpgrat =SUMA.1(UT99A, (UT99B/60), UT99C, (UT99D/60)).
VARIABLE LABELS tcpgrat "UT99 - Tiempo semanal en cuidado gratuito de personas en otros hogares".
EXECUTE.

*tiempo semanal en servicio a la comunidad*.

RECODE UT100A UT100B  UT100C UT100D (0 99=SYSMIS).
COMPUTE tscomun =SUMA.1(UT100A, (UT100B/60), UT100C, (UT100D/60)).
VARIABLE LABELS tscomun "UT100 - Tiempo semanal en servicio a la comunidad".
EXECUTE .

*tiempo semanal en labores domesticas en asilo*.

RECODE UT101A UT101B  UT101C UT101D (0 99=SYSMIS).
COMPUTE tldasil =SUMA.1(UT101A, (UT101B/60), UT101C, (UT101D/60)).
VARIABLE LABELS tldasil "UT101 - Tiempo semanal en labores domésticas en asilos, orfanatos, entre otros".
EXECUTE .

*tiempo semanal trámites para algún servicio para la comunidad*.

RECODE UT102A UT102B  UT102C UT102D (0 99=SYSMIS).
COMPUTE ttservb =SUMA.1(UT102A, (UT102B/60), UT102C, (UT102D/60)).
VARIABLE LABELS ttservb "UT102 - Tiempo semanal trámites para algún servicio para la comunidad".
EXECUTE .

*tiempo semanal en participación en alguna organización*.

RECODE UT103A UT103B  UT103C UT103D (0 99=SYSMIS).
COMPUTE tporgan =SUMA.1(UT103A, (UT103B/60), UT103C, (UT103D/60)).
VARIABLE LABELS tporgan "UT103 - Tiempo semanal en participación en organizaciones".
EXECUTE.

*tiempo semanal dedicado a impartir clases en forma gratuita*.

RECODE UT104A UT104B  UT104C UT104D (0 99=SYSMIS).
COMPUTE tdimpcl =SUMA.1(UT104A, (UT104B/60), UT104C, (UT104D/60)).
VARIABLE LABELS tdimpcl "UT104 - Tiempo semanal dedicado a impartir clases de forma gratuita".
EXECUTE.

*tiempo semanal en tomar curso por esparcimiento o superación*.

RECODE UT105A UT105B  UT105C UT105D (0 99=SYSMIS).
COMPUTE tcursup =SUMA.1(UT105A, (UT105B/60), UT105C, (UT105D/60)).
VARIABLE LABELS tcursup "UT105 - Tiempo semanal en tomar curso por esparcimiento o superación ".
EXECUTE.

*tiempo semanal en ver televisión*.

RECODE UT106A UT106B  UT106C UT106D (0 99=SYSMIS).
COMPUTE tvertv =SUMA.1(UT106A, (UT106B/60), UT106C, (UT106D/60)).
VARIABLE LABELS tvertv "UT106 - Tiempo semanal en ver televisión".
EXECUTE.

*tiempo semanal exclusivo a la lectura*.

RECODE UT107A UT107B  UT107C UT107D (0 99=SYSMIS).
COMPUTE texclec =SUMA.1(UT107A, (UT107B/60), UT107C, (UT107D/60)).
VARIABLE LABELS texclec "UT107 - Tiempo semanal exclusivo a la lectura ".
EXECUTE.

*tiempo semanal práctica instrumento musical o actividades culturales*.

RECODE UT108A UT108B  UT108C UT108D (0 99=SYSMIS).
COMPUTE tpramus =SUMA.1(UT108A, (UT108B/60), UT108C, (UT108D/60)).
VARIABLE LABELS tpramus "UT108 - Tiempo semanal práctica instrumento musical o actividades culturales".
EXECUTE.

*tiempo semanal sólo en descansar*.

RECODE UT109A UT109B  UT109C UT109D (0 99=SYSMIS).
COMPUTE tdescan =SUMA.1(UT109A, (UT109B/60), UT109C, (UT109D/60)).
VARIABLE LABELS tdescan "UT109 - Tiempo semanal sólo en descansar".
EXECUTE.

*tiempo semanal en navegar o chatear por internet*.

RECODE UT110A UT110B  UT110C UT110D (0 99=SYSMIS).
COMPUTE tnavint =SUMA.1(UT110A, (UT110B/60), UT110C, (UT110D/60)).
VARIABLE LABELS tnavint "UT110 - Tiempo semanal en navegar o chatear por internet ".
EXECUTE.

*tiempo semanal en hacer ejercicios o practicar algún deporte*.

RECODE UT111A UT111B  UT111C UT111D (0 99=SYSMIS).
COMPUTE tejedep =SUMA.1(UT111A, (UT111B/60), UT111C, (UT111D/60)).
VARIABLE LABELS tejedep "UT111 - Tiempo semanal en hacer ejercicios o practicar algún deporte".
EXECUTE.

*tiempo semanal en realizar actividades recreativas y/o esparcimiento, bailar, bar, karaoke*.

RECODE UT112A UT112B  UT112C UT112D (0 99=SYSMIS).
COMPUTE trecrea =SUMA.1(UT112A, (UT112B/60), UT112C, (UT112D/60)).
VARIABLE LABELS trecrea "UT112 - Tiempo semanal en realizar actividades recreativas y/o esparcimiento, bailar, bar, karaoke".
EXECUTE.

*tiempo semanal en actividades recreativas y/o esparcimiento en parque público*.

RECODE UT113A UT113B  UT113C UT113D (0 99=SYSMIS).
COMPUTE trecpar =SUMA.1(UT113A, (UT113B/60), UT113C, (UT113D/60)).
VARIABLE LABELS trecpar "UT113 - Tiempo semanal en realizar actividades recreativas y/o esparcimiento en parque público".
EXECUTE.

*tiempo semanal en prácticas religiosas*.

RECODE UT114A UT114B  UT114C UT114D (0 99=SYSMIS).
COMPUTE tprarel =SUMA.1(UT114A, (UT114B/60), UT114C, (UT114D/60)).
VARIABLE LABELS tprarel "UT114 - Tiempo semanal en prácticas religiosas".
EXECUTE.

*tiempo semanal en compartir con la familia o pareja con la que vive*.

RECODE UT116A UT116B  UT116C UT116D (0 99=SYSMIS).
COMPUTE tcofami =SUMA.1(UT116A, (UT116B/60), UT116C, (UT116D/60)).
VARIABLE LABELS tcofami "UT116 - Tiempo semanal en compartir con la familia o pareja con la que vive".
EXECUTE.

*tiempo semanal en recibir visitas o visitar otras familias*.

RECODE UT117A UT117B  UT117C UT117D (0 99=SYSMIS).
COMPUTE trevisi =SUMA.1(UT117A, (UT117B/60), UT117C, (UT117D/60)).
VARIABLE LABELS trevisi "UT117 - Tiempo semanal en recibir visitas o visitar otras familias".
EXECUTE.

*tiempo semanal de hospedaje en otra vivienda por más de un dia*.

RECODE UT118A UT118B  UT118C UT118D (0 99=SYSMIS).
COMPUTE thosped =SUMA.1(UT118A, (UT118B/60), UT118C, (UT118D/60)).
VARIABLE LABELS thosped "UT118 - Tiempo semanal de hospedaje en otra vivienda por más de un día".
EXECUTE.

*tiempo semanal de salir a la calle para estar con amistades, novi@s, entre otros*.

RECODE UT119A UT119B  UT119C UT119D (0 99=SYSMIS).
COMPUTE tsalcal =SUMA.1(UT119A, (UT119B/60), UT119C, (UT119D/60)).
VARIABLE LABELS tsalcal "UT119 - Tiempo semanal de salir a la calle para estar con amistades, novi@s, entre otros".
EXECUTE.

*tiempo semanal de jugar en casa*.

RECODE UT120A UT120B  UT120C UT120D (0 99=SYSMIS).
COMPUTE tjugcas =SUMA.1(UT120A, (UT120B/60), UT120C, (UT120D/60)).
VARIABLE LABELS tjugcas "UT120 - Tiempo semanal de jugar en casa".
EXECUTE.

*tiempo semanal de conversar por teléfono*.

RECODE UT121A UT121B  UT121C UT121D (0 99=SYSMIS).
COMPUTE tconvte =SUMA.1(UT121A, (UT121B/60), UT121C, (UT121D/60)).
VARIABLE LABELS tconvte "UT121 - Tiempo semanal de conversar por teléfono".
EXECUTE.

*tiempo semanal de asistir a bautizos, matrimonios, etc.*.

RECODE UT122A UT122B  UT122C UT122D (0 99=SYSMIS).
COMPUTE tasisma =SUMA.1(UT122A, (UT122B/60), UT122C, (UT122D/60)).
VARIABLE LABELS tasisma "UT122 - Tiempo semanal de asistir a bautizos, matrimonios, etc".
EXECUTE.

*Tiempo semanal en cuidar algún miembro del hogar con discapacidad*.

RECODE UT123A UT123B  UT123C UT123D (0 99=SYSMIS).
COMPUTE tcuidisca =SUMA.1(UT123A, (UT123B/60), UT123C, (UT123D/60)).
VARIABLE LABELS tcuidisca "UT123-Tiempo semanal en cuidar algún miembro con discapacidad del hogar ".
EXECUTE.

*Tiempo semanal en dar de comer a algún miembro con discapacidad del hogar*.

RECODE UT124A UT124B  UT124C UT124D (0 99=SYSMIS).
COMPUTE tdacodisc =SUMA.1(UT124A, (UT124B/60), UT124C, (UT124D/60)).
VARIABLE LABELS tdacodisc "UT124-Tiempo semanal en dar de comer a algún miembro con discapacidad del hogar ".
EXECUTE.

*Tiempo semanal en bañar, asear, vistir a algún miembro con discapacidad del hogar*.

RECODE UT125A UT125B  UT125C UT125D (0 99=SYSMIS).
COMPUTE tbañodisc =SUMA.1(UT125A, (UT125B/60), UT125C, (UT125D/60)).
VARIABLE LABELS tbañodisc "UT125-Tiempo semanal en bañar, asear, vestir a algún miembro con discapacidad del hogar ".
EXECUTE.

*Tiempo semanal en practicar alguna terapia especial a algún miembro con discapacidad del hogar¨*

RECODE UT126A UT126B  UT126C UT126D (0 99=SYSMIS).
COMPUTE tterapdis =SUMA.1(UT126A, (UT126B/60), UT126C, (UT126D/60)).
VARIABLE LABELS tterapdis "UT126-Tiempo semanal en practicar terapias especiales a algún miembro con discapacidad del hogar ".
EXECUTE .

*Tiempo semanal de cuidar en la noche (vela) a alguna persona con discapacidad del hogar*.

RECODE UT127A UT127B  UT127C UT127D (0 99=SYSMIS).
COMPUTE tveladisc =SUMA.1(UT127A, (UT127B/60), UT127C, (UT127D/60)).
VARIABLE LABELS tveladisc "UT127-Tiempo semanal de cuidar en la noche a algún miembro con discapacidad del hogar ".
EXECUTE .

*Tiempo semanal en estar pendiente de la persona del hogar con discapacidad mientras hacía otras cosas durante el día y la noche*.

RECODE UT128A UT128B  UT128C UT128D (0 99=SYSMIS).
COMPUTE tpendisca =SUMA.1(UT128A, (UT128B/60), UT128C, (UT128D/60)).
VARIABLE LABELS tpendisca "UT128-Tiempo semanal en estar pendiente de algún miembro con discapacidad del hogar, mientras hacía otras cosas durante el día y la noche ".
EXECUTE.

*Tiempo semanal en preparar comida especial para algún miembro con discapacidad del hogar.*

RECODE UT129A UT129B  UT129C UT129D (0 99=SYSMIS).
COMPUTE tcomdis =SUMA.1(UT129A, (UT129B/60), UT129C, (UT129D/60)).
VARIABLE LABELS tcomdis "UT129-Tiempo semanal en preparar alguna comida especial para algún miembro con discapacidad del hogar ".
EXECUTE.

*Tiempo semanal en llevar o acompañar al servicio médico a alguna persona con discapacidad del hogar*.

RECODE UT130A UT130B  UT130C UT130D (0 99=SYSMIS).
COMPUTE tservimed =SUMA.1(UT130A, (UT130B/60), UT130C, (UT130D/60)).
VARIABLE LABELS tservimed "UT130-Tiempo semanal en llevar o acompañar al servicio médico a algún miembro con discapacidad del hogar ".
EXECUTE.

*Tiempo semanal en realizar la limpieza de la habitación de alguna persona con discapacidad del hogar*.

RECODE UT131A UT131B  UT131C UT131D (0 99=SYSMIS).
COMPUTE tlimhabdi =SUMA.1(UT131A, (UT131B/60), UT131C, (UT131D/60)).
VARIABLE LABELS tlimhabdi "UT131-Tiempo semanal en limpiar habitación miembro con discapacidad del hogar ".
EXECUTE.

*Tiempo semanal en lavar y/o planchar por separado la ropa de alguna persona con discapacidad del hogar*.

RECODE UT132A UT132B  UT132C UT132D (0 99=SYSMIS).
COMPUTE tlavropdi =SUMA.1(UT132A, (UT132B/60), UT132C, (UT132D/60)).
VARIABLE LABELS tlavropdi "UT132-Tiempo semanal en lavar y/o planchar la ropa de algún miembro con discapacidad del hogar ".
EXECUTE.

******************************************************************************************************************************************************
****************************************** TIEMPOS AGREGADOS  ****************************************************************************
******************************************************************************************************************************************************

*Para construir necesidades y cuidados personales*:

*Agregado tiempo propio*.
Compute Tiempro= suma.1(tdescan, tprarel).
VARIABLE LABELS Tiempro 'Agregado tiempo semanal propio (descanso y meditación)'.

* construcción agregado de necesidades personales***.
Compute Necepers = suma.1(tdurmio, tcomer, thigiene, tenferm@, ttraslenf, tconsult).
Execute. 
VARIABLE LABELS Necepers 'Agregado tiempo semanal en necesidades personales'.

* construcción agregado de necesidades y cuidados personales***.
Compute Neycuper = suma.1(tdurmio, tcomer, thigiene, tenferm@, ttraslenf, tconsult, Tiempro).
Execute. 
VARIABLE LABELS Neycuper 'Agregado tiempo semanal en necesidades y cuidados personales'.


*Agregado tiempo de aprendizaje y estudios*.

Compute Educati = suma.1(tclasess, ttrasclases, tdeberes, trefuerzo).
Execute. 
VARIABLE LABELS Educati 'Agregado tiempo semanal en aprendizaje y educación'.


*Agregado de apoyo actividades culinarias*.

Compute Apoyocul = suma.1(tservirmesa, tlavajilla, tlimcoci, tllevarcom, tfogon).
Execute.
VARIABLE LABELS Apoyocul 'Agregado tiempo semanal de apoyo culinario' .


*Agregado tiempo semanal en cocinar*.

Compute Cocinar = tcocinar.
Execute.
VARIABLE LABELS Cocinar 'Agregado tiempo semanal en cocinar'.


*Agregado de arreglo de casa*.

Compute Arrecasa = suma.1(tcama, tlimbaño, tlimpcasa, tcalenagua, tlavavehic, tcuimasc, tjardine, tbotabasu) .
Execute.
VARIABLE LABELS Arrecasa 'Agregado tiempo semanal en arreglar la casa de los miembros del hogar'.


*Agregados arreglo ropa*.

Compute Arreropa = suma.1(tlavcalza, tlavropa, tplanrop, tserlava, tguarop) .
Execute.
VARIABLE LABELS Arreropa 'Agregado tiempo semanal en arreglar ropa de miembros del hogar'.    


*Agregado de Trámites *.

Compute Tramites = suma.1(tpagser, tpagos) . 
EXECUTE.
VARIABLE LABELS Tramites 'Agregado tiempo semanal en realizar trámites de los miembros del hogar'.


*Agregado de compras*.

Compute Compras = suma.1(tcomperio, tcomdiari, tcomedici, tcomutile, tcomutens, tcomortop, tcomvivie) .
EXECUTE.
VARIABLE LABELS Compras 'Agregado tiempo semanal en realizar compras para el hogar'.


*Agregado de cuidado de niñ@ del hogar menores de 12 años de edad*.

Compute Cuidnene  = suma.1(tcomenen, tbañanen, tjuganen, tejernen, treunio) .
EXECUTE.
VARIABLE LABELS Cuidnene 'Agregado tiempo semanal en cuidar menores de 12 años del hogar'.


*Agregado de Cuidado a personas del hogar con discapacidad*.

Compute Cuidadis = suma.1(tdacodisc, tbañodisc, tterapdis, tveladisc, tcomdis, tservimed, tlimhabdi, tlavropdi) .
execute.
VARIABLE LABELS Cuidadis 'Agregado tiempo semanal en cuidar a miembro del hogar con alguna discapacidad'.


*Agregado de tiempo en cuidar y acompañar a personas enfermas del hogar*.

Compute Cuidaenf = suma.1(tacomatem, tcuienf, tacomhosp, tacomcura, tpreprem) .
EXECUTE.
VARIABLE LABELS Cuidaenf 'Agregado tiempo semanal en cuidar a personas del hogar enfermas'.


*Tiempo de traslado y acompañamiento*.

Compute Traslada = suma.1(tacomcla, ttrastrab, tacomespe) .
VARIABLE LABELS Traslada "Agregado tiempo semanal en traslado o acompañamiento a algún miembro del hogar".
EXECUTE .


*Agregado reparaciones en el hogar*.

Compute Reparar = suma.1(trepara, tsuperv, tarrevehi, trepaelec) .
VARIABLE LABELS Reparar 'Agregado tiempo semanal en realizar reparaciones en el hogar'.
EXECUTE.


*Agragado de gerencia del hogar*.

Compute Gerencia = suma.1(tordena, tsupeqd, tpresuhog, tseguhog, tmudanz, tacomod) .
EXECUTE.
VARIABLE LABELS Gerencia 'Agregado tiempo semanal en gerenciar el hogar'.    


*Agregado para la comunidad y trabajo voluntario*.

Compute Voluntar= suma.1(tscomun, tldasil, ttservb, tporgan, tdimpcl) .
EXECUTE.
VARIABLE LABELS Voluntar 'Agregado tiempo semanal en trabajo voluntario y para la comunidad'.


*Agregado de apoyo a otros hogares*.

Compute Ayuohog= suma.1(tqgratis, tcpgrat) .
EXECUTE.
VARIABLE LABELS Ayuohog 'Agregado tiempo semanal en apoyar a otros hogares en trabajo domestico y cuidado'.


*Agregado convivencia social (familiares, amgios y otros).*

*Tiempo a compartir con la familia o pareja + recibir visitas o visitar otras familias +
hospedaje en otra vivienda + salir a la calle para estar con amigos
+ convesar por teléfono + asistir a eventos sociales familiares y de la comunidad*.

COMPUTE Convisoci = suma.1(tcofami, trevisi, thosped, tsalcal, tconvte, tasisma) .
EXECUTE.
VARIABLE LABELS Convisoci 'Agregado tiempo semanal de convivencia social (tiempo libre)'.


*Agregado de tiempo medios de comunicación*.

*Ver televisión +  tiempo de lectura + tiempo de navegar chatear internet*.

COMPUTE Medios = suma.1(tvertv, texclec, tnavint) .
EXECUTE.
VARIABLE LABELS Medios 'Agregado tiempo semanal dedicado a medios de comunicación (tiempo libre)'. 


*Agregado aficiones, juegos y pasatiempos*.

*Tiempo de jugar en casa, juegos de mesa, otros*.

COMPUTE Aficiojue = tjugcas.
EXECUTE.
VARIABLE LABELS Aficiojue 'Agregado tiempo semanal de aficiones, juegos y pasatiempos (tiempo libre)'.


*Agregado Esparcimiento y entretenimiento*.

*Tiempos en seguir algún curso, tocar algún instrumento, actividades recreativas
actividades como ir a montaña, espacios naturaleza, entre otros*.

COMPUTE Espcentre = suma.1(tcursup, tpramus, trecrea, trecpar) .
EXECUTE.
VARIABLE LABELS Espcentre 'Agregado tiempo semanal de esparcimiento y entretenimiento (tiempo libre)'.


*Agregado de ejercitarse o hacer deporte*.

*Tiempo en hacer deporte*.

COMPUTE Deporte = tejedep.
EXECUTE.
VARIABLE LABELS Deporte 'Agregado tiempo semanal de hacer ejercicios o deporte (tiempo libre)'.

* Agregado de tiempo en buscar trabajo en el mercado laboral*.

COMPUTE tbusco = tbustra.
EXECUTE.
VARIABLE LABELS tbusco 'Agregado tiempo semanal en busar trabajo'.


*Agregado tiempo libre total*.

COMPUTE Tiemlibre = suma.1(Tiempro, Convisoci, Medios, Aficiojue, Espcentre, Deporte) .
EXECUTE.
VARIABLE LABELS Tiemlibre 'Agregado tiempo semanal de tiempo libre total (incluído tiempo propio)'.



*****************************************
* TRABAJO NO REMUNERADO  *
*****************************************

*1.- Agregado Trabajo doméstico interno para el hogar*.

COMPUTE dominter = suma.1(Cocinar, Apoyocul, Arrecasa, Arreropa, Reparar) .
EXECUTE.
VARIABLE LABELS dominter 'Agregado tiempo semanal de trabajo doméstico interno para el hogar'. 


*2.-  Agregado trabajo doméstico externo para el hogar*.

COMPUTE domexter =suma.1(Compras, Gerencia, Tramites, Traslada) .
EXECUTE.
VARIABLE LABELS domexter 'Agregado tiempo semanal de trabajo doméstico externo para el hogar'. 


*3.-  Agregado de cuidado a menores de 12 años, personas enfermas y 
personas con discapacidad, miembros del hogar*.

COMPUTE cuidados = suma.1(Cuidnene, Cuidaenf, Cuidadis) .
EXECUTE.
VARIABLE LABELS cuidados 'Agregado tiempo semanal cuidado a menores d 12 años, pers. enfermas y pers.con discapacidad, miembros del hogar'. 

*4.- Agregado Actividades no remuneradas para otros hogares y la comunidad*.

COMPUTE VolunComun = suma.1(Voluntar, Ayuohog) .
EXECUTE.
VARIABLE LABELS VolunComun 'Tiempo trabajo para otros hogares y la comunidad (Voluntario)'.

*  Agregado trabajo doméstico total (1+2+3+4)*.
******************************************************

COMPUTE DOMTOTAL = suma.1(dominter, domexter, cuidados, VolunComun).
EXECUTE.
VARIABLE LABELS DOMTOTAL 'Agregado tiempo semanal de trabajo doméstico total'.

*****************************************
* TRABAJO  REMUNERADO  *
*****************************************

*1.- Agregado tiempo de trabajo en el mercado laboral*.

COMPUTE tiemtrab = suma.1( ttrabalab, ttratrab, tbusco) .
EXECUTE.
VARIABLE LABELS tiemtrab 'Agregado tiempo semanal de trabajo,traslado y buscar en el mercado laboral' .

*2.- Agregado Autoconsumo*.

COMPUTE Autoconsumo = suma.1(tdesgrana, tbebidas, tfaenam, tcuidanim, tordeña, tsemcos, tdulces, tpanemp, totrosprod, tprodlact, tsecagran, tsecarne,
tsecmar, tacagua, tconfec, tmueble, trecolagu, trecaguan, trecoleña, trecoflor, trecofrut,
tpescaza, tadomas, tadococ, tadocer, tadotex, tadomad, tadorno) .
EXECUTE.
VARIABLE LABELS Autoconsumo 'Agregado tiempo semanal en Autoconsumo'.

*Tiempo de Trabajo Remunerado Total (1+2)*.
****************************************************.

COMPUTE REMUNTOT = suma.1(tiemtrab, Autoconsumo) .
EXECUTE.
VARIABLE LABELS REMUNTOT 'Agregado tiempo semanal en actividades de trabajo remunerado total'.


*Tiempo Total de Trabajo (Remunerado+ No Remunerado)*.

COMPUTE TTT = suma.1(DOMTOTAL, REMUNTOT) .
EXECUTE.
VARIABLE LABELS TTT 'Tiempo Total de Trabajo'.



*****************************************************************************************************************************************************
****************************************** PARTICIPACIÓN EN ACTIVIDADES AGREGADAS  *********************************************
******************************************************************************************************************************************************


*Participación en actividades de cuidado personal y salud*.

COMPUTE Partneycu =0.
IF (Neycuper <> 0) Partneycu =1.
RECODE Partneycu (0=2).
EXECUTE.
VARIABLE LABELS Partneycu 'Participación en actividades de cuidado personal y de salud'.
VALUE LABELS Partneycu
1 'Si participa en actividades de cuidado personal y salud'
2 'No participa en actividades de cuidado personal y salud'.

*Participación en actividades de educación*.

COMPUTE Parteduca = 0.
IF (Educati <> 0) Parteduca = 1.
RECODE Parteduca (0=2).
EXECUTE.
VARIABLE LABELS Parteduca 'Participación en actividades de educación'.
VALUE LABELS Parteduca
1 'Si participa en actividades de educación'
2 'No participa en actividades de educación'.

*Participación en la actividad de cocinar*.

COMPUTE Partcocin = 0.
IF (Cocinar <> 0) Partcocin = 1.
RECODE Partcocin (0=2).
EXECUTE.
VARIABLE LABELS Partcocin 'Participación en la actividad de cocinar'.
VALUE LABELS Partcocin
1 'Si participa en actividades de cocina'
2 'No participa en actividades de cocina'.

*Participación en actividades de apoyo culinario*.

COMPUTE Partapoyo= 0.
IF (Apoyocul <> 0) Partapoyo = 1.
RECODE Partapoyo (0=2).
EXECUTE.
VARIABLE LABELS Partapoyo 'Participación en actividades de apoyo culinario'.
VALUE LABELS Partapoyo
1 'Si participa en actividades de apoyo culinario'
2 'No participa en actividades de apoyo culinario'.

*Participación en actividades de arreglo de casa*.

COMPUTE Partarregl = 0.
IF (Arrecasa <> 0) Partarregl = 1.
RECODE Partarregl (0=2).
EXECUTE.
VARIABLE LABELS Partarregl 'Participación en actividades de arreglo de casa'.
VALUE LABELS Partarregl
1 'Si participa en actividades de arreglo de casa'
2 'No participa en actividades de arreglo de casa'.

*Participación en actividades de arreglo de ropa*.

COMPUTE Partarrero = 0.
IF (Arreropa <> 0) Partarrero = 1.
RECODE Partarrero (0=2).
EXECUTE.
VARIABLE LABELS Partarrero 'Participación en actividades de arreglo de ropa de miembros del hogar'.
VALUE LABELS Partarrero
1 'Si participa en actividades de arreglo de ropa'
2 'No participa en actividades de arreglo de ropa'.

*Particiación en trámites del hogar como bancarios, cobros bonos, entre otros*.

COMPUTE Parttrami = 0.
IF (Tramites <> 0) Parttrami = 1.
RECODE Parttrami (0=2).
EXECUTE.
VARIABLE LABELS Parttrami 'Participación en trámites del hogar'.
VALUE LABELS Parttrami
1 'Si participa en trámites del hogar como bancarios, cobros bonos, entre otros'
2 'No participa en trámites del hogar como bancarios, cobros bonos, entre otros'.

*Participación en compras para el hogar*.

COMPUTE Partcompra = 0.
IF (Compras <> 0) Partcompra = 1.
RECODE Partcompra (0=2).
EXECUTE.
VARIABLE LABELS Partcompra 'Participación en actividades de compras para el hogar'.
VALUE LABELS Partcompra 
1 'Si participa en compras para el hogar'
2 'No participa en compras para el hogar'.

*Participación en actividades de cuidado a personas menores de 12 años de edad, miembros del hogar*.

COMPUTE Partcuinen = 0.
IF (Cuidnene <> 0) Partcuinen = 1.
RECODE Partcuinen (0=2).
EXECUTE.
VARIABLE LABELS Partcuinen 'Participación en cuidado a personas menores de 12 años de edad, miembros del hogar'.
VALUE LABELS Partcuinen
1 'Si participa en actividades de cuidado a personas menores de 12 años de edad, miembros del hogar'
2 'No participa en actividades de cuidado a personas menores de 12 años de edad, miembros del hogar'.

*Participación en cuidado a personas del hogar con discapacidad*.

COMPUTE Partcuidi = 0.
IF (Cuidadis <> 0) Partcuidi = 1.
RECODE Partcuidi (0=2).
EXECUTE.
VARIABLE LABELS Partcuidi 'Participación en cuidado a personas del hogar con algún tipo de discapacidad'.
VALUE LABELS Partcuidi
1 'Si participa en cuidado a personas del hogar con discapacidad'
2 'No participa en cuidado a personas del hogar con discapacidad'.

*Participación en cuidado a personas enfermas del hogar*.

COMPUTE Partcuienf = 0.
IF(Cuidaenf <> 0) Partcuienf = 1.
RECODE Partcuienf (0=2).
EXECUTE.
VARIABLE LABELS Partcuienf  'Participación en cuidado a pesonas enfermas del hogar'.
VALUE LABELS Partcuienf
1 'Si participa en cuidado a personas enfermas del hogar'
2 'No participa en cuidado a personas enfermas del hogar'.

*Participación en traslados de miembros del hogar a trabajos o para estudios, entre otros*.

COMPUTE Parttrasla = 0.
IF (Traslada <> 0) Parttrasla = 1.
RECODE Parttrasla (0=2).
EXECUTE.
VARIABLE LABELS Parttrasla 'Participación en traslados de miembros del hogar a trabajos o para estudios, entre otros'.
VALUE LABELS Parttrasla
1 'Si participa en traslados de miembros del hogar a trabajos o para estudios, entre otros'
2 'No participa en traslados de miembros del hogar a trabajos o para estudios, entre otros'.


*¨Participación en actividades de reparación*.

COMPUTE Partrepara = 0.
IF (Reparar <> 0) Partrepara = 1.
RECODE Partrepara (0=2).
EXECUTE.
VARIABLE LABELS Partrepara 'Participación en actividades de reparación de cualquier tipo en la vivienda del hogar'.
VALUE LABELS Partrepara
1 'Si participa en actividades de reparación'
2 'No participa en actividades de reparación'.

*Participación en actividades de gerencia del hogar*.

COMPUTE Partgeren = 0.
IF (Gerencia <> 0) Partgeren = 1.
RECODE Partgeren (0=2).
EXECUTE.
VARIABLE LABELS Partgeren 'Participación en actividades gerenciales del hogar'.
VALUE LABELS Partgeren
1 'Si participa en actividades de gerencia del hogar'
2 'No participa en actividades de gerencia del hogar'.

*Participación en actividades de voluntariado*.

COMPUTE Partvolun = 0.
IF(Voluntar <> 0) Partvolun =1.
RECODE Partvolun (0=2).
EXECUTE.
VARIABLE LABELS Partvolun 'Participación en actividades de voluntariado'.
VALUE LABELS Partvolun
1 'Si participa en actividades de voluntariado'
2 'No participa en actividades de voluntariado'.

*Participación en actividades domésticas y de cuidado a otros hogares*.

COMPUTE Partothog = 0.
IF (Ayuohog <> 0) Partothog = 1.
RECODE Partothog (0=2).
EXECUTE.
VARIABLE LABELS Partothog 'Participación en actividades domésticas y de cuidado a otros hogares'.
VALUE LABELS Partothog
1 'Si participa en actividades domésticas y de cuidado a otros hogares'
2 'No participa en actividades domésticas y de cuidado a otros hogares'.

*Participación en actividades propias como descansar y/o meditar (tiempo libre)*.

COMPUTE Partpropi = 0.
IF (Tiempro <> 0) Partpropi = 1.
RECODE Partpropi (0=2).
EXECUTE.
VARIABLE LABELS Partpropi 'Participación en actividades propias como descansar y/o meditar'.
VALUE LABELS Partpropi
1 'Si participa en actividades propias como descansar y/o meditar (tiempo libre)'
2 'No participa en actividades propias como descansar y/o meditar (tiempo libre)'.

*Participación en actividades de convivencia social (tiempo libre).

COMPUTE Partconvi = 0.
IF (Convisoci <> 0) Partconvi = 1.
RECODE Partconvi (0=2).
EXECUTE.
VARIABLE LABELS Partconvi 'Participación en actividades de convivencia social (tiempo libre)'.
VALUE LABELS Partconvi
1 'Si participa en actividades de convivencia social (tiempo libre)'
2 'No participa en actividades de convivencia social (tiempo libre)'.

*Participación en actividades de medios masivos como ver tele, leer, chatear*.

COMPUTE Partmedio = 0.
IF (Medios <> 0) Partmedio = 1.
RECODE Partmedio (0=2).
EXECUTE.
VARIABLE LABELS Partmedio 'Participación en actividades de medios masivos (tiempo libre)'.
VALUE LABELS Partmedio
1 'Si participa en actividades de medios masivos como ver tele, leer, chatear'
2 'No participa en actividades de medios masivos como ver tele, leer, chatear'.

*Participación en actividades de aficiones y juegos (tiempo libre)*.

COMPUTE Partafijue = 0.
IF (Aficiojue <> 0) Partafijue = 1.
RECODE Partafijue (0=2).
EXECUTE.
VARIABLE LABELS Partafijue 'Participación en actividades de aficiones y juegos (tiempo libre)'.
VALUE LABELS Partafijue
1 'Si participa en actividades de aficiones y juegos (tiempo libre)'
2 'No participa en actividades de aficiones y juegos (tiempo libre)'.

*Participación en actividades de esparcimiento y entretenimiento (tiempo libre)*.

COMPUTE Partespen = 0.
IF (Espcentre <> 0) Partespen = 1.
RECODE Partespen (0=2).
EXECUTE.
VARIABLE LABELS Partespen 'Participación en actividades de esparcimiento y entretenimiento (tiempo libre)'.
VALUE LABELS Partespen
1 'Si participa en actividades de esparcimiento y entretenimiento (tiempo libre)'
2 'No participa en actividades de esparcimiento y entretenimiento (tiempo libre)'.

*Participación en actividades deportivas (tiempo libre)*.

COMPUTE Partdepor = 0.
IF (Deporte <> 0) Partdepor = 1.
RECODE Partdepor (0=2).
EXECUTE.
VARIABLE LABELS Partdepor 'Participación en actividades deportivas (tienpo libre)'.
VALUE LABELS Partdepor
1 'Si participa en actividades deportivas (tiempo libre)'
2 'No participa en actividades deportivas (tiempo libre)'.

*Participación en actividades de trabajo doméstico dentro del hogar*.

COMPUTE Partdomin =0.
IF (dominter <> 0) Partdomin =1.
RECODE Partdomin (0=2).
EXECUTE.
VARIABLE LABELS Partdomin 'Participación en actividades de trabajo doméstico dentro del hogar'.
VALUE LABELS Partdomin
1 'Si participa en actividades de trabajo doméstico dentro del hogar'
2 'No participa en actividades de trabajo doméstico dentro del hogar'.

*Participación en actividades de trabajo doméstico fuera del hogar*.

COMPUTE Partdomex =0.
IF (domexter <> 0) Partdomex = 1.
RECODE Partdomex (0=2).
EXECUTE.
VARIABLE LABELS Partdomex 'Participación en actividades de trabajo doméstico fuera del hogar'.
VALUE LABELS Partdomex
1 'Si participa en actividades de trabajo doméstico fuera del hogar'
2 'No participa en actividades de trabajo doméstico fuera del hogar'.

*Participación en actividades de cuidados a menores de 12 años de edad, personas enfermas
del hogar, personas con algún tipo de discapacidad*.

COMPUTE Partcuida = 0.
IF (cuidados <> 0) Partcuida = 1.
RECODE Partcuida (0=2).
EXECUTE.
VARIABLE LABELS Partcuida 'Participación en activ de cuidados a menores de 12 años, personas enfermas, discapacidad del hogar'.
VALUE LABELS Partcuida
1 'Si participa en en activ de cuidados a menores de 12 años, personas enfermas, discapacidad del hogar'
2 'No participa en en activ de cuidados a menores de 12 años, personas enfermas, discapacidad del hogar'.

*Participación en Voluntario para la comunidad y otros hogares**.

COMPUTE PartiVolunComuni = 0.
IF (VolunComun <> 0) PartiVolunComuni = 1.
RECODE PartiVolunComuni (0=2).
EXECUTE.
VARIABLE LABELS PartiVolunComuni 'Participación en actividades de trabajo voluntario para otros hogares y comunidad'.
VALUE LABELS PartiVolunComuni
1 'Si participa en actividades de trabajo voluntario para otros hogares y comunidad'
2 'No participa en actividades de trabajo voluntario para otros hogares y comunidad'.


*Participación en trabajo no remunerado*.

COMPUTE Partdomto = 0.
if (DOMTOTAL <> 0) Partdomto = 1.
RECODE Partdomto (0=2).
EXECUTE.
VARIABLE LABELS Partdomto 'Participación en trabajo doméstico total'.
VALUE LABELS Partdomto
1 'Si participa en trabajo no remunerado'
2 'No participa en trabajo no remunerado'.

*Participación en trabajo remunerado y traslados respectivos*.

COMPUTE Partrabajo = 0.
IF (tiemtrab <> 0) Partrabajo = 1.
RECODE Partrabajo (0=2).
EXECUTE.
VARIABLE LABELS Partrabajo 'Participación en trabajo remunerado y traslados respectivos'.
VALUE LABELS Partrabajo
1 'Si participa en trabajo remunerado y traslados respectivos'
2 'No participa en trabajo remunerado y traslados respectivos'.

*Participación en búsqueda de trabajo*.

COMPUTE Partbusco = 0.
IF (tbusco <> 0) Partbusco = 1.
RECODE Partbusco (0=2).
EXECUTE.
VARIABLE LABELS Partbusco 'Participación en actividades de búsqueda de trabajo'.
VALUE LABELS Partbusco
1 'Si buscó trabajo'
2 'No buscó trabajo'.

*Participación en Autoconsumo**.

COMPUTE PartiAutoconsum = 0.
IF (Autoconsumo <> 0) PartiAutoconsum = 1.
RECODE PartiAutoconsum (0=2).
EXECUTE.
VARIABLE LABELS PartiAutoconsum 'Participación en actividades de trabajo para autoconsumo'.
VALUE LABELS PartiAutoconsum
1 'Si participa en actividades de trabajo para autoconsumo'
2 'No participa en actividades de trabajopara autoconsumo'.

*Participación en actividades de trabajo remunerado total*.

COMPUTE Partremuto = 0.
IF (REMUNTOT <> 0) Partremuto = 1.
RECODE Partremuto (0=2).
EXECUTE.
VARIABLE LABELS Partremuto 'Participación en actividades de trabajo remunerado total'.
VALUE LABELS Partremuto
1 'Si participa en actividades de trabajo remunerado total'
2 'No participa en actividades de trabajo remunerado total'.

*Participación en actividades de trabajo remunerado y no remunerado*.

COMPUTE PartiTTT = 0.
IF (TTT <> 0) PartiTTT = 1.
RECODE PartiTTT (0=2).
EXECUTE.
VARIABLE LABELS PartiTTT 'Participación en actividades de trabajo remunerado y no remunerado'.
VALUE LABELS PartiTTT
1 'Si participa en actividades de trabajo remunerado y no remunerado'
2 'No participa en actividades de trabajo remunerado y no remunerado'.


****OCUPADOS****
compute ocupado = 0.
if (p15=1) ocupado = 1.
if (p15=2 and p16>=1 and p16<12) ocupado = 1.
if (p15=2 and p16=12 and p17=1) ocupado = 1.
EXECUTE.
VARIABLE LABELS ocupado 'Ocupados'.
VALUE LABELS ocupado
1'Ocupados'.

****DESOCUPADOS****

compute desocup=0.
Do if (ocupado=0).
   if (p15=2 and p16=12 and p17=2 and p21<11) desocup=1.
  END IF.
EXECUTE.
VARIABLE LABELS desocup 'Desocupados'.
VALUE LABELS Desocup
1'Desocupados'.
EXECUTE.

*Recodificación de etnia*.

RECODE P08 (1=1) (5=3) (6=4) (2 thru 4=2) (7 thru 8=5) INTO Etnia.
VARIABLE LABELS  Etnia 'Autoidentiticación étnica'.
EXECUTE.

VALUE LABELS Etnia 
1 'Indígena'
2 'Afroecuatoriana/o'
3 'Montubia/o'
4 'Mestiza/o'
5 'Blanca/o u Otra/o'.

*Filtro para calcular los tiempos.
*Tresul=Resultado e la entrevista.
*p03=Edad 12 años y más.

compute fil = (tresul=2 & p03>11 & ocupado=1).

filter by fil.

weight by fexp.

* Tabla: Tiempo Total Trabajo Remunerado, Domestico y Total.
CTABLES
  /VLABELS VARIABLES=REMUNTOT DOMTOTAL TTT P02 DISPLAY=LABEL
  /TABLE REMUNTOT [MEAN, TOTALN F40.0, VALIDN F40.0] + DOMTOTAL [MEAN, TOTALN F40.0, VALIDN F40.0] 
    + TTT [MEAN, TOTALN F40.0, VALIDN F40.0] BY P02
  /CATEGORIES VARIABLES=P02 [2, 1] EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.


filter off.
weight off.
