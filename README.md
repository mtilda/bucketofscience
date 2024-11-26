# Data Science Tools

Open source tools for data scientists.

## Python virtual environment

To setup your Python environment, run:

```bash
make
```

### Activate the environment

To activate the environment, run:

```bash
source .venv/bin/activate
```

### Deactivate the environment

To deactivate the environment, run:

```bash
deactivate
```

### Install packages

To install a new package, run:

```bash
pip install <package>
```

Then to overwrite the requirements.txt file with your current environment, run:

```bash
make -B requirements.txt
```

### Remove packages

To remove a package, run:

```bash
pip uninstall <package>
```

Then to overwrite the requirements.txt file with your current environment, run:

```bash
make -B requirements.txt
```

### Reset packages

To reset the requirements.txt file, run:

```bash
git reset HEAD requirements.txt
```

Then to reset the environment, run:

```bash
make -B .venv
```

## Jupyter Notebooks

When running Jupyter Notebooks, make sure to chose the kernel in the virtual environment created by the Makefile.
