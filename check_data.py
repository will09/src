import os
import pandas as pd
import requests

PATH = r'/data/src/iris/'
r = requests.get('https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data')
with open(PATH + 'iris.data', 'w') as f:
  f.write(r.text)

os.chdir(PATH)

df = pd.read_csv(PATH + 'iris.data', names=['sepal length', 'sepal width', 'petal length', 'petal width', 'class'])

df.head()

df['sepal length']

df.ix[:3,:2]

df.ix[:3, [x for x in df.columns if 'width' in x]]

df['class'].unique()

df[df['class']=='Iris-virginica']

df.count()

df[df['class']=='Iris-virginica'].count()

virginica = df[df['class']=='Iris-virginica'].reset_index(drop=True)
virginica

df[(df['class']=='Iris-virginica')&(df['petal width']>2.2)]

df.describe()

df.describe(percentiles=[.20,.40,.80,.90,.95])

df.corr()

df.corr(method="spearman")
df.corr(method="kendall")
