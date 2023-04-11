import 'package:app_store/screen/app_store/provider/store_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class store_screen extends StatefulWidget {
  const store_screen({Key? key}) : super(key: key);

  @override
  State<store_screen> createState() => _store_screenState();
}

class _store_screenState extends State<store_screen> {
  @override
  Widget build(BuildContext context) {
    Store_provider? store_provider = Provider.of(context,listen: false);
    return CupertinoTabScaffold(
    tabBar: CupertinoTabBar(
    backgroundColor: Colors.white,
    items: [
    BottomNavigationBarItem(icon: Icon(Icons.today),),
    BottomNavigationBarItem(icon: Icon(Icons.sports_esports_outlined),),
    BottomNavigationBarItem(icon: Icon(Icons.apps),),
    ]),
    tabBuilder: (context, index) => Store_provider()!.screenList[index],
    );
    }
    }