---
layout: docs
header: true
seotitle: Spark NLP for Healthcare | John Snow Labs
title: Spark NLP for Healthcare Installation
permalink: /docs/en/licensed_install
key: docs-licensed-install
modify_date: "2021-03-09"
show_nav: true
sidebar:
    nav: sparknlp-healthcare
---

## Install via Docker

We have prepared a docker image that contains all the required libraries for installing and running Spark NLP for Healthcare. However, it does not contain the library itself, as it is licensed, and requires installation credentials.

Make sure you have valid license for Spark NLP for Healthcare, and follow the instructions below:


### Instructions

- Run the following commands to download the docker-compose.yml and the sparknlp_keys.txt files on your local machine:
```bash
curl -o docker-compose.yaml https://github.com/JohnSnowLabs/spark-nlp-workshop/blob/513a4d682f11abc33b2e26ef8a9d72ad52a7b4f0/jupyter/docker_image_nlp_hc/docker-compose.yaml
curl -o sparknlp_keys.txt https://raw.githubusercontent.com/JohnSnowLabs/spark-nlp-workshop/master/jupyter/docker_image_nlp_hc/sparknlp_keys.txt
```
- Download your license key in json format from my.johnsnowlabs.com 
- Populate License keys in sparknlp_keys.txt.
- Run the following command to run the container in detached mode:
```bash
 docker-compose up -d
 ``` 
- By default, the jupyter notebook would run at port 8888 - you can access the notebook by typing localhost:8888 in your browser.


### Troubleshooting

- Make sure docker is installed on your system.
- If you face any error while importing the lib inside jupyter, make sure all the credentials are correct in the key files and restart the service again.
- If the default port 8888 is already occupied by another process, please change the mapping.
- You can change/adjust volume and port mapping in the docker-compose.yml file.

## Install locally on Python

You can install the Spark NLP for Healthcare package by using:

```bash
pip install -q spark-nlp-jsl==${version} --extra-index-url https://pypi.johnsnowlabs.com/${secret.code} --upgrade
```

`{version}` is the version part of the `{secret.code}` (`{secret.code}.split('-')[0]`) (i.e. `2.6.0`)

The `{secret.code}` is a secret code that is only available to users with valid/trial license. If you did not receive it yet, please contact us at <a href="mailto:info@johnsnowlabs.com">info@johnsnowlabs.com</a>.


</div><div class="h3-box" markdown="1">

### Setup AWS-CLI Credentials for licensed pretrained models

Starting from Spark NLP for Healthcare version 2.4.2, you need to first setup your AWS credentials to be able to access the private repository for John Snow Labs Pretrained Models.
You can do this setup via Amazon AWS Command Line Interface (AWSCLI).

Instructions about how to install AWSCLI are available at:

<a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html">Installing the AWS CLI</a>

Make sure you configure your credentials with aws configure following the instructions at:

<a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html">Configuring the AWS CLI</a>

Please substitute the `ACCESS_KEY` and `SECRET_KEY` with the credentials you have received from your Customer Owner (CO). If you need your credentials contact us at
<a href="mailto:info@johnsnowlabs.com">info@johnsnowlabs.com</a>.

</div>

### Start Spark NLP for Healthcare Session from Python

The following will initialize the spark session in case you have run the jupyter notebook directly. If you have started the notebook using
pyspark this cell is just ignored.

Initializing the spark session takes some seconds (usually less than 1 minute) as the jar from the server needs to be loaded.

The `{secret-code}` is a secret  string you should have received from your Customer Owner (CO). If you have
not received them, please contact us at <a href="mailto:info@johnsnowlabs.com">info@johnsnowlabs.com</a>.

You can either use our convenience function to start your Spark Session that will use standard configuration arguments:

```python
import sparknlp_jsl
spark = sparknlp_jsl.start("{secret.code}")
```

Or use the SparkSession module for more flexibility:
```python
from pyspark.sql import SparkSession

spark = SparkSession.builder \
    .appName("Spark NLP Enterprise") \
    .master("local[*]") \
    .config("spark.driver.memory","16") \
    .config("spark.driver.maxResultSize", "0") \
    .config("spark.kryoserializer.buffer.max", "1000M")\
    .config("spark.jars.packages", "com.johnsnowlabs.nlp:spark-nlp_2.11:2.7.6") \
    .config("spark.jars", "https://pypi.johnsnowlabs.com/${secret.code}/spark-nlp-jsl-${version}.jar") \
    .getOrCreate()
```

