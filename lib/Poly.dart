import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class Poly extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Poly> {
  List<LatLng> points;
  MapController mapController;
  List<Marker> markers;

  @override
  void initState() {
    super.initState();

    mapController = new MapController();
    points = new List<LatLng>();
    points.add(new LatLng(11.016716, 76.968693));
    points.add(new LatLng(11.001786, 76.968482));
    points.add(new LatLng(10.994434, 76.962646));
    points.add(new LatLng(10.988529, 76.961703));
    points.add(new LatLng(10.975623, 76.915281));
    points.add(new LatLng(10.953675, 76.788963));
    points.add(new LatLng(10.938629, 76.744161));

    markers = new List<Marker>();
    for (int i = 0; i < points.length; i++) {
      markers.add(new Marker(
        width: 80.0,
        height: 80.0,
        point: points.elementAt(i),
        builder: (ctx) => new Icon(
          Icons.location_on,
          color: Colors.red,
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
         centerTitle: true,
        title: new Text('Track My Bus' ,   style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: new Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Flexible(
                child: new FlutterMap(
                  mapController: mapController,
                  options: new MapOptions(
                      center: new LatLng(11.016716, 76.968693), zoom: 14.4746),
                  layers: [
                    new TileLayerOptions(
                      urlTemplate:
                          "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                      subdomains: ['a', 'b', 'c'],
                    ),
                    new MarkerLayerOptions(markers: markers),
                    new PolylineLayerOptions(polylineCulling: true, polylines: [
                      new Polyline(
                          points: points, strokeWidth: 4.0, color: Colors.blue)
                    ])
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
