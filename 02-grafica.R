# cargar paquetes
pacman::p_load("ggplot2")

# Graficar cambios por anio


# Leer la data
limpia <- read.csv(file = "results/limpia.csv")

# Graficamos
barras.p <- ggplot( data = limpia,
                    mapping = aes( x = year,
                                   y = miembros,
                                   fill = cambio)) +
  geom_col( position = "dodge") +
  ggtitle("Cambiar en el SNI") +
  theme_classic() +
  facet_wrap(~nobilis)

# Visualizamos 
barras.p

# Guardar el grafico
ggsave( filename = "results/barras.png",
        plot = barras.p, width = 7, height = 5)

# Graficar la proporcion de DR y DRA
# que pierden el SNI

# Leer la data
resumen <- read.csv( file = "results/resumen.csv")
pay.p <- ggplot( data = resumen,
                 mapping = aes( x = "",
                                y = totales,
                                fill = nobilis))+
  geom_col( color = "black") +
    coord_polar("y") +
    theme_void() + 
    ggtitle( "Miembros que han perdido el SNI")

# Visualizarlo
pay.p

# Guardar el grafico
ggsave( filename = "results/pay.png", bg = "white",
        plot = pay.p , width = 7, height = 7)

#TO DOs
#victor: Agregar el numero de Drs y Dras en el pay



