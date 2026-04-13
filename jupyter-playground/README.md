# jupyter-playground

Playground de práctica con Python, pandas, NumPy y notebooks de Jupyter.

## Stack y convenciones

- Python `3.12.3`
- Gestión de dependencias con `uv`
- Entorno virtual local en `.venv/`
- Dependencias declaradas en `pyproject.toml`
- Resolución reproducible en `uv.lock`
- Kernel de Jupyter del proyecto: `Python (.venv) jupyter-playground`

## Requisitos

- Tener `uv` instalado

## Setup inicial

Desde la raíz del proyecto:

```bash
uv sync --dev
```

Esto:

- crea o actualiza `.venv/`
- instala dependencias de runtime y desarrollo
- respeta `.python-version`

## Ejecutar Jupyter

```bash
uv run jupyter lab
```

Si usás Notebook clásico:

```bash
uv run jupyter notebook
```

## Kernel correcto

En Jupyter o VS Code, seleccioná este kernel:

```text
Python (.venv) jupyter-playground
```

## Comandos útiles

### Abrir un intérprete Python

```bash
uv run python
```

### Agregar una dependencia de runtime

```bash
uv add <paquete>
```

### Agregar una dependencia de desarrollo

```bash
uv add --dev <paquete>
```

### Ejecutar Ruff

```bash
uv run ruff check .
```

### Formatear imports y corregir cosas simples

```bash
uv run ruff check . --fix
```

## Estructura importante

```text
.
├── .python-version
├── .venv/
├── pyproject.toml
├── uv.lock
├── data/
└── *.ipynb
```

## Fuente de verdad del proyecto

La configuración oficial del entorno vive en:

- `pyproject.toml`
- `uv.lock`

`requirements.txt` ya no forma parte del flujo recomendado.
