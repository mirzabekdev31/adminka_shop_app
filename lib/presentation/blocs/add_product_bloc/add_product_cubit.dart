import 'package:adminka_shop_app/data/models/products.dart';
import 'package:adminka_shop_app/domain/repository/admin_repository.dart';
import 'package:bloc/bloc.dart';
part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  final AdminRepository adminRepository;
  AddProductCubit(this.adminRepository) : super(AddProductState());


  Future<void> addProduct(ProductModel productModel) async{
    emit(state.copyWith(status: AddProductStatus.loading));
    try{
      adminRepository.addProducts(productModel);
      emit(state.copyWith(status: AddProductStatus.success));
    }catch(e){
      emit(state.copyWith(status: AddProductStatus.error,message: '$e'));
    }
  }

}
