# 01-data-preprocessing

Curso/playground de práctica con Python, pandas, NumPy y notebooks de Jupyter.

## Stack y convenciones

- Python `3.12.3`
- Gestión de dependencias con `uv`
- Entorno virtual local en `.venv/`
- Dependencias declaradas en `pyproject.toml`
- Resolución reproducible en `uv.lock`
- VS Code configurado para usar `${workspaceFolder}/.venv/bin/python`

## Requisitos

- Tener `uv` instalado

## Setup inicial

Desde este directorio (`01-data-preprocessing/`):

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

En VS Code, usá el intérprete `.venv` del curso.

El workspace del curso está configurado para apuntar a:

```text
${workspaceFolder}/.venv/bin/python
```

Si abrís un notebook y te pide kernel, elegí el `.venv` detectado por VS Code.

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

### Auditar vulnerabilidades conocidas

```bash
uv run pip-audit --local
```

### Actualizar dependencias del lockfile

```bash
uv lock --upgrade
uv sync --dev
```

## Estructura importante

```text
.
├── .python-version
├── .venv/
├── .vscode/settings.json
├── pyproject.toml
├── uv.lock
├── data/
└── *.ipynb
```

## Fuente de verdad del proyecto

La configuración oficial del entorno vive en:

- `pyproject.toml`
- `uv.lock`

`requirements.txt` no forma parte del flujo recomendado.

## Flujo recomendado

### Diario

```bash
uv sync --dev
uv run jupyter lab
uv run ruff check .
```

### Mantenimiento

```bash
uv run pip-audit --local
uv lock --upgrade
uv sync --dev
```
