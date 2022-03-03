import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:temp_tests/layout/news_app/cubit/cubit.dart';
import 'package:temp_tests/layout/news_app/cubit/states.dart';
import 'package:temp_tests/shared/network/remote/dio_helper.dart';
class NewsLayout extends StatelessWidget
{
  const NewsLayout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (BuildContext context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsState>(
        listener: (context, state)
        {

        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title:const Text(
                'App',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ),
            body: NewsCubit.get(context).screens[NewsCubit.get(context).currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: NewsCubit.get(context).currentIndex,
              type: BottomNavigationBarType.fixed,
              items: NewsCubit.get(context).bottomItems,
              onTap: (index){
                NewsCubit.get(context).changeBottomNavBar(index);
              }
            ),
          );
        },
      ),
    );
  }
}
