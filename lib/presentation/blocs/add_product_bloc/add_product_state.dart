part of 'add_product_cubit.dart';

class AddProductState {
  final AddProductStatus status;
  final String message;

  AddProductState({
    this.status = AddProductStatus.initial,
    this.message = ''
  });

  AddProductState copyWith({AddProductStatus? status, String? message}) {
    return AddProductState(
        status: status ?? this.status,
        message: message ?? this.message);
  }
}

enum AddProductStatus { initial, loading, success, error }
