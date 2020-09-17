import 'package:flutter/foundation.dart';

class House {
  final int id;
  final String title;
  final double price;
  final String location;
  final String imgUrl;
  final int bed;
  final int bathrooms;
  final String description;

  House(
      {@required this.id,
      @required this.title,
      @required this.price,
      @required this.location,
      @required this.imgUrl,
      @required this.bed,
      @required this.bathrooms,
      @required this.description});
}

List<House> houseList = [
  House(
    id: 1,
    title: 'Condominium',
    price: 120000,
    imgUrl:
        'https://i.pinimg.com/originals/0b/d0/ef/0bd0efb91785b34a6071a863390754bc.jpg',
    bathrooms: 4,
    bed: 2,
    location: 'Phnom Penh',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
  ),
  House(
    id: 2,
    title: 'Single family',
    price: 220000,
    imgUrl:
        'https://images.adsttc.com/media/images/5be9/fd5c/08a5/e5a5/8c00/008f/large_jpg/CARLES_FAUS_ARQUITECTURA_-_CARMEN_HOUSE_(2).jpg?1542061390',
    bathrooms: 4,
    bed: 2,
    location: 'Kompot',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
  ),
  House(
    id: 3,
    title: 'Apartment',
    price: 320000,
    imgUrl:
        'https://storage.googleapis.com/static.inmoweb.es/clients/847/header/5CCC01D4DEA4D.jpg',
    bathrooms: 5,
    bed: 3,
    location: 'Pursat',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
  ),
  House(
    id: 4,
    title: 'Co-op',
    price: 420000,
    imgUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTf3S-NeiJs1mwR0s7dj2cXPpGr0HEPkd73Sg&usqp=CAU',
    bathrooms: 6,
    bed: 4,
    location: 'Battambong',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
  ),
  House(
    id: 5,
    title: 'Townhome',
    price: 520000,
    imgUrl:
        'https://i.pinimg.com/originals/ae/de/57/aede573a9f034bd2402a336467b9b9e3.jpg',
    bathrooms: 4,
    bed: 3,
    location: 'Pai Lin',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
  ),
  House(
    id: 6,
    title: 'Bungalow',
    price: 620000,
    imgUrl:
        'https://i.pinimg.com/originals/3e/d1/59/3ed159602024ff7c139f6a73cc4b1912.jpg',
    bathrooms: 5,
    bed: 6,
    location: 'Kratie',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
  ),
  House(
    id: 7,
    title: 'Ranch-Style',
    price: 720000,
    imgUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTB5KG12b0O609saUqoqkDKnJ6RHDojaCGvIA&usqp=CAU',
    bathrooms: 1,
    bed: 1,
    location: 'Siem Reap',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
  ),
  House(
    id: 8,
    title: 'Cottage',
    price: 820000,
    imgUrl:
        'https://i.pinimg.com/originals/52/ce/60/52ce60ae0faec499ddf25779b4ff0ffc.jpg',
    bathrooms: 3,
    bed: 2,
    location: 'Poi Pet',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
  ),
];
