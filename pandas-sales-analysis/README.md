# Pandas Sales Analysis

![Python](https://img.shields.io/badge/Python-Data%20Analysis-3776AB?style=for-the-badge&logo=python&logoColor=white)
![pandas](https://img.shields.io/badge/pandas-CSV%20Processing-150458?style=for-the-badge&logo=pandas&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?style=for-the-badge&logo=jupyter&logoColor=white)

Proyecto práctico de análisis de ventas con **pandas** sobre un dataset CSV.

## Executive Summary

Este módulo toma un archivo de transacciones (`Ventas.csv`) y construye un resumen tabular que consolida:

- ventas por zona,
- ventas por producto,
- métricas generales del día.

Es evidencia de workflow analítico completo: lectura, transformación, agregación y exportación de resultados.

## Tech Stack

`Python` · `pandas` · `Jupyter Notebook`

## Project Structure

```text
.
├── analisis-ventas.ipynb
├── data/
│   ├── raw/Ventas.csv
│   └── output/
├── requirements.txt
└── README.md
```

## Quick Start

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

Después abrí `analisis-ventas.ipynb` y ejecutá las celdas en orden.

## Expected Output

El notebook genera `data/output/resumen.csv` con columnas:

- `Descripcion`
- `Valor`
- `Tipo`

El archivo consolida:

- suma de ventas por zona,
- suma de ventas por producto,
- total de ventas,
- cantidad de registros.

## Why this project matters

Transformar datos transaccionales en un resumen accionable es una habilidad base en cualquier rol de datos. Este proyecto muestra ese flujo de punta a punta en formato simple y legible.

## Notes

- La dependencia declarada en `requirements.txt` es `pandas`.
- El resultado final se exporta en CSV para facilitar consumo posterior.
