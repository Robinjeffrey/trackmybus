import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:trackmybus/Poly.dart';
import 'package:trackmybus/Tracking.dart';

class MyMapPage extends StatefulWidget {
  @override
  _MyMapPageState createState() => _MyMapPageState();
}

class _MyMapPageState extends State<MyMapPage> {
  GoogleMapController _controller;

  List<Marker> allMarkers = [];

  PageController _pageController;

  int prevPage;

  @override
  void initState() {
    super.initState();
    coffeeShops.forEach((element) {
      allMarkers.add(Marker(
          markerId: MarkerId(element.shopName),
          draggable: false,
          infoWindow:
              InfoWindow(title: element.shopName, snippet: element.address),
          position: element.locationCoords));
    });
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8)
      ..addListener(_onScroll);
  }

  void _onScroll() {
    if (_pageController.page.toInt() != prevPage) {
      prevPage = _pageController.page.toInt();
      moveCamera();
    }
  }

  _coffeeShopList(index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 125.0,
            width: Curves.easeInOut.transform(value) * 350.0,
            child: widget,
          ),
        );
      },
      child: InkWell(
          onTap: () {
            moveCamera();
          },
          child: Stack(children: [
            Center(
                child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 20.0,
                    ),
                    height: 125.0,
                    width: 275.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            offset: Offset(0.0, 4.0),
                            blurRadius: 10.0,
                          ),
                        ]),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),
                        child: Row(children: [
                          Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      topLeft: Radius.circular(10.0)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          coffeeShops[index].thumbNail),
                                      fit: BoxFit.cover))),
                          SizedBox(width: 5.0),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    coffeeShops[index].shopName,
                                    style: TextStyle(
                                        fontSize: 12.5,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  width: 170.0,
                                  child: Text(
                                    coffeeShops[index].address,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Container(
                                  width: 170.0,
                                  child: Text(
                                    coffeeShops[index].description,
                                    style: TextStyle(
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w300),
                                  ),
                                )
                              ])
                        ]))))
          ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Track My Bus',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.pin_drop,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Poly()));
                }),
            IconButton(
                icon: Icon(Icons.gps_fixed, color: Colors.white),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tracking()));
                }),
          ],
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: MediaQuery.of(context).size.width,
              child: GoogleMap(
                mapType: MapType.hybrid,
                initialCameraPosition: CameraPosition(
                    target: LatLng(11.016716, 76.968693), zoom: 12.0),
                markers: Set.from(allMarkers),
                onMapCreated: mapCreated,
              ),
            ),
            Positioned(
              bottom: 20.0,
              child: Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: coffeeShops.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _coffeeShopList(index);
                  },
                ),
              ),
            )
          ],
        ));
  }

  void mapCreated(controller) {
    setState(() {
      _controller = controller;
    });
  }

  moveCamera() {
    _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: coffeeShops[_pageController.page.toInt()].locationCoords,
        zoom: 15.0,
        bearing: 45.0,
        tilt: 45.0)));
  }
}

class Coffee {
  String shopName;
  String address;
  String description;

  String thumbNail;
  LatLng locationCoords;

  Coffee(
      {this.shopName,
      this.address,
      this.description,
      this.thumbNail,
      this.locationCoords});
}

final List<Coffee> coffeeShops = [
  Coffee(
      shopName: 'Gandhipuram Bus Stop',
      address: 'In - 7:30 AM , Out - 6:30 PM',
      description:
          '11/20, Bharathiyar Rd, ATT Colony, Gopalapuram, New Siddhapudur, Tamil Nadu 641044',
      locationCoords: LatLng(11.016716, 76.968693),
      thumbNail:
          'https://upload.wikimedia.org/wikipedia/commons/b/b8/Gandhipuram_bus_stand.jpg'),
  Coffee(
      shopName: 'CSI Immanuel Church',
      address: 'In - 7:30 AM , Out - 6:30 PM',
      description: 'Avinashi Rd, Gopalapuram, Uppilipalayam, Tamil Nadu 641018',
      locationCoords: LatLng(11.001786, 76.968482),
      thumbNail:
          'https://lh3.googleusercontent.com/p/AF1QipPNOc4Lsj8FFFYg-He8s7MWwxY4_HpfH6qFt2Tf=s1600-w400'),
  Coffee(
      shopName: 'Town Hall',
      address: 'In - 7:30 AM , Out - 6:30 PM',
      description: 'Town Hall, Coimbatore, Tamil Nadu 641001',
      locationCoords: LatLng(10.994434, 76.962646),
      thumbNail:
          'https://drscdn.500px.org/photo/142317545/q%3D80_m%3D1000_k%3D1/v2?sig=723eb38bb8b1daad5a6e23ba8c7939b1dfec9682ef5c0a6abb49744608298146'),
  Coffee(
      shopName: 'Ukkadam Stop',
      address: 'In - 7:30 AM , Out - 6:30 PM',
      description: 'Ukkadam, Coimbatore, Tamil Nadu 641001',
      locationCoords: LatLng(10.988529, 76.961703),
      thumbNail:
          'https://www.newsbricks.com/root_upld/general-news/2019/10/00573/org_30874201910071720.jpg'),
  Coffee(
      shopName: 'Perur Stop',
      address: 'In - 7:30 AM , Out - 6:30 PM',
      description:
          'Opposite to Perur Patteeswarar Temple , Coimbatore, Tamil Nadu 641010',
      locationCoords: LatLng(10.975623, 76.915281),
      thumbNail:
          'https://upload.wikimedia.org/wikipedia/commons/e/e4/PERUR_PATTEESHWARAR_TEMPLE.jpg'),
  Coffee(
      shopName: 'Alundurai Stop',
      address: 'In - 7:30 AM , Out - 6:30 PM',
      description: 'Alanthurai, Coimbatore, Tamil Nadu 641101',
      locationCoords: LatLng(10.953675, 76.788963),
      thumbNail:
          'https://content.jdmagicbox.com/comp/coimbatore/p2/0422px422.x422.140829013002.s3p2/catalogue/nkp-lodge-alandurai-coimbatore-lodging-services-1l9l8fz.jpg?clr='),
  Coffee(
      shopName: 'Karunya University',
      address: 'In - 7:30 AM , Out - 6:30 PM',
      description: 'Karunya Nagar, Coimbatore, Tamil Nadu 641114',
      locationCoords: LatLng(10.938629, 76.744161),
      thumbNail:
          'https://educationiconnect.com/wp-content/uploads/2020/05/3896ce02f60f3a302b4be235b9f2ed88.jpg')
];
