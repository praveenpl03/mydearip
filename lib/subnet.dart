import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Subnet extends StatelessWidget{
  final subnetController = TextEditingController();
  final cdir = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(1.0),
    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
    child:Column(
      children: [
        Text("#-#- Subnet Calculator -#-#",style:
        GoogleFonts.robotoMono(color: Colors.white54,fontSize: 15, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10,),
        Table(

          columnWidths: {
            0: FlexColumnWidth(3),
            1: FlexColumnWidth(1),


          },
          children:  [

        TableRow(
        children: [
        TextField(

          controller: subnetController,
          keyboardType: TextInputType.number,
          keyboardAppearance: Brightness.dark,
          autofocus: true,
          decoration: const InputDecoration(
            isDense: true,
            hintText: '192.168.0.1', counterText: "",

            fillColor: Colors.black45,
            suffixText: "/",
            hintStyle: TextStyle(color: Colors.grey,letterSpacing: 5, fontSize: 10),
            focusColor: Colors.greenAccent,

            filled: true,
            label: Text("IP Address", style: TextStyle(fontSize: 20, color: Colors.greenAccent, fontWeight: FontWeight.bold),
            ),
            labelStyle: TextStyle(fontSize: 10),
            enabledBorder:OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                borderSide: BorderSide(color: Colors.greenAccent)) ,
            focusedBorder:OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                borderSide: BorderSide(color: Colors.greenAccent)),
          ) ,

          style: const TextStyle(
              fontSize: 17.0,
              height: 1.0,
              color: Colors.greenAccent
          ),),
        TextField(

          controller: cdir,
          keyboardType: TextInputType.number,
          keyboardAppearance: Brightness.dark,
          autofocus: true,

          decoration: const InputDecoration(
            labelStyle: TextStyle(fontSize: 10),
            isDense: true,
            hintText: 'CIDR', counterText: "",

            fillColor: Colors.black45,
            suffixText: "#",
            hintStyle: TextStyle(color: Colors.grey,letterSpacing: 2, fontSize: 10),
            focusColor: Colors.greenAccent,

            filled: true,
            label: Text("CIDR", style: TextStyle(fontSize: 20, color: Colors.greenAccent, fontWeight: FontWeight.bold),
            ),
            enabledBorder:OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                borderSide: BorderSide(color: Colors.greenAccent)) ,
            focusedBorder:OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                borderSide: BorderSide(color: Colors.greenAccent)),
          ) ,

          style: const TextStyle(
              fontSize: 17.0,
              height: 1.0,
              color: Colors.greenAccent
          ),),

      ],
    )
    ]),
        OutlinedButton(onPressed:()=>{},
          style: OutlinedButton.styleFrom(
            side: BorderSide(width: 1.0, color: Colors.greenAccent),
          ),
          child:  Text("Calculate",style:
          GoogleFonts.robotoMono(color: Colors.white54,fontSize: 15),)

          ,),
    ]));
  }

}