If you want to download the source files (jar and whl files) locally, you can follow the instructions <a href="https://github.com/JohnSnowLabs/spark-nlp-workshop/blob/master/jupyter/SparkNLP_offline_installation.ipynb">here</a>.


### Spark NLP for Healthcare Cheat Sheet

```bash
# Install Spark NLP from PyPI
pip install spark-nlp==3.2.3

#install Spark NLP helathcare

pip install spark-nlp-jsl==${version} --extra-index-url https://pypi.johnsnowlabs.com/${secret.code} --upgrade

# Load Spark NLP with Spark Shell
spark-shell --packages com.johnsnowlabs.nlp:spark-nlp_2.12:3.2.3 --jars spark-nlp-jsl-${version}.jar

# Load Spark NLP with PySpark
pyspark --packages com.johnsnowlabs.nlp:spark-nlp_2.12:3.2.3  --jars spark-nlp-jsl-${version}.jar

# Load Spark NLP with Spark Submit
spark-submit --packages com.johnsnowlabs.nlp:spark-nlp_2.12:3.2.3 --jars spark-nlp-jsl-${version}.jar
```

## Install on Databricks

1. Create a cluster if you don't have one already
2. On a new cluster or existing one you need to add the following to the `Advanced Options -> Spark` tab, in `Spark.Config` box:

    ```bash
    spark.kryoserializer.buffer.max 1000M
    spark.serializer org.apache.spark.serializer.KryoSerializer
    spark.driver.extraJavaOptions -Dspark.jsl.settings.pretrained.credentials.secret_access_key=xxx -Dspark.jsl.settings.pretrained.credentials.access_key_id=yyy

    ```
      -  Please add the following to the `Advanced Options -> Spark` tab, in `Environment Variables` box:

    ```bash
    SPARK_NLP_LICENSE=zzz
    ```

      -   (OPTIONAL) If the environment variables used to setup the AWS Access/Secret keys are conflicting with the credential provider chain in Databricks, you may not be able to access to other s3 buckets. To access both JSL repos with JSL AWS keys as well as your own s3 bucket with your own AWS keys), you need to use the following script, copy that to dbfs folder, then go to the Databricks console (init scripts menu) to add the init script for your cluster as follows:

    ```bash
    %scala
    val script = """
    #!/bin/bash

    echo "******** Inject Spark NLP AWS Profile Credentials ******** "

    mkdir ~/.aws/

    cat << EOF > ~/.aws/credentials
    [spark_nlp]
    aws_access_key_id=<YOUR_AWS_ACCESS_KEY>
    aws_secret_access_key=<YOUR_AWS_SECRET_KEY>
    EOF

    echo "******** End Inject Spark NLP AWS Profile Credentials  ******** "

    """
    ```

3. In `Libraries` tab inside your cluster you need to follow these steps:
 - Install New -> PyPI -> `spark-nlp` -> Install
 - Install New -> Maven -> Coordinates -> `com.johnsnowlabs.nlp:spark-nlp_2.12:${version}` -> Install
 - Please add following jars:
        - Install New -> Python Whl -> upload `https://pypi.johnsnowlabs.com/${secret.code}/spark-nlp-jsl/spark_nlp_jsl-${version}-py3-none-any.whl`
        - Install New -> Jar -> upload `https://pypi.johnsnowlabs.com/${secret.code}/spark-nlp-jsl-${version}.jar`
4. Now you can attach your notebook to the cluster and use Spark NLP!



## Use on Google Colab Notebook

Google Colab is perhaps the easiest way to get started with spark-nlp. It requires no installation or setup other than having a Google account.

Run the following code in Google Colab notebook and start using spark-nlp right away.

The first thing that you need is to create the json file with the credentials and the configuration in your local system.

```json
{
  "PUBLIC_VERSION": "3.2.3",
  "JSL_VERSION": "{version}",
  "SECRET": "{version}-{secret.code}",
  "SPARK_NLP_LICENSE": "xxxxx",
  "AWS_ACCESS_KEY_ID": "yyyy",
  "AWS_SECRET_ACCESS_KEY": "zzzz"
}
```

