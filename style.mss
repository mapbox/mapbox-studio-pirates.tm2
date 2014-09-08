// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';
@name_arrr: "[name_en].replace('([Aa]r)','\1rr')";

// Common Colors //
@land: #fff8f0;
@water: #cdd;
@park: #cda;

Map {
  background-color:@land;
  background-image:url(img/noise.png);
}


// Political boundaries //

#admin[maritime=0][zoom>=3] {
  line-join: round;
  line-color: #478;
  comp-op:multiply;
  // Countries
  [admin_level=2] {
  	line-cap:round;
    line-width: 0.8;
    [zoom>=6] { line-width: 2; }
    [zoom>=8] { line-width: 4; }
    [disputed=1] {
      line-dasharray: 4,4;
  	  line-cap:butt;
    }
  }
  // States / Provices / Subregions
  [admin_level>=3] {
    line-width: 0.4;
    line-dasharray: 10,3,3,3;
    [zoom>=6] { line-width: 1; }
    [zoom>=8] { line-width: 2; }
    [zoom>=12] { line-width: 3; }
  }
}


// Water Features //

@water_line:lighten(@water,8);
#water {
  ::b {
    polygon-pattern-file:url(img/water.png);
	polygon-pattern-alignment:global;
  }
  polygon-fill: mix(@water,#fff,50);
  polygon-gamma: 0.6;
  comp-op:multiply;
  a/line-color:@water_line;
  a/line-width:-0.4;
  a/line-comp-op:multiply;
  a/line-smooth:2;
  b/line-color:@water_line;
  b/line-width:-0.4;
  b/line-comp-op:multiply;
  b/line-smooth:4;
  c/line-color:@water_line;
  c/line-width:-0.4;
  c/line-comp-op:multiply;
  c/line-smooth:6;
  [zoom>=12] {
    a/line-width:0.8;
    b/line-width:0.8;
    c/line-width:0.8;
  }
}

#waterway {
  comp-op:multiply;
  [type='river'],
  [type='canal'] {
    line-color: @water;
    line-width: 0.5;
    [zoom>=12] { line-width: 1; }
    [zoom>=14] { line-width: 2; }
    [zoom>=16] { line-width: 3; }
  }
  [type='stream'] {
    line-color: @water;
    line-width: 0.5;
    [zoom>=14] { line-width: 1; }
    [zoom>=16] { line-width: 2; }
    [zoom>=18] { line-width: 3; }
  }
}


// Landuse areas //

#landuse {
  ::glow {
    comp-op:multiply;
    [class='park'],[class='pitch'],[class='school'] {
      line-width:2;
      line-join:round;
      [class='park'] { line-color:#ddb; }
      [class='pitch'] { line-color:#eed; }
      [class='school'] { line-color:#edb; }
  	}
  }
  ::main[zoom>=0] {
    comp-op:multiply;
    [class='park'] {
      polygon-pattern-file:url(img/park.png);
      polygon-pattern-alignment:global;
    }
    [class='school'] {
      polygon-fill:#ed9;
      polygon-opacity:0.5;
    }
  }
  ::wood[class='wood'] {
    line-color:#C3CFB4;
    line-opacity:0.33;
    line-width:3;
    line-join:round;
    polygon-pattern-file:url(img/forest.png);
    polygon-pattern-alignment:global;
    comp-op:multiply;
    opacity:0.5;
  }
}


// Buildings //

#building {
  polygon-fill:#efe8d8;
  comp-op:multiply;
  [zoom>=15] {
    line-color:#efe8d8 * 0.9;
    [zoom>=15] { line-width:0.2; }
    [zoom>=16] { line-width:0.4; }
    [zoom>=17] { line-width:0.8; }
  }
}


// Roads & Railways //

#tunnel { opacity: 0.5; }

#road,
#tunnel,
#bridge {
  ['mapnik::geometry_type'=2] {
    line-width: 1;
    line-color:#edc;
    line-comp-op:multiply;
    [class='motorway'],
    [class='main'],
    [class='motorway_link']{
      line-color:#dba;
      [zoom>=10] { line-width: 1; }
      [zoom>=12] { line-width: 2; }
      [zoom>=14] { line-width: 3; }
      [zoom>=16] { line-width: 5; }
    }
    [class='street'],
    [class='street_limited'] {
      [zoom>=13] { line-width: 1.4; }
      [zoom>=14] { line-width: 2; }
      [zoom>=16] { line-width: 3; }
    }
    [class='street_limited'] { line-dasharray: 4,1; }
    [class='path'] { line-dasharray: 3,2; }
  }
}