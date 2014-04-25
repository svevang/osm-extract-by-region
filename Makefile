all: $(REGION)-latest.osm.pbf extractions extractions/$(FEATURE).osm 

$(REGION)-latest.osm.pbf:
	wget http://download.geofabrik.de/$(REGION)-latest.osm.pbf

extractions/$(FEATURE).osm: $(REGION)-latest.osm.pbf
	osmosis --read-pbf file="$(REGION)-latest.osm.pbf" --bounding-polygon file="features/$(FEATURE).poly" --write-xml file="extractions/$(FEATURE).osm"

extractions:
	mkdir extractions

clean:
	rm -rf extractions
