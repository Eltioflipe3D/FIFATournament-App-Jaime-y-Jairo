# Torneo FIFA - Gestión de torneos Jaime y Jairo

Aplicación multiplataforma (.NET MAUI) para gestionar torneos en el insti:

- **Gestor (Windows):** inscripción de participantes, validación del número de participantes (potencia de dos), emparejamientos y resultados.
- **Alumno (Android, quizá):** consulta del cuadro del torneo, próximos partidos y clasificación.

## Estructura del repositorio

```
db/    Scripts SQL
docs/  Diagrama
src/   App MAUI
```

## Puesta en marcha

### 1. Base de datos (PostgreSQL)

1. Crea una base de datos en PostgreSQL
2. Ejecuta:
   1. `db/scriptCreacion.sql`
   2. `db/scriptInicial.sql` (datos de prueba)

### 2. Aplicación

1. Abre la app maui
2. Define la variable de entorno `TORNEO_DB` con tus credenciales:
   `Host=localhost;Port=5432;Database=torneo_fifa;Username=postgres;Password=your_password`
3. Ejecuta


## Autores

Jaime y Jairo - 2º DAM
