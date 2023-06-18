import 'package:adminka_shop_app/data/models/products.dart';

abstract class AdminRepository{
  Future<void> addProducts(ProductModel productModel);
  Future<void> deleteProduct(ProductModel productModel);
  Future<void> updateProduct(ProductModel productModel);
  Future<List<ProductModel>> getProducts();
}