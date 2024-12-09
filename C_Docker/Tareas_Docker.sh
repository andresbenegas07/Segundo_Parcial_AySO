#!/bin/bash

# Construimos la imágen con el nombre pedido
docker build -t andresben07/2p_2024_benegas:v1 -t andresben07/2p_2024_benegas:latest .

# Antes de pushear, generamos un tag...
docker tag 2p_2024_benegas andresben07/2p_2024:latest

# Ahora sí, pusheamos con la ultima versión (latest)
docker push andresben07/2p_2024 -a









