import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_muatmuat/bloc/cubit/bottom_nav_bar_cubit.dart';
import 'package:test_muatmuat/ui/test1/test1_page.dart';
import 'package:test_muatmuat/ui/test2/test2_page.dart';
import 'package:test_muatmuat/ui/test3/test3_page.dart';
import 'package:test_muatmuat/ui/test4/test4_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavbarState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: bottomNavigationBar(),
          body: _listContentTab()[state.activeIndex],
        );
      },
    );
  }

  Widget bottomNavigationBar() {
    return BlocBuilder<BottomNavBarCubit, BottomNavbarState>(
      builder: (context, state) {
        return BottomNavigationBar(
          items: _listTitleTab(),
          currentIndex: state.activeIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (i) {
            context.read<BottomNavBarCubit>().change(i);
          },
        );
      },
    );
  }

  List<Widget> _listContentTab() {
    return <Widget>[
      const Test1(),
      const Test2Page(),
      const Test3Page(),
      const Test4Page(),
    ];
  }

  List<BottomNavigationBarItem> _listTitleTab() {
    var colorScheme = Theme.of(context).colorScheme;
    var color = colorScheme.outline;
    var activeColor = colorScheme.primary;

    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: FaIcon(Icons.r_mobiledata, color: Colors.transparent),
        activeIcon: FaIcon(Icons.r_mobiledata, color: Colors.transparent),
        label: 'Test1',
      ),
      BottomNavigationBarItem(
        icon: FaIcon(Icons.r_mobiledata, color: Colors.transparent),
        label: 'Test2',
      ),
      BottomNavigationBarItem(
        label: 'Test3',
        icon: Icon(Icons.r_mobiledata, color: Colors.transparent),
      ),
      BottomNavigationBarItem(
        label: 'Test4',
        icon: Icon(Icons.r_mobiledata, color: Colors.transparent),
      ),
    ];
  }
}
