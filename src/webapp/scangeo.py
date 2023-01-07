import manage
from pathlib import Path
import atlas
from django.contrib.gis.gdal import DataSource


def main():
    world_shp = Path(atlas.__file__).resolve().parent / 'data' / 'cells.shp'
    ds = DataSource(world_shp)
    print(ds)
    print(len(ds))
    lyr = ds[0]
    print(lyr)
    print(lyr.geom_type)
    print(len(lyr))
    srs = lyr.srs
    print(srs)

    print(lyr.fields)
    [fld.__name__ for fld in lyr.field_types]

if __name__ == '__main__':
    main()
