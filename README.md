# abw-project

This is the github of my project to the ABW 2022 session.


The objective of the project is to use a neural network that can be trained on an existing numerical wave model 
to reproduce the wave spectra observed at scattered locations to a larger domain.

The existing numerical model is implemented in a limitted area in the North Pacific Ocean where it runs daily, 
computing nowcast and forecast of wave spectra and wave high.

The kind of Neural Network that I want to use is Physics-informed neural network (PINN), a type of universal function 
approximators that can embed the knowledge of any physical laws that govern a given data-set in the learning process, 
and can be described by partial differential equations (PDEs) (Raissi et al., 2017).

The numerical model that is already implemented use a PDE which describes the physical law governing 
the space-time evolution of wave spectra.  The model solves the PDE in a limited two-dimensional numerical domain. 

To compute the solution in this domain, the model needs a Initial Condition (IC), Open Bounday Conditions (OBCs) and a 
forcing agent (the physical agent that creates the waves, in our case, the wind). Having as input the wind data, and wave 
spectra in the open boundaries, the model is able to compute space-time evolution of wave spectra in the domain.

I want to use a neural network that can be trained on the existing numerical model to reproduce the wave spectra observed 
at scattered locations to a larger domain.  The neural network will be a surrogate of the numerical model that it was trained on.  

The observations of wave spectra are done operationally in NOAA buoys, in several locations in the North Pacific Ocean, and are 
available for free download in the NOAA website (https://www.ndbc.noaa.gov/).

