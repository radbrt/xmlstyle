# XML Stylesheets (XSLT)

This is just a little project to restructure an xml file so we can read it into a pandas data frame, using the `stylesheets` argument to pandas' `read_xml`.

Files:

- `data.xml`: The actual xml data, in a simple but nested structure.
- `transform.xslt`: The XML Stylesheet that defines the transformation from the old to the new structure.
- `xml_stylesheet_demo.ipynb`: A slightly illustrated guide to what happens.