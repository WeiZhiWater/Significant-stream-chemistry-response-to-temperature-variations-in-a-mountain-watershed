## Significant stream chemistry response to temperature variations in a high-elevation mountain watershed

 **Zhi, W.**, Williams, K.H., Carroll, R.W.H. et al. (2020) Significant stream chemistry response to temperature variations in a high-elevation mountain watershed. *Communications & Earth Environment* 1, 43. [doi: 10.1038/s43247-020-00039-w](https://doi.org/10.1038/s43247-020-00039-w)

## Abstract 
- High-elevation mountain regions, central to global freshwater supply, are experiencing more rapid warming than low-elevation locations. High-elevation streams are therefore potentially critical indicators for earth system and water chemistry response to warming. 
- Here we present concerted hydroclimatic and biogeochemical data from Coal Creek, Colorado in the central Rocky Mountains at elevations of 2700 to 3700 m, where air temperatures have increased by about 2 °C since 1980. 
- We analyzed water chemistry every other day from 2016 to 2019. Water chemistry data indicate distinct responses of different solutes to inter-annual hydroclimatic variations. Specifically, the concentrations of solutes from rock weathering are stable inter-annually. Solutes that are active in soils, including dissolved organic carbon, vary dramatically, with double to triple peak concentrations occurring during snowmelt and in warm years. 
- We advocate for consistent and persistent monitoring of high elevation streams to record early glimpse of earth surface response to warming.

## Figures 
- Climate and hydrological changes in the past 4 decades 
- Stream chemistry response in recent years
- Bimonthly concentrations and their relative changes (%) compared to long-term records

### Climate and hydrological changes
Data from the local Snow Telemetry (SNOTEL) station from 1981 to 2019 indicate the annual average minimum and maximum daily temperature have increased by ~1.6 and 2 °C, respectively. The mean and maximum discharge were highly responsive to Snow Water Equivalent (SWE). Declines in SWE since 1981 have occurred (25 mm/decade, or 6% of average) but are not statistically significant (p = 0.20). Snow fraction (snowfall to total annual precipitation) appear to be declining on the order of ~1% per year. The temperature increase during 2015–2018, superimposed upon an already accelerated warming trend, likely exacerbated drought conditions in 2018.

<p align="center">
  <img src="/figures/Figure 1.jpg" alt="Climate record in the past 4 decades" width="600">
</p>

### Stream chemistry response
The most marked changes were observed for dissolved organic carbon (DOC). It remained within the range of the long-term record of 1–5 mg/L in 2016, escalated to as high as 15–20 mg/L in the warm years 2017 and 2018, and fell within the long-term range again in the cold year 2019. Other solutes (e.g., Fe, Al) that are known to be impacted by soil biogeochemistry and elemental cycling also increased. Total nitrogen (TN) concentration remained within its historical range of 0.1–0.4 mg/L, somewhat surprising considering active nitrogen cycling in shallow soils. Other nutrients, including P, PO4, and NO3, however, did vary from year to year.

<p align="center">
  <img src="/figures/StreamChemistryResponse.png" alt="Stream chemistry response" width="600">
</p>

### Bimonthly averages indicate significant changes under post-snowmelt, dry conditions
Additional analysis for concentrations averaged in every 2 months shows that concentration peaks generally occurred during snowmelt, but the percentage increase maximized during post-snowmelt, the low flow period from August to November. Pb concentrations increased in 2016 and decreased to levels lower than the historical records, especially during snowmelt in 2017 and 2018. Its pre- and post-snowmelt concentrations however were still higher than long-term concentrations.

<p align="center">
  <img src="/figures/concentrationChange.png" alt="Stream chemistry response" width="600">
</p>


## Data availability
The daily discharge data (site ID 09111250) and long-term stream chemistry (site ID 385224106590100) is available from the USGS website (https://waterdata.usgs.gov/co/nwis/). The high-frequency stream chemistry data is available at data portal for East River watershed in Colorado, managed by Lawrence Berkeley National Laboratory (https://watershed.lbl.gov/). 

## Machine learning extrapolation
To infer the missing USGS dicharge records in 2000 - 2006, we used the machine learning statistical approach Gaussian Process Regression (GPR). We trained a discharge model (Matlab R2018a, Machine Learning Regression Toolbox, 5-fold cross-validation) using the odd years of climate and discharge data from 2006 – 2019, and tested the model using even year data. Specifically, the model uses time series of precipitation, radiation, temperature, pressure, wind speed, SNOTEL data, and discharge data as inputs for training, and output missing discharge data in 2000 – 2006. The Nash–Sutcliffe Efficiency (NSE) values for the training and testing were 0.9 and 0.7, respectively, both are higher than the NSE satisfactory criteria of 0.5 and therefore are satisfactory. The model code and input data are deposited in the **Supporting data** folder.

