# Práctica 2do Parcial Ansible

## Objetivo

Crear un laboratorio con dos servidores Linux utilizando Docker y administrarlos mediante Ansible, ejecutando tareas automatizadas de configuración y creación de archivos.

## Crear contenedores

Ejecutar:

docker compose up -d

Verificar:

docker ps

## Ejecutar Ansible

Comprobar conexión:

ansible docker -i inventory.ini -m ping

Ejecutar playbook:

ansible-playbook -i inventory.ini playbook.yml

## Resultado

El playbook fue ejecutado correctamente en server1 y server2.