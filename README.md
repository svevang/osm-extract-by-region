OSM Extract by Region
=====================

Quickly extract a geographic feature from a region of OSM data. 
Supply a polygon and let osmosis extract all the data contained within
it.

Getting Started
---------------

Run the supplied script with region and feature parameters. e.g:

`./osm_extract.sh central-america puerto-rico`

this will output a file "extractions/puerto-rico.osm" that contains all
the osm data for puerto rico.

Features
--------

Don't see the feature you want? 

1) Open google earth and create a polygon
2) export the coordinates in a kml
3) slice the kml down to the coordinates and create an osmosis poly file
4) open a pull request!
