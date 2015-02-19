#country_label[zoom>=3] {
  text-name: @name_arrr;
  text-face-name: 'Quintessential Regular';
  text-wrap-width: 100;
  text-wrap-before: true;
  text-fill: #842;
  text-size: 14;
  text-halo-fill:fadeout(@land,40);
  text-halo-radius:1.5;
  [zoom>=3][scalerank=1],
  [zoom>=4][scalerank=2],
  [zoom>=5][scalerank=3],
  [zoom>=6][scalerank>3] {
    text-size: 18;
  }
  [zoom>=4][scalerank=1],
  [zoom>=5][scalerank=2],
  [zoom>=6][scalerank=3],
  [zoom>=7][scalerank>3] {
    text-size: 24;
  }
}

#poi_label[zoom>=7][type!='Aerodrome'][type!='Rail Station'] {
  [zoom<14][localrank<=1],
  [zoom>=14][scalerank=1][localrank<=1],
  [zoom>=15][scalerank<=2][localrank<=1],
  [zoom>=16][scalerank<=3][localrank<=1],
  [zoom>=17][localrank<=3] {
    text-name: @name;
    text-face-name: 'Gothic Ultra OT Regular';
    text-line-spacing:-5;
    text-fill: #431;
    text-size: 24;
    text-wrap-width: 100;
    text-wrap-before: true;
    text-halo-fill:fadeout(@land,40);
    text-halo-radius:1.5;
  }
}

#water_label {
  [zoom<=13],  // automatic area filtering @ low zooms
    [zoom>=14][area>500000],
    [zoom>=16][area>10000],
    [zoom>=17] {
  	text-name: @name_arrr;
    text-face-name: 'Gothic Ultra OT Regular';
    text-line-spacing:-5;
    text-fill: #245;
    text-size: 24;
    text-wrap-width: 100;
    text-wrap-before: true;
  }
}

#place_label[type='city'][zoom<=14][localrank<=2] {
  text-name: @name_arrr;
  text-face-name: 'Quintessential Regular';
  text-fill: #421;
  text-halo-fill: @land;
  text-halo-radius: 3;
  [zoom>=3] {
    text-size:10;
    [scalerank>=0][scalerank<=1] { text-size: 16; }
    [scalerank>=2][scalerank<=3] { text-size: 14; }
    [scalerank>=4] { text-size: 12; }
  }
  [zoom>=5] {
    text-size:12;
    [scalerank>=0][scalerank<=1] { text-size: 18; }
    [scalerank>=2][scalerank<=3] { text-size: 17; }
    [scalerank>=4] { text-size: 14; }
  }
  [zoom>=6] {
    text-size:14;
    [scalerank>=0][scalerank<=1] { text-size: 20; }
    [scalerank>=2][scalerank<=3] { text-size: 18; }
    [scalerank>=4] { text-size: 16; }
  }
  [zoom>=8] {
  	text-size: 16;
    [scalerank>=0][scalerank<=1] { text-size: 28; }
    [scalerank>=2][scalerank<=3] { text-size: 24; }
    [scalerank>=4] { text-size: 20; }
  }
  [zoom>=10] {
    text-size: 22;
    [scalerank>=0][scalerank<=1] { text-size: 32; }
    [scalerank>=2][scalerank<=3] { text-size: 28; }
    [scalerank>=4] { text-size: 26; }
  }
  [zoom>=12] {
    text-size: 28;
    [scalerank<=3] { text-size: 36; }
    [scalerank>=4] { text-size: 32; }
  }
  [zoom>=13] {
    text-size: 36;
  }
  [zoom>=14] {
    text-size: 40;
  }
}

#place_label[type='town'] {
  text-name: @name_arrr;
  text-face-name: 'Quintessential Regular';
  text-fill: #421;
  text-halo-fill: @land;
  text-halo-radius: 2;
  text-min-distance: 20;
  text-size: 16;
  [zoom=9] { text-size: 17; }
  [zoom=10] { text-size: 18; }
  [zoom=11] { text-size: 20; }
  [zoom=12] { text-size: 24; }
  [zoom>=13] { text-size: 28; }
}

#place_label[type='village'],
#place_label[type='suburb'] {
  text-name: @name_arrr;
  text-face-name: 'Quintessential Regular';
  text-fill: #532;
  text-halo-fill: @land;
  text-halo-radius: 2;
  text-min-distance: 40;
  text-size: 16;
  [zoom=11] { text-size: 17; }
  [zoom=12] { text-size: 18; }
  [zoom=13] { text-size: 20; }
  [zoom=14] { text-size: 24; }
  [zoom>=15] { text-size: 28; }
}

#place_label[type='hamlet'],
#place_label[type='neighbourhood'] {
  text-name: @name;
  text-face-name: 'Quintessential Regular';
  text-fill: #754;
  text-halo-fill: @land;
  text-halo-radius: 2;
  text-wrap-before: true;
  text-wrap-width: 80;
  text-min-distance: 40;
  text-size: 14;
  [zoom=13] { text-size: 16; }
  [zoom=14] { text-size: 18; }
  [zoom=15] { text-size: 20; }
  [zoom=16] { text-size: 24; }
  [zoom>=17] { text-size: 28; }
}

#road_label[zoom>=12][class='motorway'],
#road_label[zoom>=14][class='main'],
#road_label[zoom>=16] {
  text-name: @name;
  text-face-name: 'Gothic Ultra OT Regular';
  text-fill: #654;
  text-placement: line;
  text-avoid-edges: true;
  text-halo-fill: @land;
  text-halo-radius: 2;
  text-size: 18;
}

@mts: 1.5;
#marine_label::text[zoom>=2]["mapnik::geometry_type"=1],
#marine_label::text[zoom>=2]["mapnik::geometry_type"=2] {
  text-name: @name_arrr;
  text-face-name: 'Mutlu  Ornamental';
  text-fill: #244;
  text-size: 10*@mts;
  ["mapnik::geometry_type"=1] {
    text-placement: point;
    text-wrap-width: 30;
    text-line-spacing: -10;
  }
  ["mapnik::geometry_type"=2] {
    text-placement: line;
  }
  [labelrank=1][zoom>=2],
  [labelrank=2][zoom>=3],
  [labelrank=3][zoom>=4],
  [labelrank=4][zoom>=5],
  [labelrank=5][zoom>=6],
  [labelrank=6][zoom>=7] {
    text-size: 13*@mts;
    text-character-spacing: 1;
  }
  [labelrank=1][zoom>=3],
  [labelrank=2][zoom>=4],
  [labelrank=3][zoom>=5],
  [labelrank=4][zoom>=6],
  [labelrank=5][zoom>=7],
  [labelrank=6][zoom>=8] {
    text-size: 16*@mts;
    text-character-spacing: 2;
  }
  [labelrank=1][zoom>=4],
  [labelrank=2][zoom>=5],
  [labelrank=3][zoom>=6] {
    text-size: 20*@mts;
    text-character-spacing: 4;
  }
  [labelrank=1][zoom>=5],
  [labelrank=2][zoom>=6],
  [labelrank=3][zoom>=7] {
    text-size: 24*@mts;
    text-character-spacing: 8;
  }
}
