mkdir osm_motorway osm_trunk osm_primary osm_secondary osm_tertiary osm_stream osm_river osm_railway osm_industrial
ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'motorway'" osm_motorway/osm_motorway.shp gis_osm_roads_free_1.shp
ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'trunk'" osm_trunk/osm_trunk.shp gis_osm_roads_free_1.shp
ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'motorway_link'" osm_primary/osm_motorwaylink.shp gis_osm_roads_free_1.shp
ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'trunk_link'" osm_primary/osm_trunklink.shp gis_osm_roads_free_1.shp
ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'primary'" osm_primary/osm_primary.shp gis_osm_roads_free_1.shp
ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'primarylink'" osm_secondary/osm_primary_link.shp gis_osm_roads_free_1.shp
ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'secondary'" osm_secondary/osm_secondary.shp gis_osm_roads_free_1.shp
ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'secondary_link'" osm_tertiary/osm_secondarylink.shp gis_osm_roads_free_1.shp
ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'tertiary'" osm_tertiary/osm_tertiary.shp gis_osm_roads_free_1.shp


ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'stream'" osm_stream/osm_stream.shp gis_osm_waterways_free_1.shp
ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'river'" osm_river/osm_river.shp gis_osm_waterways_free_1.shp

ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'rail'" osm_railway/osm_railway.shp gis_osm_railways_free_1.shp

ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'industrial'" osm_industrial/osm_industrial.shp gis_osm_landuse_a_free_1.shp
