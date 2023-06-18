import 'package:adminka_shop_app/data/models/products.dart';
import 'package:adminka_shop_app/domain/repository/admin_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdminRepositoryImpl extends AdminRepository{
  
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  
  @override
  Future<void> addProducts(ProductModel productModel) async{
    final CollectionReference userCollections =
    _firestore.collection('dress');
    try {
      final productDoc = userCollections.doc(productModel.id);
      await productDoc.set(productModel.toJson());
      print('Document created successfully.');
    } catch (e) {
      print('Failed to create document. Error: $e');
    }
  }

  @override
  Future<void> deleteProduct(ProductModel productModel) async{
    final CollectionReference userCollections =
    _firestore.collection('dress');
    try {
      final productDoc = userCollections.doc(productModel.id);
      await productDoc.delete();
      print('Document created successfully.');
    } catch (e) {
      print('Failed to create document. Error: $e');
    }
  }

  @override
  Future<List<ProductModel>> getProducts() async{
    final QuerySnapshot querySnapshot =
        await _firestore.collection('dress').get();
    List<ProductModel> dreses = [];
    querySnapshot.docs.forEach((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        ProductModel dress = ProductModel.fromSnapshot(documentSnapshot);
        dreses.add(dress);
      }
    });
    return dreses;
  }

  @override
  Future<void> updateProduct(ProductModel productModel) async{
    final CollectionReference userCollections =
    _firestore.collection('dress');
    try {
      final productDoc = userCollections.doc(productModel.id);
      await productDoc.update(productModel.toJson());
      print('Document created successfully.');
    } catch (e) {
      print('Failed to create document. Error: $e');
    }
  }

}