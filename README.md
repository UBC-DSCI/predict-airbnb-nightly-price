# Predict Airbnb nightly price

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
