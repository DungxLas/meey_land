import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meey_land/cubit/sale_new_state.dart';
import 'package:meey_land/data/dummy_data.dart';

class SaleNewCubit extends Cubit<SaleNewState> {
  SaleNewCubit() : super(const SaleNewState(posts: []));

  Future<void> onFetched() async {
    await Future.delayed(
        const Duration(milliseconds: 3000),
        () => emit(
              state.copyWith(posts: dummyData),
            ));
  }
}
