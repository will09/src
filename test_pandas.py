import os
import pandas as pd
import requests

PATH = r'/data/src/iris/'
r = requests.get('https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data')
with open(PATH + 'iris.data', 'w') as f:
  f.write(r.text)

os.chdir(PATH)

df = pd.read_csv(PATH + 'iris.data', names=['sepal length', 'sepal width', 'petal length', 'petal width', 'class'])

print (df.head())
print ("------------------------")
print (df['sepal length'])
print ("------------------------")
print (df.ix[:3, :2])
print ("------------------------")
print (df.ix[:3, [x for x in df.columns if 'width' in x]])
print ("------------------------")
print (df['class'].unique())
print ("------------------------")
print (df[df['class']=='Iris-virginica'])
print ("------------------------")
print (df.count())
print (df[df['class']=='Iris-virginica'].count())
print ("------------------------")

virginica = df[df['class']=='Iris-virginica'].reset_index(drop=True)
print (virginica)
print ("------------------------")
print (df[(df['class']=='Iris-virginica')&(df['petal width']>2.2)])
print ("------------------------")
print (df.describe())
print ("------------------------")
print (df.describe(percentiles=[.20, .40, .80, .90, .95]))
print ("------------------------")
print (df.corr())
print ("------------------------")
print (df.corr(method='spearman'))
print ("------------------------")
print (df.corr(method='kendall'))





