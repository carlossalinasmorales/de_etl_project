# Pandas Sales Analysis

Pequeno proyecto de analisis de ventas con `pandas` usando un notebook de Jupyter.

## Objetivo

Procesar el archivo `Ventas.csv` para responder preguntas basicas de analisis de datos:

- lectura e inspeccion del dataset
- seleccion y filtrado de columnas
- calculo de ventas totales
- agregaciones por zona y producto
- generacion de un archivo resumen en CSV

## Archivos

- `analisis-ventas.ipynb`: notebook principal con el desarrollo del ejercicio
- `data/raw/Ventas.csv`: datos de entrada
- `data/output/`: carpeta de salida para archivos generados
- `requirements.txt`: dependencias minimas del proyecto

## Requisitos

- Python 3
- Jupyter Notebook o VS Code con soporte para notebooks

Instalacion basica:

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

## Uso

1. Abrir `analisis-ventas.ipynb`.
2. Ejecutar las celdas en orden.
3. El resultado final genera `data/output/resumen.csv`.

## Salida esperada

El archivo `resumen.csv` contiene tres columnas:

- `Descripcion`
- `Valor`
- `Tipo`

Incluye:

- suma de ventas por zona
- suma de ventas por producto
- total de ventas del dia
- cantidad de registros

Los valores monetarios se exportan con formato `$` y punto como separador de miles.
