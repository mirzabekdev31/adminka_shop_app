import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'all_user_state.dart';

class AllUserCubit extends Cubit<AllUserState> {
  AllUserCubit() : super(AllUserInitial());
}
