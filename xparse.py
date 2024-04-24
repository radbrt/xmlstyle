#%%
import pandas as pd
#%%

df = pd.read_xml('data.xml', stylesheet='transform.xslt')

#%%

df.head()
# %%

import lxml

# Parse XML with stylesheet

with open('data.xml') as f:
    xml = f.read()

with open('transform.xslt') as f:
    xslt = f.read()

from lxml import etree

dom = etree.XML(xml)
xslt = etree.XML(xslt)
transform = etree.XSLT(xslt)
newdom = transform(dom)

print(str(newdom))
# %%
