import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel{
  String? id;
  String? dressName;
  String? price;
  String? imgUrl;
  bool? isLike;
  bool? isCard;

  ProductModel({required this.id,required this.dressName,required this.price,required this.imgUrl,required this.isLike});

  ProductModel.fromData(Map<String, dynamic> data)
      : id = data['id'],
        dressName = data['dressName'],
        price = data['price'],
        imgUrl=data['imgUrl'],
        isLike = data['isLike'],
        isCard=data['isCard'];

  ProductModel.fromSnapshot(DocumentSnapshot snapshot)
      : id = snapshot.id,
        dressName = snapshot['dressName'],
        imgUrl = snapshot['imgUrl'],
        price = snapshot['price'],
        isLike=snapshot['isLike'],
        isCard=snapshot['isCard'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'dressName': dressName,
      'price': price,
      'imgUrl': imgUrl,
      'isLike': isLike,
      'isCard':isCard,
    };
  }
}