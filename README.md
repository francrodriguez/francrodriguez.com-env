# Instrucciones de uso

## Requisitos

1. Clonar repositorio.
2. Crear el fichero .env con los datos necesarios a partir del ejemplo
que hay en deploys/develop/.env.example
3. Clonar repositorio de código en src/francrodriguez.com-src
4. Editar /etc/hosts y añadir esta entrada:

127.0.0.1   francrodriguez.com

4. make build
5. make start

Opciones makefile:

- Build tools y complementos:

 make build

- Arrancar stack

 make start

- Consultar logs:

 make logs

- Parar stack:

 make stop

- Estado:

 make status

- Ejecutar composer:

 make composer

- Ejecutar npm:

 make npm

- Ejecutar artisan:

 make artisan
