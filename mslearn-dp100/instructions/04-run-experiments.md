---
lab:
    title: 'Run experiments'
---
# Run Experiments

Experiments are at the core of a data scientist's work. In Azure Machine Learning, an *experiment* is used to run a script or a pipeline, and usually generates outputs and records metrics. In this exercise, you will use the Azure Machine Learning SDK to run Python code as experiments.

## Before you start

You'll need an [Azure subscription](https://azure.microsoft.com/free?azure-portal=true) in which you have administrative-level access.

## Provision an Azure Machine Learning workspace

An Azure Machine Learning *workspace* provides a central place for managing all resources and assets you need to train and manage your models. You can interact with the Azure Machine Learning workspace through the Studio, Python SDK, and Azure CLI. 

### Create the workspace 

To create the Azure Machine Learning workspace and a compute instance, you'll use the Azure CLI. All necessary commands are grouped in a Shell script for you to execute.

1. In a browser, open the Azure portal at [portal.azure.com](https://portal.azure.com/?azure-portal=true), signing in with your Microsoft account.
1. Select the \[>_] (*Cloud Shell*) button at the top of the page to the right of the search box. This opens a Cloud Shell pane at the bottom of the portal.
1. The first time you open the cloud shell, you will be asked to choose the type of shell you want to use (*Bash* or *PowerShell*). Select **Bash**.
1. If you are asked to create storage for your cloud shell, check that the correct subscription is specified and select **Create storage**. Wait for the storage to be created.
1. In the terminal, enter the following commands to clone this repo:

    ```bash
    rm -r mslearn-dp100 -f
    git clone https://github.com/MicrosoftLearning/mslearn-dp100 mslearn-dp100

1. After the repo has been cloned, enter the following commands to change to the folder for this lab and run the **setup.sh** script it contains:
    
    ```bash
    cd mslearn-dp100
    ./setup.sh
    ```

1. Wait for the script to complete - this typically takes around 5-10 minutes. 

## Clone the lab materials

You can use the **Notebooks** page in Azure Machine Learning studio to run notebooks. 

1. In [Azure Machine Learning studio](https://ml.azure.com), view the **Compute** page for your workspace; and on the **Compute Instances** tab, start your compute instance if it is not already running.
1. Select **Terminal** under **Applications** to open a terminal, and ensure that its **Compute** is set to your compute instance and that the current path is the **/users/your-user-name** folder.
1. Enter the following command to clone a Git repository containing notebooks, data, and other files to your workspace:

    ```bash
    git clone https://github.com/MicrosoftLearning/mslearn-dp100 mslearn-dp100
    ```
1. When the command has completed, in the **Notebooks** pane, click **&#8635;** to refresh the view and verify that a new **/users/*your-user-name*/mslearn-dp100** folder has been created. This folder contains multiple **.ipynb** notebook files.

> **Tip**: New to Python? Use the [Python cheat sheet](cheat-sheets/dp100-cheat-sheet-python.pdf) to understand the code.

## Verify the Azure Machine Learning SDK is installed

The Azure Machine Learning SDK is installed by default on your compute instance. Follow these steps to verify the installation.

1. In the **Notebooks** page, create a new **Terminal** if it's not open anymore. This will open a new tab with a command shell.
2. Enter the following command to verify that the Azure ML SDK is installed:

    ```bash
    pip show azureml-sdk
    ```

    Note the version of the SDK package installed.

3. The **azureml-sdk** SDK package provides the most important libraries needed to work with Azure Machine Learning> However, there are some additional packages that contain other useful libraries not included in the main SDK package. Use the following command to verify that the **azureml-widgets** package, which contains libraries for displaying Azure Machine Learning information in notebooks, is also installed:

    ```bash
    pip show azureml-widgets
    ```

4. Close the **Terminal** tab.

> **More Information**: For more details about installing the Azure ML SDK and its optional components, see the [Azure ML SDK Documentation](https://docs.microsoft.com/python/api/overview/azure/ml/install?view=azure-ml-py).

## Run experiments in a notebook

Experiments in Azure Machine Learning need to be initiated from some sort of *control* layer; often a script or program. In this exercise, you'll use a notebook to control experiments.

1. In the **Notebooks** page, browse to the **/users/*your-user-name*/mslearn-dp100** folder where you cloned the notebook repository, and open the **Run Experiments** notebook.
2. Then read the notes in the notebook, running each code cell in turn.

## Delete Azure resources

When you finish exploring Azure Machine Learning, you should delete the resources you've created to avoid unnecessary Azure costs.

1. Close the Azure Machine Learning Studio tab and return to the Azure portal.
1. In the Azure portal, on the **Home** page, select **Resource groups**.
1. Select the **rg-dp100-labs** resource group.
1. At the top of the **Overview** page for your resource group, select **Delete resource group**. 
1. Enter the resource group name to confirm you want to delete it, and select **Delete**.