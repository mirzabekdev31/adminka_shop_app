import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'all_product_state.dart';

class AllProductCubit extends Cubit<AllProductState> {
  AllProductCubit() : super(AllProductInitial());
}
