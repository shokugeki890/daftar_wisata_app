import 'package:daftarwisataapp/datas/data_wisata.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final DataWisata dataWisata;

  const DetailScreen({Key key, this.dataWisata}) : super(key:key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  DataWisata _dataWisata;
  double _screenWidth;

  @override
  void initState() {
    _dataWisata = widget.dataWisata;
    super.initState();
  }
  @override
  void didChangeDependencies() {
    _screenWidth = MediaQuery.of(context).size.width;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${_dataWisata.title}'),
        backgroundColor: _dataWisata.materialColor,
      ),
      body: SafeArea(
          child: Stack(
            children:[
              Hero(
                tag: 'title' + _dataWisata.title,
                child: Container(
                  color: _dataWisata.materialColor,
                ),
              ),
              Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                height: 230.0,
                child: Hero(
                  tag: 'image' + _dataWisata.title,
                  child: Image.network(_dataWisata.image,
                      height: 80.0,
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 246.0,
                left: 16.0,
                width: _screenWidth - 64.0,
                child: Material(
                  color: Colors.transparent,
                  child: Hero(
                    tag: 'text' + _dataWisata.title,
                    child: Text(
                      _dataWisata.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16.0,
                top: 288.0,
                width: _screenWidth - 64.0,
                child: Hero(
                  tag: 'subtitle' + _dataWisata.description,
                  child: Text(
                    _dataWisata.description,
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}
