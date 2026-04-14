# Jupyter Playground

![Python](https://img.shields.io/badge/Python-3.12+-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebooks-F37626?style=for-the-badge&logo=jupyter&logoColor=white)
![uv](https://img.shields.io/badge/uv-Dependency%20Management-6A5ACD?style=for-the-badge)

Hub de práctica con notebooks orientados a **preprocesamiento** y **análisis algorítmico** dentro del camino de Data Engineering.

## Executive Summary

Este módulo agrupa laboratorios en Jupyter con foco en fundamentos:

- manipulación de datos con Python,
- uso de entornos reproducibles por carpeta,
- organización modular para escalar ejercicios por tema.

El valor para portfolio está en mostrar una base ordenada de exploración técnica, no notebooks sueltos sin contexto.

## Tech Stack

`Python` · `Jupyter` · `uv` · `pandas` · `NumPy`

## Repository Structure

```text
.
├── 01-data-preprocessing/
├── 02-data-algorithms/
└── README.md
```

## Learning Tracks

| Track | Enfoque | Link |
| --- | --- | --- |
| `01-data-preprocessing` | Bases de Python, pandas, EDA, archivos y práctica con notebooks. | [README](./01-data-preprocessing/README.md) |
| `02-data-algorithms` | Ejercicios introductorios de análisis de algoritmos en notebook. | [README](./02-data-algorithms/README.md) |

## Convenciones del Playground

- Cada track gestiona su propio entorno local (`.venv`).
- La configuración vive en el propio módulo (`pyproject.toml`, `.python-version`, `uv.lock`).
- Se trabaja por carpeta, manteniendo aislamiento entre ejercicios.

## Quick Start

Desde este directorio, elegí un track y seguí su README:

```bash
cd 01-data-preprocessing
uv sync --dev
uv run jupyter lab
```

## Why this project matters

En contextos reales, la calidad del análisis también depende de cómo estructurás el workspace. Este playground muestra orden, reproducibilidad y progresión por dominio.

## Notes

- Los comandos exactos pueden variar por track según sus dependencias.
- Si un módulo no incluye tooling adicional (lint, auditoría, etc.), su README lo declara explícitamente.
