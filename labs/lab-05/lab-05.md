# Lab 05

## Objectives

- Learn to use a data exploration / mining tool 
- See an example of data flow programming
- See the types of processes that data might go through in a classification workflow
- Evaluate different classification methods
- Gain familiarity with linear classificationmethods (Logistic Regression, SVM, Decision Trees, KNN) 

## Overview

Today I want to play with some interactive software for exploring (smallish) datasets. 
We will be using _Orange_, which is python-based. There are many similar tools (Weka, etc.) which you may also wish to explore.

## Installing Orange3 

You will create a new python environment to run the `Orange` progam in. 

```bash
conda create -n oranger python=3.5 pyqt=4 orange3 
```

> *NOTE:* When I tried this the version in conda was missing some features (e.g. no neural networks). This should not be a problem for today's lab. 
> It looks like work on the NN widget is going on in a seprate branch of orange3 that you would need to build from source.


Then activate the environment

```bash
source activate orange
```

And run the `orange-canvas` graphical user interface (GUI) program

```bash
python -m Orange.canvas
```

You should see a welcome screen ![Welcome Screen](https://orange.biolab.si/static/homepage/getting_started/welcome-screen.png)

Go ahead and close that immediately; we are interested in the main screen.

For this tutorial, I want to follow along with these videos:

- [Open the Iris Data](https://www.youtube.com/watch?v=HXjnDIgGDuI&list=PLmNPvQr9Tf-ZSDLwOzxpvY-HrE0yv-8Fy&index=1)
- [Visualize the Distribution of the Data](https://www.youtube.com/watch?v=lb-x36xqJ-E&index=2&list=PLmNPvQr9Tf-ZSDLwOzxpvY-HrE0yv-8Fy)
- [Adjusting the Input and Outputs of  Widgets](https://www.youtube.com/watch?v=2xS6QjnG714&index=3&list=PLmNPvQr9Tf-ZSDLwOzxpvY-HrE0yv-8Fy)
- [Loading Data](https://www.youtube.com/watch?v=MHcGdQeYCMg&index=4&list=PLmNPvQr9Tf-ZSDLwOzxpvY-HrE0yv-8Fy)
- [Clustering Data](https://www.youtube.com/watch?v=dJ5z2SRwzgs&list=PLmNPvQr9Tf-ZSDLwOzxpvY-HrE0yv-8Fy&index=5)
- [Make Predictions](https://www.youtube.com/watch?v=D6zd7m2aYqU&list=PLmNPvQr9Tf-ZSDLwOzxpvY-HrE0yv-8Fy&index=6)
   - Her training data is at this url: [training data](https://raw.githubusercontent.com/ajdapretnar/datasets/master/data/fruits-and-vegetables-train.tab)
   - Her test data is at this url: [test data](https://raw.githubusercontent.com/ajdapretnar/datasets/master/data/fruits-and-vegetables-test.tab)
   > *HINT:* In order to keep the widget's organized, you can rename them by pressing `F2`
- [Evaluate Different Predictions](https://www.youtube.com/watch?v=pYXOF0jziGM&list=PLmNPvQr9Tf-ZSDLwOzxpvY-HrE0yv-8Fy&index=7)
   



A this point, I want you to download `train.csv` from the Kaggle `Titanic` competition,
 or open the `titanic.tab` file that ships with orange (it has fewer features).  Look at the `continuize` widget for an example of how to model the combination of discrete and continuous features
 
 ![Continuize Widget](orange-continuize.png)
 
Explore the data, and discuss how you might predict who survives the titanic.

## Building Orange from Source
If you want neural nets, you need to build orange from source.
The instructions are [here](https://github.com/biolab/orange3). 
Use `git checkout nn-widget` first to see if you can make the neural nets work. 