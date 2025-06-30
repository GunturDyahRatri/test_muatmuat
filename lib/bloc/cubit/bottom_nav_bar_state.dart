part of 'bottom_nav_bar_cubit.dart';

class BottomNavbarState {
  int activeIndex;
  String? title;

  BottomNavbarState({this.activeIndex = 0, this.title});

  BottomNavbarState copyWith({final int? activeIndex, final String? title}) {
    return BottomNavbarState(
      activeIndex: activeIndex ?? this.activeIndex,
      title: title ?? this.title,
    );
  }
}
