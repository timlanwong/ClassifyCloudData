
CV_generic <- function(classifier, training_features, training_labels, num_folds_k, loss_function) {
  training_features$labels <- training_labels
  folds <- createFolds(training_features$labels, k = num_folds_k)
  for (j in 1:num_folds_k) {
    valIndexes <- folds[[j]]
    CVTrain <- training_features[valIndexes, ]
    CVTest <- training_features[-valIndexes, ]
    model <- train(CVTrain[, names(training_features) != "labels"], CVTrain$labels, method = classifier, number = num_folds_k, metric = "Accuracy")
    predicted <- predict(model, CVTest)
  }
  
  loss <- loss_function(as.numeric(CVTest$labels), predicted)
  return (loss)
}