import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/page/Categories/CateForm.dart';
import 'package:flutter_coffee_app/page/Order/OrderMain.dart';
import 'package:flutter_coffee_app/page/home.dart';

class DrawerNavigation extends StatefulWidget{
  const DrawerNavigation({Key? key}):super(key: key);

  @override
  State<DrawerNavigation> createState()=> _DrawerNavigationSate();
}

List<Widget> _widgetOptions=<Widget>[
  HomePage(),
OrderMain(),
  HomePage(),
  HomePage(),
  HomePage(),
];
  class _DrawerNavigationSate extends State<DrawerNavigation>{
    
   int _selectedIndex=0;
   static const TextStyle optionStyle= TextStyle(fontSize: 30,fontWeight: FontWeight.bold);

   void _onItemTapped(int index)
   {
    setState(() {
      _selectedIndex=index;
    });
   }
   GetTitle(int index){
      switch(index)
      {
        case 0:
        return 'Trang chủ';
        case 1:
        return 'Đặt hàng';
        case 2:
        return 'Lịch sử';
        case 3:
        return 'Cửa hàng';
        case 4:
        return 'Cài đặt';
      }

  
}

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       bottomNavigationBar: BottomNavigationBar(
        items:const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ'),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank_outlined),
            label: 'Đặt hàng'),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Hoạt động'),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Cửa hàng'),
           BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Cài đặt'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[900],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
       ),
      appBar: AppBar(title: Text(GetTitle(_selectedIndex),style: TextStyle(color: Colors.red[900]),),backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.person,color: Colors.red[900],),onPressed: () => HomePage(),)
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
    ) ;
  }
}

