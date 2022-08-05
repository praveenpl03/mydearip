import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydearip/classes.dart';
import 'package:mydearip/cidr.dart';
import 'package:mydearip/convert.dart';
import 'package:mydearip/subnet.dart';


void main()=>runApp(MyApp());
int _selectedindex =0;
late Widget _cidr = Cidr();
late Widget _classes= Classes();
late Widget _convert= Convert();
late Widget _subnet= Subnet();
late List<Widget> _pages = [_convert,_classes,_subnet,_cidr];
late Widget _currentPage = _pages[_selectedindex];
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState()
  {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  @override
  void _onItemtapped( int index)
  {
    setState(() {
      _selectedindex = index;
      _currentPage = _pages[index];
      print(index);
    });
  }
  Widget build(BuildContext context) {
   return MaterialApp(home: Scaffold(
     backgroundColor: Colors.blueGrey,
     appBar: AppBar(leading: Image.asset("image/lan.png",
       scale: 15,
     ),
       title: Text("mY.dEAr.#.iP", style: GoogleFonts.squadaOne(
           textStyle: TextStyle(color: Colors.greenAccent, letterSpacing: 1,fontSize: 30))),
         actions: [
     Icon(Icons.info),],
       backgroundColor: Colors.black45,
     ) ,

     body: _currentPage,
bottomNavigationBar: BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  backgroundColor: Colors.black45,
  selectedItemColor: Colors.greenAccent,
  unselectedItemColor: Colors.white.withOpacity(.60),
  selectedFontSize: 14,
  unselectedFontSize: 14,
  onTap: _onItemtapped,
  currentIndex: _selectedindex,
  items:  const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      label: 'Conversions',
      icon: Icon(Icons.sync),
    ),
    BottomNavigationBarItem(
      label: 'Classes',
      icon: Icon(Icons.class_outlined),
    ),
    BottomNavigationBarItem(
      label: 'Subnets',
      icon: Icon(Icons.holiday_village_outlined),
    ),
    BottomNavigationBarItem(
      label: 'CIDR',
      icon: Icon(Icons.library_books),
    ),
    BottomNavigationBarItem(
      label: 'IPV6',
      icon: Icon(Icons.account_tree_sharp)
    ),
  ],
),

   ));
  }
  
}