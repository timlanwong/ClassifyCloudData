### Stat154Proj2

In this README file we will explain in detail how to run the code that in the appendix that gave birth to this paper. The main code file is located in the file called "FinalProjectCode.Rmd". We will explain how it was organized and written in this README

The code is organized according to the question labels in the report and separated by code chunks. The figures and tables generated in R that were used in the report have labels on the code chunk title such as (Figure 1-2). Each code chunk has titles that begin with “###” here is an example of a code chunk title:

“###Question 2c) Choosing predictions Visual way (Figure 6)“

Question 1
Our first few code chunks in the .Rmd file contains all the relevant EDA and reading the data in. These are labelled with titles such as “Reading Data in”, “Beautiful Maps”, and “EDA”. 

Question 2
After this we started question 2 where the get_split function was our main splitting based on the blocks. We used the cut() function divide it up evenly and we set a seed to be 7 so it can be reproducible in terms of the sampling procedure. The second method replicates much of the get_split function except it was just cutting one variable – NDAI. After this each question 2b and 2c were just simple ways to get the Validation and Test accuracies using the trivial classifiers and measuring predictor importance using gg_map and the step() function. Lastly in 2d) the CV generic function is our generic function we wrote which will also be separately attached. 

Question 3
Question 3 was the main part that really required computationally expensive parts. We used the train() package mainly for all the model building with 5 folds. Each code chunk refers to one model building in the following order: KNN, Logistic, SVM, and Tree. Each of these code chunks have a similar pattern where we train the model for a 5-fold CV and then using the trained model to see our accuracy rate on the held test set. We put all these in a neat matrix table in the code chunk labelled: “###Question 3) Final Result (Table 2)” After this we conclude question 3 with the ROC curves that were built mainly using the library(ROCR). 

Question 4
The diagnostics needed three main parts from the code. The first part being plotting our KNN cross validation results and see which K was the best. This was a one-line code just saying plot(knn). The next code chunk is EXTREMELY computationally expensive where we changed the seed for the five different runs to check whether our parameter was robust and our prediction test accuracy was actually stable. This was to create the result in Table 3 of our report and it needed to run 5 different KNN training CV models on 5 different randomly selected splits of the train and test data. Therefore, it is extremely expensive and not recommended to be rerun again. Lastly we needed to visualize where it was being misclassified and that was done best in the last code chunk with ggplot().
 
