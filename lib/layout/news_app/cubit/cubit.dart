import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp_tests/layout/news_app/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:temp_tests/modules/business/business_screen.dart';
import 'package:temp_tests/modules/scince/scince_screen.dart';
import 'package:temp_tests/modules/sports/sports_screen.dart';
import 'package:temp_tests/shared/network/remote/dio_helper.dart';
class NewsCubit extends Cubit<NewsState>
{
  NewsCubit() : super(NewsInitialState());
  static NewsCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  List<Widget> screens =
  [
    const BusinessScreen(),
    const SportsScreen(),
    const ScienceScreen(),
  ];
  List <BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
        icon:Icon(Icons.business),
      label: 'business',
    ),
    const BottomNavigationBarItem(
        icon:Icon(Icons.business),
      label: 'business',
    ),
    const BottomNavigationBarItem(
        icon:Icon(Icons.business),
      label: 'business',
    ),
  ];
  void changeBottomNavBar (int index)
  {
    currentIndex = index;
    emit(NewsBottomNavState());
  }

}