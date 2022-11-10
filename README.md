# abw-project

This is my project to ABW 2022 session

The main idea is to run a neural network to assimilate data in a numerical model.

The model is the Wave Watch III (WW3) model which simulates propagation of wind waves in the ocean. 
I have implemented the model in the North Pacific Ocean where The Ocean Cleanup is deploying floating systems to collect
plastic debris. The model is running in operational mode, delivering nowcast and forecast of wave height and wave period,
which are used by The Ocean Cleanup to plan the offshore activities in the Pacific Ocean.

I want to implement a data assimilation scheme in the model. NOAA, the National Oceanic and Atmospheric Administration, has several buoys
in the area, registering wave height and wave period. I want to assimilate NOAA observations in WW3 model.



