# PySpark DataFrame and Parquet Lab

This repository contains the sales CSV and a notebook for the DataFrame API and
Parquet assignment. Docker runs Jupyter and PySpark together in local mode; no
separate Spark cluster or local Python setup is needed.

## Start the notebook

### If you are using Ubuntu in WSL

Install and start Docker Desktop on Windows, then open **Settings → Resources →
WSL Integration** and enable integration for the Ubuntu distribution you use.
After applying the setting, reopen your WSL terminal and verify Docker Compose
is available:

```bash
docker --version
docker compose version
```

If either command is still not found, restart WSL from PowerShell with
`wsl --shutdown`, start Docker Desktop, and reopen Ubuntu.

### Start Jupyter

From the repository root, run:

```bash
docker compose up --build
```

Open [http://localhost:8888](http://localhost:8888). No token is required.

Open `notebooks/pyspark_dataframe_parquet_lab.ipynb` in JupyterLab. The
container mounts this repository at `/home/jovyan/work`, so the notebook reads
the bundled CSV from `data/` and writes Parquet files to `output/` on your
machine. The notebook uses the explicit schema and Spark `local[*]` mode.

Jupyter token authentication is disabled for local use. The port is bound to
localhost only; do not change the port binding to expose this unauthenticated
notebook to your network.

Stop the container with `Ctrl+C`, or run `docker compose down` in another
terminal.