import 'package:flutter/material.dart';

class DataWisata {
  final String title;
  final String description;
  final String image;
  final MaterialColor materialColor;

  DataWisata({this.title, this.description, this.image, this.materialColor});

  List<DataWisata> createDataWisata(){
    List _dataWisata = List<DataWisata>();
    return _dataWisata
        ..add(DataWisata(
          title: 'Statue Of Liberty',
          description: 'Located In New York City, United States',
          image: 'https://i1.wp.com/designlike.com/wp-content/uploads/2011/12/liberty.jpg?zoom=2&resize=600%2C800',
          materialColor: Colors.green))
        ..add(DataWisata(
          title: 'Eiffel Tower',
          description: 'Located In Paris, France',
          image: 'https://i0.wp.com/www.designlike.com/wp-content/uploads/2011/12/The-Eiffel-Tower-paris-2393939-1920-2560.jpg?w=1920&ssl=1',
          materialColor: Colors.brown))
        ..add(DataWisata(
          title: 'The Great Sphinx',
          description: 'Located In Giza, Egypt',
          image: 'https://i2.wp.com/designlike.com/wp-content/uploads/2011/12/northcape2010.blogspot.com_.The-Great-Sphynx-at-Giza.jpg?zoom=2&resize=600%2C800',
          materialColor: Colors.blue))
        ..add(DataWisata(
          title: 'The Pyramids Of Giza',
          description: 'Located In Giza, Egypt',
          image: 'https://i2.wp.com/designlike.com/wp-content/uploads/2011/12/Giza-Pyramids1-600x450.jpg?zoom=2&resize=600%2C450',
          materialColor: Colors.orange))
        ..add(DataWisata(
          title: 'Windmills',
          description: 'Located In Kinderdjik, Holland',
          image: 'https://i1.wp.com/designlike.com/wp-content/uploads/2011/12/Windmills-Kinderdijk-Netherlands-600x450.jpg?zoom=2&resize=600%2C450',
          materialColor: Colors.cyan))
        ..add(DataWisata(
          title: 'The Great Wall',
          description: 'Located In China',
          image: 'https://i0.wp.com/designlike.com/wp-content/uploads/2011/12/great-wall-of-china-600x450.jpg?zoom=2&resize=600%2C450',
          materialColor: Colors.yellow))
        ..add(DataWisata(
          title: 'Taj Mahal',
          description: 'Located In Agra, India',
          image: 'https://i2.wp.com/designlike.com/wp-content/uploads/2011/12/12837020363WMGj97-600x450.jpg?zoom=2&resize=600%2C450',
          materialColor: Colors.purple))
        ..add(DataWisata(
          title: 'Macchu Picchu',
          description: 'Located In Peru',
          image: 'https://i2.wp.com/designlike.com/wp-content/uploads/2011/12/g32535-600x450.png?zoom=2&resize=600%2C450',
          materialColor: Colors.lightBlue))
        ..add(DataWisata(
          title: 'Big Ben',
          description: 'Located In London, UK',
          image: 'https://i1.wp.com/designlike.com/wp-content/uploads/2011/12/828287_ede0ffe68e_z.jpg?zoom=2&resize=480%2C640',
          materialColor: Colors.grey))
        ..add(DataWisata(
          title: 'Burj Al-Arab Hotel',
          description: 'Located In Dubai',
          image: 'https://i1.wp.com/www.designlike.com/wp-content/uploads/2011/12/Burj_Al_Arab_on_18_October_2007_Pict_1.jpg?w=806&ssl=1',
          materialColor: Colors.blueGrey
        ));
  }
}