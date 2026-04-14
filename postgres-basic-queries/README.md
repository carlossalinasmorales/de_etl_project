# PostgreSQL Basic Queries

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-SQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Query%20Practice-003B57?style=for-the-badge&logo=postgresql&logoColor=white)
![Dataset](https://img.shields.io/badge/Dataset-dvdrental-0A66C2?style=for-the-badge)

Proyecto práctico de **consultas SQL en PostgreSQL** usando la base de datos de ejemplo **dvdrental**.

Está pensado como evidencia de fundamentos en:

- filtrado y ordenamiento de datos,
- joins entre tablas relacionales,
- análisis básico sobre datasets transaccionales,
- lectura de esquemas y resolución de problemas con SQL.

## Executive Summary

Este proyecto reúne ejercicios introductorios de SQL orientados a trabajar sobre un esquema relacional realista.

Los scripts muestran capacidad para:

- consultar catálogos y registros operativos,
- relacionar entidades con `JOIN`,
- detectar ausencia de datos con `LEFT JOIN` y `NULL`,
- aplicar filtros, ordenamiento y límites de resultados.

## Tech Stack

`PostgreSQL` · `SQL` · `dvdrental`

## Project Structure

```text
.
├── 01_analisis_catalogo.sql
├── 02_comunicacion_con_clientes.sql
├── 03_audotoria_inventario.sql
└── README.md
```

## Dataset Overview

**dvdrental** es una base de datos de ejemplo que simula una tienda de arriendo de películas. Incluye información de clientes, películas, inventario, alquileres, pagos, actores y categorías.

### Main Tables

| Tabla | Descripción |
| --- | --- |
| `film` | Catálogo de películas con título, descripción, duración y tarifa |
| `customer` | Datos de clientes |
| `rental` | Registros de alquiler con fechas |
| `inventory` | Inventario disponible por película |
| `actor` | Actores |
| `category` | Categorías de películas |
| `payment` | Pagos realizados |

## Query Exercises

| Archivo | Objetivo | Conceptos |
| --- | --- | --- |
| `01_analisis_catalogo.sql` | Filtrar películas por descripción y duración, priorizando por tarifa. | `WHERE`, `ILIKE`, `BETWEEN`, `ORDER BY`, `LIMIT` |
| `02_comunicacion_con_clientes.sql` | Obtener clientes que rentaron películas en una fecha específica. | `INNER JOIN`, `CAST`, filtrado por fecha |
| `03_audotoria_inventario.sql` | Detectar películas registradas sin inventario disponible. | `LEFT JOIN`, `NULL`, auditoría de datos |

## Sample Queries

### 01 · Análisis de catálogo

```sql
SELECT title, description, rental_rate
FROM film
WHERE description ILIKE '%action%'
    AND rental_duration BETWEEN 3 AND 5
ORDER BY rental_rate DESC
LIMIT 5;
```

### 02 · Comunicación con clientes

```sql
SELECT
    customer.first_name,
    customer.last_name,
    customer.email,
    rental.rental_date
FROM customer
INNER JOIN rental ON customer.customer_id = rental.customer_id
WHERE CAST(rental.rental_date AS DATE) = '2005-05-24'
ORDER BY last_name ASC;
```

### 03 · Auditoría de inventario

```sql
SELECT
    film.film_id,
    film.title
FROM film
LEFT JOIN inventory ON film.film_id = inventory.film_id
WHERE inventory.inventory_id IS NULL
ORDER BY film.film_id ASC;
```

## Why this project matters

Este proyecto demuestra fundamentos que importan en cualquier entorno de datos:

- pensar consultas a partir del modelo relacional,
- traducir preguntas de negocio a SQL,
- identificar relaciones y faltantes de información,
- construir una base sólida antes de pasar a análisis más complejos.

## Quick Start

1. Levantá una instancia de PostgreSQL.
2. Cargá la base de ejemplo `dvdrental`.
3. Ejecutá cualquiera de los scripts SQL desde tu cliente preferido (`psql`, DBeaver, pgAdmin, DataGrip, etc.).

## Notes

- Los archivos están pensados como práctica progresiva de SQL.
- El foco está en fundamentos relacionales, no en optimización avanzada.
- El nombre del archivo `03_audotoria_inventario.sql` conserva el naming original del ejercicio, aunque en la documentación se presenta como **Auditoría de inventario**.
