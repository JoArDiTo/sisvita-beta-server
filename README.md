# SISVITA BETA API

## Descripción

Este es el servicio API para la aplicación web SISVITA, una plataforma que permitirá calcular el nivel de ansiedad de una persona por medio de tests famosos.

## Instalación

1. Clona el repositorio:
  ```bash
  git clone git@github.com:JoArDiTo/sisvita-beta-server.git
  ```
2. Entra en el directorio del proyecto:
  ```bash
  cd sisvita-beta-server
  ```
3. Crea un archivo `.env` basado en `.env.template`:
  
4. Crea y activa un entorno virtual:
  - En Linux:
    ```bash
    python3 -m venv venv
    source venv/bin/activate
    ```
  - En Windows:
    ```bash
    python -m venv venv
    .\venv\Scripts\activate
    ```
5. Instala las dependencias:
  ```bash
  pip install -r requirements.txt
  ```
6. Inicia el servidor:
  ```bash
  python app.py
  ```

