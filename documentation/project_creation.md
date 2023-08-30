# Steps to recreate the project
## PowerBI -  Data Extraction
## SQL - Data Loading
## Python - EDA & Pre-Cleaning

### Anaconda Virtual env
* Create a conda virtual env using the command
    ```bash
    conda create --prefix ./.my_env python=3.10.9 pip
    conda activate .my_env
    # install the kernal so the jupyter notebook uses the python packages installed in the virtual env and not the base env
    pip install ipykernel
    ipython kernel install --user --name=conda-myenv-kernel-new
    # conda comes preinstalled with jupyter notebook which is available in the base env
    jupyter notebook
    ```

* In the web browser that opens up goto the [python notebook](python/eda_employee_hiring.ipynb)
* Select the `conda-myenv-kernal-new` from the Kernal -> Change Kernal menu in the notebook
* Create environment variables in the file .env in the current folder
    ```.txt
    HOST_MYSQL=******
    USER=******
    PASSWORD=******
    DATABASE=******
    ```
* Install the python packages to import these environment variable in a python file
    ```bash
    pip install python-decouple==3.8 mysql.connector pandas numpy
    ```

## PowerBI - Transformation & Visualization