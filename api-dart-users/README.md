# Consumo de API y Manejo de Datos en Dart

Este proyecto tiene como objetivo desarrollar una aplicación en Dart que realice una solicitud HTTP a una API pública, transforme los datos obtenidos en instancias de un modelo, y manipule esos datos mediante filtrado y conteo basado en criterios específicos.

## Descripción del Proyecto

Este proyecto realiza las siguientes acciones:

1. Hace una solicitud HTTP GET a la API pública de JSONPlaceholder para obtener datos de usuarios.
2. Convierte los datos JSON recibidos en instancias de la clase `User`.
3. Filtra a los usuarios cuyo nombre de usuario tenga más de 6 caracteres.
4. Cuenta la cantidad de usuarios cuyo correo electrónico pertenece al dominio `biz`.

## Requisitos

- Dart SDK
- Dependencia `http`

## Funciones Implementadas

- **fetchUsers**: Realiza una solicitud HTTP GET a la API para obtener datos de usuarios y los transforma en una lista de instancias de User.
- **filterByNameLength**: Filtra y devuelve los usuarios cuyo nombre de usuario (username) tenga más de 6 caracteres.
- **countEmailBiz**: Cuenta los usuarios cuyo correo electrónico (email) termina en biz.

## Instalación

1. Clona el repositorio:

    ```bash
    git clone https://github.com/tu_usuario/tu_repositorio.git
    ```

2. Navega al directorio del proyecto:

    ```bash
    cd tu_repositorio
    ```

3. Instala las dependencias:

    ```bash
    dart pub get
    ```

## Uso

Para ejecutar el proyecto, utiliza el siguiente comando:

```bash
dart run
```

## Resultados en consola
![image](https://github.com/user-attachments/assets/b7171382-5781-48fb-ba29-647cb8a4af62)
![image](https://github.com/user-attachments/assets/037e1b0f-f513-478b-b4d8-7d69b2610894)



