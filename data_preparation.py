import os
import pandas as pd
import requests

PATH = r'/data/src/iris/'
# r = requests.get('https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data')
# with open(PATH + 'iris.data', 'w') as f:
#   f.write(r.text)

os.chdir(PATH)

df = pd.read_csv(PATH + 'iris.data', names=['sepal length', 'sepal width', 'petal length', 'petal width', 'class'])

# Map
df['class'] = df['class'].map({'Iris-setosa':'SET', 'Iris-virginica': 'VIR', 'Iris-versicolor': 'VER'})
df

# Apply
df['wide petal'] = df['petal width'].apply(lambda v: 1 if v >= 1.3 else 0)
df

df['petal area'] = df.apply(lambda r: r['petal length'] * r['petal width'], axis=1)
df

# Applymap
import numpy as np
df.applymap(lambda v: np.log(v) if isinstance(v, float) else v)

# Groupby
df.groupby('class').mean()

df.groupby('class').describe()

df.groupby('petal width')['class'].unique().to_frame()

df.groupby('class')['petal width']\
.agg({'delta': lambda x: x.max() - x.min(), 'max': np.max, 'min': np.min})


