#marine_label::illo {
  comp-op:overlay;
  marker-allow-overlap:true;
  marker-ignore-placement:true;
  marker-fill:rgba(0,0,0,0);
  marker-width:0;
  [name_en='North Atlantic Ocean'] {
    marker-file:url(img/ship_ketch_300.png);
    [zoom>=4] { marker-file:url(img/ship_ketch_400.png); }
  }
  [name_en='South Pacific Ocean'] {
    marker-file:url(img/ship_bark_300.png);
    [zoom>=4] { marker-file:url(img/ship_bark_400.png); }
  }
  [name_en='Indian Ocean'] {
    marker-file:url(img/ship_bilander_300.png);
    [zoom>=4] { marker-file:url(img/ship_bilander_400.png); }
  }
  [name_en='Philippine Sea'][zoom>=4] {
    marker-file:url(img/ship_junk_200.png);
    [zoom>=5] { marker-file:url(img/ship_junk_300.png); }
  }
  [name_en='Sargasso Sea'][zoom>=4] {
    marker-file:url(img/ship_chase_200.png);
    marker-transform:translate(-50,25);
    [zoom>=5] {
      marker-file:url(img/ship_chase_300.png);
      marker-transform:translate(-200,50);
    }
  }
  [name_en='North Sea'][zoom>=5] {
    marker-file:url(img/ship_snow_200.png);
    [zoom>=6] { marker-file:url(img/ship_snow_300.png); }
  }
  [name_en='Bay of Biscay'][zoom>=6] {
    marker-file:url(img/ship_galleon_200.png);
    [zoom>=7] { marker-file:url(img/ship_galleon_300.png); }
  }
}

#area_label::ships {
  marker-width:0;
  marker-line-width:0;
  marker-fill:rgba(0,0,0,0);
  marker-allow-overlap:true;
  marker-ignore-placement:true;
  marker-comp-op:soft-light;
  [name_en='Swansea Bay'],
  [name_en='Maplin Sands'],
  [name_en='Virgin Islands Coral Reef National Monument'] {
    marker-file:url(img/ship_sloop_200.png);
    marker-transform:translate(20,0);
  }
  [name_en='Sturgeon Bank Wildlife Management Area'] {
    marker-file:url(img/ship_ketch_200.png);
    marker-transform:translate(-60,0);
  }
}

#water_label::ships {
  marker-width:0;
  marker-line-width:0;
  marker-fill:rgba(0,0,0,0);
  marker-allow-overlap:true;
  marker-ignore-placement:true;
  marker-comp-op:soft-light;
  [name_en='Baie de Douarnenez'],
  [name_en='Botany Bay'],
  [name_en='Dublin Bay'],
  [name_en='Lake Erie'],
  [name_en='Mont Saint-Michel Bay'] {
    marker-file:url(img/ship_frigate_200.png);
  }
}
