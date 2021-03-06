# Predict Airbnb nightly price

Authors: Tomas Beuzen, Florencia D'Andrea, Mds Octocat and Tiffany Timbers

## About
Here we attempt to build a regression model, using the k-nearest neighbors algorithm, which uses characteristics of an Airbnb property and host (price, bedrooms, host response rate, etc.) to predict the nightly price of the property. This model could help prospective and exisiting hosts determine how to price their new or existing property. Our current model has a prediction error, as measured by root mean square prediction error (RMSPE), of about $70. This model, is useful, however it could use some improvement given that the nightly prices in our data set range from $0-$1000, and the median nightly price is $119.

The data we used to build our model contains all the active Airbnb listings for Vancouver, Canada from April 2021. The data was collected from <http://insideairbnb.com/>.

## Report

The analysis report can be found [here](notebooks/airbnb_analysis.ipynb).

## Usage

We use a Docker container image to make the computational environment for this project reproducible.
There are two ways we document how to do this. The first, which is ideal for those wishing to reproduce our results,
is how to reproducibly execute the project non-interactively. The second, which is ideal for project developers and collaborators,
is how to interactively run, edit and explore the project in Jupyter Lab.

### 1. How to reproducibly execute the project non-interactively

First, clone this GitHub repository and in in the terminal, navigate to the root of this project.
Next run the following in your terminal:

```
docker run --rm \
  -p 8888:8888 \
  -v /$(pwd):/opt/notebooks/predict-airbnb-nightly-price \
  ubcdsci/predict-airbnb:v0.1.0 \
  jupyter nbconvert --to notebook --execute predict-airbnb-nightly-price/notebooks/airbnb_analysis.ipynb
```

### 2. How to interactively run and explore the project in Jupyter Lab
To interactively run Jupyter lab inside the `ubcdsci/predict-airbnb` Docker container (which is useful for project developers and collaborators):

- in terminal, navigate to the root of this project repository
- type the following in terminal:

  ```
  docker-compose up -d
  ```
- once the container has launched, users need to copy the URL that looks like `http://127.0.0.1:8888/lab?token=d9704724bf0267d3d9262698ffbb88123633f8c8f4b1a305` into their web browser to access Jupyter Lab
- Next, in Jupyter lab, navigate to, and open `notebooks/airbnb_analysis.ipynb` and click **Kernel** > **Restart and runall** to run the entire analysis.
- when done working, type `docker-compose down` to remove the dangling container.

## Dependencies:

R version 4.1.1, Jupyter and R packages listed in [`environment.yml`](environment.yml).

## License Information

This project is offered under 
the [Attribution 4.0 International (CC BY 4.0) License](https://creativecommons.org/licenses/by/4.0/).
The software provided in this project is offered under the [MIT open source license](https://opensource.org/licenses/MIT). See [the license file](LICENSE.md) for more information. 
