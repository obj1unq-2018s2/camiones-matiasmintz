# camiones-matiasmintz

Ejercicio 4: Camión de transporte

Una empresa de transporte quiere administrar mejor las cargas que lleva un camión.
Para eso requiere un sistema que le permita planicar que cosas debe llevar el camión sin sobrepasar su capacidad. Por otro lado, las cosas que transporta tienen un nivel de peligrosidad. Este nivel es usado para impedir que cosas que superen cierto nivel de peligrosidad circulen en determinadas rutas.

Parte 1: Camión

Se pide que el camión entienda los siguientes mensajes:

cargar(cosa).

descargar(cosa).

pesoTotal(): Es la suma del peso del camión vacío (tara) y su carga. la tara del camión es de 1 tonelada.

excedidoDePeso(): Si el peso total es superior al peso máximo. El cual es de 2.5 toneladas.

objetosPeligrosos(n): Todos los objetos cargados que superan el nivel de peligrosidad n.

objetosMasPeligrososQue(cosa): Todos los objetos cargados que son más peligrosos que la cosa

puedeCircularEnRuta(nivelMaximoPeligrosidad) Puede circular si ningúna cosa que transporta supera el nivelMaximoPeligrosidad.

Parte 2: Cosas

De las cosas que puede transportar el camión nos interesa el peso y la peligrosidad:

Knight Rider : pesa 500 kilos y su nivel de peligrosidad es 10

Bumblebee: pesa 800 kilos y su nivel de peligrosidad es 15 si está transformado en auto o 30 si está como robot.

Paquete de ladrillos: cada ladrillo pesa 2 kilos, la cantidad de ladrillos que tiene puede variar. La peligrosidad es 2

Arena a granel: El peso es variable. La peligrosidad es 1

Batería antiaérea : El peso es 300 kilos si está con los misiles o 200 en otro caso.
En cuanto a la peligrosidad es 100 si está con los misiles y 0 en otro caso.

Contenedor portuario: Un contenedor puede tener otras cosas adentro. El peso es 100 + la suma de todas las cosas que esté adentro. Es tan peligroso como el objeto más peligroso que contiene. Si está vacío es 0.

Residuos radioactivos: El peso es variable y su peligrosidad es 200

Embalaje de seguridad: Es una cobertura que envuelve a cualquier otra cosa. El peso es el peso de la cosa que tenga adentro. El nivel de peligrosidad es la mitad del nivel de peligrosidad de lo que envuelve.

Incorporar las cosas al camión. Testear y probar generando distintas combinaciones.

Dibujar el grafo de referencias para un camión que lleva un paquete de 30 ladrillos, un contenedor portuario que en su interior están knigth rider, bumblebee y una batería antiaérea cargada con misiles. También lleva residuos radiactivos pero dentro de un embalaje de seguridad.