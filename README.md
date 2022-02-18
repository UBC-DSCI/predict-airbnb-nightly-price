# Predict Airbnb nightly price

Authors: Tomas Beuzen, Florencia D'Andrea, Mds Octocat and Tiffany Timbers

## About
Here we attempt to build a regression model, using the k-nearest neighbors algorithm, which uses characteristics of an Airbnb property and host (price, bedrooms, host response rate, etc.) to predict the nightly price of the property. This model could help prospective and exisiting hosts determine how to price their new or existing property. Our current model has a prediction error, as measured by root mean square prediction error (RMSPE), of about $70. This model, is useful, however it could use some improvement given that the nightly prices in our data set range from $0-$1000, and the median nightly price is $119.

The data we used to build our model contains all the active Airbnb listings for Vancouver, Canada from April 2021. The data was collected from <http://insideairbnb.com/>.

## Usage

We use a Docker container image to make the computational environment for this project reproducible.
To run Jupyter lab inside the `ubcdsci/predict-airbnb` Docker container:

- in terminal, navigate to the root of this project repository
- type the following in terminal:

  ```
  docker-compose up -d
  ```
- once the container has launched, users need to copy the URL that looks like `http://127.0.0.1:8888/lab?token=d9704724bf0267d3d9262698ffbb88123633f8c8f4b1a305` into their web browser to access Jupyter Lab
- when done working, type `docker-compose down` to remove the dangling container.

## License Information

This project is offered under 
the [Attribution 4.0 International (CC BY 4.0) License](https://creativecommons.org/licenses/by/4.0/).
The software provided in this project is offered under the [MIT open source license](https://opensource.org/licenses/MIT). See [the license file](LICENSE.md) for more information. 
