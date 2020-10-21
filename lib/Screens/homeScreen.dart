import 'package:flutter/material.dart';
import 'package:trash_to_cash/Screens/dashboard.dart';
import 'package:trash_to_cash/Screens/ecommerce.dart';
import 'package:trash_to_cash/Screens/settings.dart';
import 'package:trash_to_cash/Screens/wasteHeatMap.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int tabIndex = 0;
  List<Widget> listScreens;
   @override
  void initState() {
    super.initState();
    listScreens = [
    WasteHeatMap(),
    DashboardScreen(),
    ECommerceScreen(),
    SettingsScreen(),
    ];
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Center(child:Text('Trash to Cash'))),
      bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey[400],
            backgroundColor: Theme.of(context).primaryColor,
            currentIndex: tabIndex,
            onTap: (int index) {
              setState(() {
                tabIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                title: Text('Dashboard'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                title: Text('E-Commerce'),
              ),
               BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ]),
      body:listScreens[tabIndex],
    );
  }
}