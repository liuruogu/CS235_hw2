%CS235 hw2
%Liuqing Yang, Ruogu Liu
%Dataset from http://mlr.cs.umass.edu/ml/datasets/Iris

%shuffle the data

%M = dlmread('iris.txt')
%shuffledArray = M(randperm(size(M,1)),:)

%class labels of training data 
%G = shuffledArray(1:100,1)

%training data 
%B = shuffledArray(1:100,:)

%sample data 
%A = shuffledArray(101:150,:)

%sample matrix 
A = dlmread('sample.txt')
sample = A(:,2:5)

%Training matrix 
B = dlmread('training.txt')
training = B(:,2:5)

%Group matrix
G = dlmread('classOFt.txt')

%class of the sample 
classOfsample = A(:,1)

% Run the KNN classifer, and predict the class labels for the sample data. 
class = knnclassify(sample, training, G)

% The accuracy of the sample data
for i = 1:length(classOfsample)
    if(class(i)==classOfsample(i))
    equal = equal + 1
    end    
end

accuarcy = equal/i
