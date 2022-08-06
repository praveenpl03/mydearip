import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cidr extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(1.0),
    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
    child: Column(
    children:
    [SizedBox(height: 20,),Text("#-#-Licence-#-#",style:
    GoogleFonts.robotoMono(color: Colors.white54,fontSize: 20, fontWeight: FontWeight.bold),),
        SizedBox(height: 20,),

        Text('Apache License 2.0 A permissive license whose main conditions require preservation of copyright and license notices. Contributors provide an express grant of patent rights. Licensed works, modifications, and larger works may be distributed under different terms and without source code.',
        style:TextStyle(color: Colors.white54, fontSize: 19,),textAlign: TextAlign.justify,),
      SizedBox(height: 20,),
      const Text('Dev : praveen.pl03@gmail.com',
        style:TextStyle(color: Colors.grey, fontSize: 19,),textAlign: TextAlign.justify,),
      SizedBox(height: 5,),
      const Text('Github : https://github.com/praveenpl03',
        style:TextStyle(color: Colors.grey, fontSize: 19,),textAlign: TextAlign.justify,),


    ])
    );

  }
  
}