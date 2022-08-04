import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydearip/models/ipconvertor.dart';
import 'package:regexed_validator/regexed_validator.dart';
class Convert extends StatefulWidget {
  @override
  State<StatefulWidget> createState()
  {
    return MyConvertState();
  }

}
class MyConvertState extends State<Convert>{
  @override

  final myController = TextEditingController();



 void ipchecker()
  {
    debugPrint(myController.text);
    if(validator.ip(myController.text))
    {
      debugPrint("praveen");
    }else
    {
      debugPrint("invalid");
    }
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
        padding: const EdgeInsets.all(1.0),
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
      children: [
       Text("#-#- Unit Convertion IP -#-#",style:
       GoogleFonts.robotoMono(color: Colors.white54,fontSize: 15, fontWeight: FontWeight.bold),
       ),
       const SizedBox(height: 10),
            TextField(
controller: myController,
keyboardType: TextInputType.number,
keyboardAppearance: Brightness.dark,
autofocus: true,
decoration: const InputDecoration(
          isDense: true,
          hintText: '192.168.0.1', counterText: "",

          fillColor: Colors.black45,
          suffixText: "#",
          hintStyle: TextStyle(color: Colors.grey,letterSpacing: 5),
          focusColor: Colors.greenAccent,

          filled: true,
          label: Text("IP Address", style: TextStyle(fontSize: 20, color: Colors.greenAccent, fontWeight: FontWeight.bold),
          ),
enabledBorder:OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    borderSide: BorderSide(color: Colors.greenAccent)) ,
focusedBorder:OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.greenAccent)),
) ,

        style: const TextStyle(
                fontSize: 20.0,
                height: 1.0,
                color: Colors.greenAccent
            ),),
        const SizedBox(height: 10),
           const TextField(
keyboardType: TextInputType.number,
keyboardAppearance: Brightness.dark,

decoration: InputDecoration(
          isDense: true,
          floatingLabelBehavior: FloatingLabelBehavior.always,

          fillColor: Colors.black45,
          suffixText: "#",
          hintStyle: TextStyle(color: Colors.grey,letterSpacing: 5),
          focusColor: Colors.greenAccent,
          filled: true,
          label: Text("HEX", style: TextStyle(fontSize: 20, color: Colors.white54, fontWeight: FontWeight.bold),

          ),
  focusedBorder:OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.greenAccent)),
) ,
enabled: false,
        style: TextStyle(
                fontSize: 20.0,
                height: 1.0,
                color: Colors.greenAccent
            ),
        ),const SizedBox(height: 10),
           const TextField(
keyboardType: TextInputType.number,
keyboardAppearance: Brightness.dark,

decoration: InputDecoration(
          isDense: true,
          floatingLabelBehavior: FloatingLabelBehavior.always,

          fillColor: Colors.black45,
          suffixText: "#",
          hintStyle: TextStyle(color: Colors.grey,letterSpacing: 5),
          focusColor: Colors.greenAccent,
          filled: true,
          label: Text("OCTA", style: TextStyle(fontSize: 20, color: Colors.white54, fontWeight: FontWeight.bold),

          ),
  focusedBorder:OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.greenAccent)),
) ,
enabled: false,
        style: TextStyle(
                fontSize: 20.0,
                height: 1.0,
                color: Colors.greenAccent
            ),
        ),const SizedBox(height: 10),
           const TextField(
keyboardType: TextInputType.number,
keyboardAppearance: Brightness.dark,

decoration: InputDecoration(
          isDense: true,
          floatingLabelBehavior: FloatingLabelBehavior.always,

          fillColor: Colors.black45,
          suffixText: "#",
          hintStyle: TextStyle(color: Colors.grey,letterSpacing: 5),
          focusColor: Colors.greenAccent,
          filled: true,
          label: Text("BINARY",
            style: TextStyle(fontSize: 20, color: Colors.white54, fontWeight: FontWeight.bold),

          ),
  focusedBorder:OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.greenAccent)),
) ,
enabled: false,
        style: TextStyle(
                fontSize: 20.0,
                height: 1.0,
                color: Colors.greenAccent
            ),
        ),const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(onPressed:ipchecker,
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 1.0, color: Colors.greenAccent),
              ),
              child:  Text("PING",style:
            GoogleFonts.robotoMono(color: Colors.white54,fontSize: 15),)

              ,),
            OutlinedButton(onPressed: ()=>{},
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 1.0, color: Colors.greenAccent),
              ),
              child:  Text("NSLookup",style:
            GoogleFonts.robotoMono(color: Colors.white54,fontSize: 15),)
              ,),
            OutlinedButton(onPressed: ()=>{},
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 1.0, color: Colors.greenAccent),
              ),
              child:  Text("TraceRoute",style:
            GoogleFonts.robotoMono(color: Colors.white54,fontSize: 15),)
              ,),

          ],
        ),

      ],
    ),);
      //Center(
      //child: Text("hello World convert",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 24),),);
  }


}