---
lab:
    title: 'Create an Azure Machine Learning workspace'
---

# Create and Explore an Azure Machine Learning Workspace

In this exercise, you will create and explore an Azure Machine Learning workspace.

## Create an Azure Machine Learning workspace

As its name suggests, a workspace is a centralized place to manage all of the Azure ML assets you need to work on a machine learning project.

1. In the [Azure portal](https://portal.azure.com), create a new **Machine Learning** resource, specifying the following settings:

    - **Subscription**: *Your Azure subscription*
    - **Resource group**: `rg-dp100-labs`
    - **Workspace name**: `mlw-dp100-labs`
    - **Region**: *Select the geographical region closest to you*
    - **Storage account**: *Note the default new storage account that will be created for your workspace*
    - **Key vault**: *Note the default new key vault that will be created for your workspace*
    - **Application insights**: *Note the default new application insights resource that will be created for your workspace*
    - **Container registry**: None (*one will be created automatically the first time you deploy a model to a container*)

    > **Note**: When you create an Azure Machine Learning workspace, you can use some advanced options to restrict access through a *private endpoint* and specify custom keys for data encryption. We won't use these options in this exercise - but you should be aware of them!

2. When the workspace and its associated resources have been created, view the workspace in the portal.

## Explore Azure Machine Learning studio

You can manage some workspace assets in the Azure portal, but for data scientists, this tool contains lots of irrelevant information and links that relate to managing general Azure resources. *Azure Machine Learning studio* provides a dedicated web portal for working with your workspace.

1. In the Azure portal blade for your Azure Machine Learning workspace, click the link to launch studio; or alternatively, in a new browser tab, open [https://ml.azure.com](https://ml.azure.com). If prompted, sign in using the Microsoft account you used in the previous task and select your Azure subscription and workspace.

    > **Tip** If you have multiple Azure subscriptions, you need to choose the Azure *directory* in which the subscription is defined; then choose the subscription, and finally choose the workspace.

2. View the Azure Machine Learning studio interface for your workspace - you can manage all of the assets in your workspace from here.
3. In Azure Machine Learning studio, toggle the &#9776; icon at the top left to show and hide the various pages in the interface. You can use these pages to manage the resources in your workspace.

## Create a compute instance

One of the benefits of Azure Machine Learning is the ability to create cloud-based compute on which you can run experiments and training scripts at scale.

1. In Azure Machine Learning studio, view the **Compute** page. This is where you'll manage compute resources for your data science activities. There are four kinds of compute resource you can create:
    - **Compute instances**: Development workstations that data scientists can use to work with data and models.
    - **Compute clusters**: Scalable clusters of virtual machines for on-demand processing of experiment code.
    - **Inference clusters**: Deployment targets for predictive services that use your trained models.
    - **Attached compute**: Links to other Azure compute resources, such as Virtual Machines or Azure Databricks clusters.

    For this exercise, you'll create a compute instance so you can run some code in your workspace.

2. On the **Compute instances** tab, add a new compute instance with the following settings. You'll use this as a workstation to run code in notebooks.
    - **Compute name**: *enter a unique name*
    - **Location**: *The same location as your workspace*
    - **Virtual machine type**: CPU
    - **Virtual machine size**: Standard_DS11_v2
    - **Total Available Quotas**: This shows dedicated cores available.
    - **Show advanced settings**: Note the following settings, but do not select them:
        - **Enable SSH access**: Unselected *(you can use this to enable direct access to the virtual machine using an SSH client)*
        - **Enable virtual network**: Unselected *(you would typically use this in an enterprise environment to enhance network security)*
        - **Assign to another user**: Unselected *(you can use this to assign a compute instance to a data scientist)*
        - **Provision with setup script**: Unselected *(you can use this to add a script to run on the remote instance when created)*

3. Wait for the compute instance to start and its state to change to **Running**.

> **Note**:
> Compute instances and clusters are based on standard Azure virtual machine images. For this exercise, the *Standard_DS11_v2* image is recommended to achieve the optimal balance of cost and performance. If your subscription has a quota that does not include this image, choose an alternative image; but bear in mind that a larger image may incur higher cost and a smaller image may not be sufficient to complete the tasks. Alternatively, ask your Azure administrator to extend your quota.

## Clone and run a notebook

A lot of data science and machine learning experimentation is performed by running code in *notebooks*. Your compute instance includes fully featured Python notebook environments (*Jupyter* and *JupyterLab*) that you can use for extensive work; but for basic notebook editing, you can use the built-in **Notebooks** page in Azure Machine learning studio.

1. In Azure Machine Learning studio, view the **Notebooks** page.
2. If a message describing new features is displayed, close it.
3. Select **Terminal** or the **Open terminal** icon to open a terminal, and ensure that its **Compute** is set to your compute instance and that the current path is the **/users/your-user-name** folder.
4. Enter the following command to clone a Git repository containing notebooks, data, and other files to your workspace:

    ```bash
    git clone https://github.com/MicrosoftLearning/mslearn-dp100 mslearn-dp100
    ```

5. When the command has completed, in the **Files** pane, click **&#8635;** to refresh the view and verify that a new **/users/*your-user-name*/mslearn-dp100** folder has been created. This folder contains multiple **.ipynb** notebook files.
6. Close the terminal pane, terminating the session.
7. In the **/users/*your-user-name*/mslearn-dp100** folder, open the **Get Started with Notebooks** notebook. Then read the notes and follow the instructions it contains.

> **Tip**: To run a code cell, select the cell you want to run and then use the **&#9655;** button to run it.

> **New to Python?** Use the [Python cheat sheet](cheat-sheets/dp100-cheat-sheet-python.pdf) to understand the code.

> **New to machine learning?** Use the [machine learning overview](cheat-sheets/dp100-cheat-sheet-machine-learning.pdf) to get a simplified overview of the machine learning process in Azure Machine Learning.

## Delete Azure resources

When you finish exploring Azure Machine Learning, you should delete the resources you've created to avoid unnecessary Azure costs.

1. Close the Azure Machine Learning Studio tab and return to the Azure portal.
1. In the Azure portal, on the **Home** page, select **Resource groups**.
1. Select the **rg-dp100-labs** resource group.
1. At the top of the **Overview** page for your resource group, select **Delete resource group**. 
1. Enter the resource group name to confirm you want to delete it, and select **Delete**.
