import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meey_land/cubit/sale_new_state.dart';
import 'package:meey_land/data/dummy_data.dart';

class SaleNewCubit extends Cubit<SaleNewState> {
  SaleNewCubit() : super(SaleNewState(posts: dummyData));
}
