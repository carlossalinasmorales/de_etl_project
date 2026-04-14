# jupyter-playground

Monorepo de cursos y playgrounds de Data Engineering con notebooks de Jupyter.

## Estructura

Cada curso vive en su propio directorio versionado, con dependencias aisladas y su propio entorno virtual local (`.venv`).

```text
.
└── 01-data-preprocessing/
```

## Cursos disponibles

1. [`01-data-preprocessing`](./01-data-preprocessing/) — Python, pandas, NumPy, EDA y manejo de archivos.

## Convenciones del monorepo

- Cada curso administra su entorno con `uv` dentro de su carpeta.
- Cada curso puede tener su propio `.python-version`, `pyproject.toml` y `uv.lock`.
- Los entornos `.venv/` de cualquier curso se ignoran desde la raíz del repo.

## Cómo trabajar en un curso

Entrá al directorio del curso y seguí su `README.md`.

Ejemplo:

```bash
cd 01-data-preprocessing
uv sync --dev
uv run jupyter lab
```
