import 'package:daftarwisataapp/datas/data_wisata.dart';
import 'package:daftarwisataapp/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List <DataWisata>_dataWisataList = List<DataWisata>();
  double _screenWithAdjustment;

  @override
  void initState() {
    _dataWisataList = DataWisata().createDataWisata();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _screenWithAdjustment = MediaQuery.of(context).size.width - 48.0 - 64.0;
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Indonesia')
      ),
      body: SafeArea(
        child: ListView.builder(
            itemExtent: 190.0,
            itemCount:_dataWisataList.length,
            itemBuilder: (BuildContext context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      fullscreenDialog: true,
                      transitionDuration: Duration(milliseconds: 100),
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation){
                        return DetailScreen(dataWisata: DataWisata(
                          title: _dataWisataList[index].title,
                          description: _dataWisataList[index].description,
                          image: _dataWisataList[index].image,
                          materialColor: _dataWisataList[index].materialColor
                        ));
                      },
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                          Widget child){
                        return FadeTransition(
                            opacity: animation,
                            child: child,
                        );
                      }
                    )
                  );
                },
                child: Card(
                  margin: EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 8.0),
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children:[
                      Hero(
                        tag: 'title' + _dataWisataList[index].title,
                        child: Container(
                          color: _dataWisataList[index].materialColor,
                        ),
                      ),
                      Positioned(
                        top: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Hero(
                            tag: 'image' + _dataWisataList[index].title,
                            child: Image.network(_dataWisataList[index].image,
                            height: 80.0,
                            fit: BoxFit.fitWidth),
                        ),
                      ),
                      Positioned(
                        top: 96.0,
                        left: 16.0,
                        width: _screenWithAdjustment,
                        child: Hero(
                            tag: 'text' + _dataWisataList[index].title,
                            child: Text(
                              _dataWisataList[index].title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),

                            ),
                        ),
                      ),
                      Positioned(
                        left: 16.0,
                        top: 120.0,
                        width: _screenWithAdjustment,
                        child: Hero(
                            tag: 'subtitle' + _dataWisataList[index].description,
                            child: Text(
                                _dataWisataList[index].description,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
