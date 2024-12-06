# GCP Harmonization

This repo contains the analysis code for several related cognition harmonization projects.

Details about the GCP here and references

The projects are:

-   Harmonizing the cognition score (GCP) from the various modes of subject interview (in-person, telephone, video) done in SAGES-II to the GCP from SAGES-I

-   Harmonizing the cognitive battery of several additional studies (MADCO-PC & Intuit) to the SAGES GCP

The GCP is the latent trait from a single factor confirmatory factor analysis model done on a comprehensive cognitive battery.

*References*

-   Jones, R. N., Rudolph, J. L., Inouye, S. K., Yang, F. M., Fong, T. G., Milberg, W. P., Tommet, D., Metzger, E. D., Cupples, L. A., & Marcantonio, E. R. (2010). Development of a unidimensional composite measure of neuropsychological functioning in older cardiac surgery patients with good measurement precision. Journal of Clinical and Experimental Neuropsychology, 32(10), 1041-1049. https://doi.org/10.1080/13803391003662728 

-   Gross, A. L., Jones, R. N., Fong, T. G., Tommet, D., & Inouye, S. K. (2014). Calibration and validation of an innovative approach for estimating general cognitive performance. Neuroepidemiology, 42(3), 144-153. https://doi.org/10.1159/000357647 

-   Joffe, Y., Liu, J., Arias, F., Tommet, D., Fong, T. G., Schmitt, E. M., Travison, T., Kunicki, Z. J., Inouye, S. K., & Jones, R. N. (2024). Adaptation, Calibration, and Validation of a Cognitive Assessment Battery for Telephone and Video Administration. Journal of the American Geriatrics Society, in press. https://doi.org/DOI:10.1111/jgs.19275 


-   Duke harmonization paper (submitted)

## Repo organization

The analysis files are in the R directory. The created figures are saved in the Figures directory. The various reports are in the Reports directory. The saved data are in the data directory. The meta data about the items are in the metadata directory. The output from Mplus is in the mplus_output directory.

The analyese are split across several files. The numbered prefixes show the order in which the files are run, with the names being informative of what is done in each file. The are usually two files that have the same name but different file extensions - .R and .Rmd. The .R file is where the "actions" take place - data is recoded, a model is fit, etc - and at the end of the file the relevant R objects are saved. The .Rmd file is for reporting purposes. It will describe what happened in the .R file and create relevant tables/figures from the saved R objects.

There are several files with the "xxx" prefix. These are more stand alone type of analyses. Some of them create the tables/figures for the two manuscripts. Others do DIF or other supplemental analyses.

There are many pieces of information needed in order to do the harmonization. This includes things such as how should items be recoded, what items have already been harmonized, which items in a study still need to be harmonized, nice labels for the items, the factor scores that are the result of the harmonization, etc. To try to keep all of this organized, I tried putting as much of this as I could into a list. This has resulted in the list becoming very large and unwieldy. If you wish to use this code, you must take the time to orientate yourself to everything saved in the list.

## Pre-harmonization process

The test scores were discretized into 10 categories. The cutpoints for a test were established the first time the test was harmonized. Those cutpoints were then used any subsequent time the test was part of the cognitive battery.

## Harmonization process

The harmonization process used in these analyses is the nonequivalent group with anchor test (NEAT) design. In this design, the participant populations are assumed to be nonequivalent, but the tests administered to the groups are assumed to be equivalent. The first study provides the reference population.

The steps of this process are:

1.  Fit a single factor model to the first study

2.  Save the item parameters to an item bank

3.  For the second study, determine which tests are already in the item bank and which ones are new

4.  Fit a single factor model to the second study

    -   For the test already in the item bank, constrain their item parameters to those in the item bank

    -   For the new tests, freely estimate their item parameters and then add them to the item bank

5.  Repeat steps 3-4 for all remaining studies

6.  To get GCP scores, estimate a single factor model with all item parameters fixed to those from the item bank, and the latent factor mean and variance fixed to 0 and 1.

## The studies

These are the studies that were used in this analysis and the order in which they were harmonized.

| Study                | Description                                                                                               |
|----------------|--------------------------------------------------------|
| ADAMS                | A sub-study of HRS. Nationally representative of older adults.                                            |
| SAGES-I              | A study of post-op delirium of adults undergoing elective surgery                                         |
| SAGES-II (In-person) | A study of post-op delirium of adults undergoing elective surgery. Participants had in-person interviews. |
| SAGES-II (Telephone) | A study of post-op delirium of adults undergoing elective surgery. Participants had telephone interviews. |
| SAGES-II (IVideo)    | A study of post-op delirium of adults undergoing elective surgery. Participants had video interviews.     |
| MADCO-PC             | A study of post-op delirium of adults undergoing elective surgery.                                        |
| Intuit               | A study of post-op delirium of adults undergoing elective surgery.                                        |

## The tests

These are the tests that were administered across the studies. Tests that have a similar names but are listed multiple times, such as having (telephone) after their name, were found to have DIF between the modes of administration and were harmonized separately. MADCO-PC and Intuit used the same battery and were harmonized at the same time.

| Test                                    | ADAMS | SAGES-I | SAGES-II (In-person) | SAGES-II (Telephone) | SAGES-II (Video) | MADCO-PC/INTUIT |
|-----------|-----------|-----------|-----------|-----------|-----------|-----------|
| Trails A                                | x     | x       | x                    |                      | x                | x               |
| Digit Span Forward                      | x     | x       | x                    |                      | x                | x               |
| Digit Span Backward                     | x     | x       | x                    |                      |                  | x               |
| Symbol Digit Modalities                 | x     |         |                      |                      |                  |                 |
| VSAT                                    |       | x       | x                    |                      | x                |                 |
| Digit Symbol Substitution               |       | x       | x                    |                      | x                | x               |
| Digit Span Forwards (telephone)         |       |         |                      | x                    |                  |                 |
| Digit Span Backwards (telephone)        |       |         |                      | x                    |                  |                 |
| Digit Span Backwards (video)            |       |         |                      |                      | x                |                 |
| Trails B                                | x     | x       | x                    |                      | x                | x               |
| Oral Trails B                           |       |         |                      | x                    |                  |                 |
| CERAD Animal fluency                    | x     | x       | x                    | x                    | x                |                 |
| Boston Naming Test                      | x     | x       | x                    |                      | x                |                 |
| Letter fluency CFL                      | x     |         |                      |                      |                  |                 |
| Semantic fluency - supermarket          |       | x       | x                    | x                    | x                |                 |
| Letter fluency FAS                      |       | x       | x                    | x                    | x                |                 |
| Category switching                      |       |         |                      | x                    |                  |                 |
| CERAD sum of learning                   | x     |         |                      |                      |                  |                 |
| CERAD Delayed recall                    | x     |         |                      |                      |                  |                 |
| HVLT                                    |       | x       | x                    |                      | x                | x               |
| HVLT delayed recall percent             |       | x       | x                    |                      | x                | x               |
| HVLT (telephone)                        |       |         |                      | x                    |                  |                 |
| HVLT delayed recall percent (telephone) |       |         |                      | x                    |                  |                 |

\~end
