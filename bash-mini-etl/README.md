# Bash Mini ETL

![Bash](https://img.shields.io/badge/Bash-ETL-121011?style=for-the-badge&logo=gnubash&logoColor=white)
![Dataset](https://img.shields.io/badge/Dataset-Titanic-0A66C2?style=for-the-badge)
![CLI](https://img.shields.io/badge/Workflow-Scripted-2E8B57?style=for-the-badge)

Pipeline ETL pequeño en **Bash** que descarga un dataset público de Titanic, genera un resumen por clase y deja trazabilidad de errores.

## Executive Summary

Este proyecto demuestra fundamentos de automatización de datos sin depender de frameworks:

- **extracción** de datos desde una fuente remota,
- **transformación** tabular usando utilidades de shell,
- **salida operativa** con archivo de resultados y log de errores.

Es una pieza útil de portfolio para mostrar criterio de scripting en tareas de ingesta/procesamiento básico.

## Tech Stack

`Bash` · `wget` · utilidades Unix (`cut`, `sort`, `uniq`, `tail`)

## Project Structure

```text
.
├── data/
│   └── raw/
├── logs/
├── output/
├── scripts/
│   └── pipeline.sh
├── .gitignore
├── SDD.md
└── README.md
```

## ETL Flow

1. **Extract**: descarga `titanic.csv` desde `datasciencedojo/datasets`.
2. **Transform**: cuenta pasajeros por clase (columna 3) ignorando el encabezado.
3. **Load**: escribe el reporte en `output/class_count.txt` y registra errores en `logs/error.log`.

## Quick Start

Desde la raíz de este módulo:

```bash
bash scripts/pipeline.sh
```

## Outputs

- `output/class_count.txt` — reporte con cabecera de ejecución y conteo por clase.
- `logs/error.log` — captura de errores de descarga (`wget`).

## Why this project matters

En equipos de datos, no todo empieza con Spark o Airflow: muchas veces se arranca con scripts reproducibles y claros. Este módulo prueba esa base operativa.

## Notes

- El script usa rutas relativas al propio archivo (`SCRIPT_DIR`/`PROJECT_ROOT`), por lo que no depende del directorio desde el que lo ejecutes.
- Mantiene un token de curso en el encabezado del reporte para trazabilidad académica.