Then you need to write that piece of code to load the credentials that you created before.

```python

import json

from google.colab import files

license_keys = files.upload()

with open(list(license_keys.keys())[0]) as f:
    license_keys = json.load(f)
```

```sh
# This is only to setup PySpark and Spark NLP on Colab
!wget https://raw.githubusercontent.com/JohnSnowLabs/spark-nlp-workshop/master/jsl_colab_setup.sh
```

This script comes with the two options to define `pyspark`,`spark-nlp` and `spark-nlp-jsl` versions via options:

```sh
# -p is for pyspark
# -s is for spark-nlp
# by default they are set to the latest
!bash jsl_colab_setup.sh
```

[Spark NLP quick start on Google Colab](https://github.com/JohnSnowLabs/spark-nlp-workshop/blob/master/tutorials/Certification_Trainings/Healthcare/1.Clinical_Named_Entity_Recognition_Model.ipynb) is a live demo on Google Colab that performs named entity recognitions for HealthCare.




## Install on GCP Dataproc

1. Create a cluster if you don't have one already as follows.

At gcloud shell:

```bash
gcloud services enable dataproc.googleapis.com \
  compute.googleapis.com \
  storage-component.googleapis.com \
  bigquery.googleapis.com \
  bigquerystorage.googleapis.com
```

```bash
REGION=<region>
```

```bash
BUCKET_NAME=<bucket_name>
gsutil mb -c standard -l ${REGION} gs://${BUCKET_NAME}
```

```bash
REGION=<region>
ZONE=<zone>
CLUSTER_NAME=<cluster_name>
BUCKET_NAME=<bucket_name>
```

You can set image-version, master-machine-type, worker-machine-type,
master-boot-disk-size, worker-boot-disk-size, num-workers as your needs.
If you use the previous image-version from 2.0, you should also add ANACONDA to optional-components.
And, you should enable gateway.
As noticed below, you should explicitly write JSL_SECRET and JSL_VERSION at metadata param inside the quotes.
This will start the pip installation using the wheel file of Licensed SparkNLP!


```bash
gcloud dataproc clusters create ${CLUSTER_NAME} \
  --region=${REGION} \
  --network=${NETWORK} \
  --zone=${ZONE} \
  --image-version=2.0 \
  --master-machine-type=n1-standard-4 \
  --worker-machine-type=n1-standard-2 \
  --master-boot-disk-size=128GB \
  --worker-boot-disk-size=128GB \
  --num-workers=2 \
  --bucket=${BUCKET_NAME} \
  --optional-components=JUPYTER \
  --enable-component-gateway \
  --metadata 'PIP_PACKAGES=google-cloud-bigquery google-cloud-storage spark-nlp-display
  https://s3.eu-west-1.amazonaws.com/pypi.johnsnowlabs.com/JSL_SECRET/spark-nlp-jsl/spark_nlp_jsl-JSL_VERSION-py3-none-any.whl' \
  --initialization-actions gs://goog-dataproc-initialization-actions-${REGION}/python/pip-install.sh
```

2. On an existing one, you need to install spark-nlp and spark-nlp-display packages from PyPI.

3. Now, you can attach your notebook to the cluster and use Spark NLP via following the instructions.
The key part of this usage is how to start SparkNLP sessions using Apache Hadoop YARN cluster manager.

3.1. Read license file from the notebook using GCS.

3.2. Set the right path of the Java Home Path.

3.3. Use the start function to start the SparkNLP JSL version such as follows:

```Python
def start(secret):
    builder = SparkSession.builder \
        .appName("Spark NLP Licensed") \
        .config("spark.serializer", "org.apache.spark.serializer.KryoSerializer") \
        .config("spark.kryoserializer.buffer.max", "2000M") \
        .config("spark.jars.packages", "com.johnsnowlabs.nlp:spark-nlp_2.12:"+version) \
        .config("spark.jars", "https://pypi.johnsnowlabs.com/"+secret+"/spark-nlp-jsl-"+jsl_version+".jar")

    return builder.getOrCreate()

spark = start(SECRET)
```

As you see, we did not set `.master('local[*]')` explicitly to let YARN manage the cluster.
Or you can set `.master('yarn')`.