import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavbarState> {
  BottomNavBarCubit() : super(BottomNavbarState());
  var appbarTitles = ['Test1', 'Test2', 'Test3', 'Test4'];

  change(int index) {
    emit(state.copyWith(activeIndex: index, title: appbarTitles[index]));
  }
}
