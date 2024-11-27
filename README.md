# Bucket of Science

Open source data science things.

## Python virtual environment

### Setup

To setup your Python virtual environment, run:

```bash
make
```

### Activate

To activate the environment, run:

```bash
source .venv/bin/activate
```

### Deactivate

To deactivate the environment, run:

```bash
deactivate
```

### Install packages

To install the packages defined in the [requirements.txt](requirements.txt) file, run:

```bash
make install
```

To install a new package, [activate the environment](#activate-the-environment) and run:

```bash
pip install <package>
```

Then to overwrite the [requirements.txt](requirements.txt) file with your current environment, run:

```bash
rm requirements.txt
make requirements.txt
```

### Remove packages

To remove a package, [activate the environment](#activate-the-environment) and run:

```bash
pip uninstall <package>
```

Then to overwrite the [requirements.txt](requirements.txt) file with your current environment, run:

```bash
rm requirements.txt
make requirements.txt
```

### Reset packages

To reset the [requirements.txt](requirements.txt) file, run:

```bash
git reset HEAD requirements.txt
```

Then to reset the environment, run:

```bash
rm .venv
make .venv
```

## Jupyter Notebooks

When running Jupyter Notebooks, make sure to chose the kernel in the virtual environment created by the Makefile.
