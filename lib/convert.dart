import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydearip/models/ipconvertor.dart';
import 'package:regexed_validator/regexed_validator.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:dart_ping/dart_ping.dart';

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
  final myhex = TextEditingController();
  final myoct = TextEditingController();
  final myint = TextEditingController();
  final ipping = TextEditingController();
  bool _isvisible = false;

void convetit(x)
{
  var hex;
  var oct;
  var bin;

  if(validator.ip(myController.text) == true)
    {

      List sp = x.split('.');

       hex = int.parse(sp[0]).toRadixString(16) +int.parse(sp[1]).toRadixString(16) +int.parse(sp[2]).toRadixString(16) +int.parse(sp[3]).toRadixString(16);
       oct = int.parse(sp[0]).toRadixString(8).padLeft(4, '0') +"."+ int.parse(sp[1]).toRadixString(8).padLeft(4, '0') +"."+ int.parse(sp[2]).toRadixString(8).padLeft(4, '0') +"."+ int.parse(sp[3]).toRadixString(8).padLeft(4, '0');
       bin = int.parse(sp[0]).toRadixString(2).padLeft(8, '0')  +"."+ int.parse(sp[1]).toRadixString(2).padLeft(8, '0')  +"."+ int.parse(sp[2]).toRadixString(2).padLeft(8, '0')  +"."+ int.parse(sp[3]).toRadixString(2).padLeft(8, '0');
      myhex.text = "0x"+hex.toString().toUpperCase();
myoct.text = oct.toString();
myint.text = bin.toString();

    }else
      {
        _isvisible = false;
      }



}

 ipchecker() {
   SystemChannels.textInput.invokeMethod('TextInput.hide');
   _isvisible = false;
   if (validator.ip(myController.text)) {
     setState(() {
       _isvisible = !_isvisible;
     });
     ipping.text = "";
    // var result =   FlutterNetworkConnection.startWithType('http://baidu.com', type: 'Ping');
    // print('当前网络质量：' + result);
     final ping = Ping(myController.text, count: 5);

     // [Optional]
     // Preview command that will be run (helpful for debugging)
     print('Running command: ${ping.command}');

     // Begin ping process and listen for output
     ping.stream.listen((event) {
       ipping.text = "# " + ipping.text + "\n" + event.toString();
     });
   } else {
     Fluttertoast.showToast(
         msg: "This IP wont looks correct...#",
         toastLength: Toast.LENGTH_SHORT,
         gravity: ToastGravity.CENTER,
         timeInSecForIosWeb: 1,
         backgroundColor: Colors.black45,
         textColor: Colors.greenAccent,
         fontSize: 16.0
     );
     _isvisible = false;
   }
 }


  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(1.0),
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
      children: [
       Text("#-#- Unit Convertion IP -#-#",style:
       GoogleFonts.robotoMono(color: Colors.white54,fontSize: 15, fontWeight: FontWeight.bold),
       ),
       const SizedBox(height: 10),
            TextField(

              onChanged:(val)=> convetit(val),
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
                fontSize: 17.0,
                height: 1.0,
                color: Colors.greenAccent
            ),),
        const SizedBox(height: 10),
            TextField(
keyboardType: TextInputType.number,
keyboardAppearance: Brightness.dark,
controller: myhex,
decoration: const InputDecoration(
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
        style:const TextStyle(
                fontSize: 17.0,
                height: 1.0,
                color: Colors.greenAccent
            ),
        ),const SizedBox(height: 10),
            TextField(

             controller: myoct,

decoration: const InputDecoration(
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
        style: const TextStyle(
                fontSize: 17.0,
                height: 1.0,
                color: Colors.greenAccent
            ),
        ),const SizedBox(height: 10),
            TextField(
controller: myint,

decoration:const InputDecoration(
          isDense: true,
          floatingLabelBehavior: FloatingLabelBehavior.always,

          fillColor: Colors.black45,
          suffixText: "#",
          hintStyle:const TextStyle(color: Colors.grey,letterSpacing: 5),
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
        style: const TextStyle(
                fontSize: 17.0,
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
        /*  OutlinedButton(onPressed: ()=>{},
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 1.0, color: Colors.greenAccent),
              ),
              child:  Text("NSLookup",style:
            GoogleFonts.robotoMono(color: Colors.white54,fontSize: 15),)
              ,),
            OutlinedButton(onPressed: ()  async {
              //ipping.text = "";

              //if(validator.ip(myController.text) == true) {

             await FlutterNetworkConnection.instance.start("8.8.8.8",sourceData: (String result){
               setState(() {
                 _isvisible = true;
                 ipping.text = result;
                 print("praveen"+result);
               });
                });



             // }
            },
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 1.0, color: Colors.greenAccent),
              ),
              child:  Text("TraceRoute",style:
            GoogleFonts.robotoMono(color: Colors.white54,fontSize: 15),)
              ,),
      */
          ],
        ),

       const  SizedBox(height: 20,),
       Expanded (child:Visibility(
          visible:_isvisible,
          child: Container(
          constraints: const BoxConstraints(maxHeight: 200),
          child: SingleChildScrollView(
            child: TextField(
              maxLines:null,
              controller: ipping,
              decoration:const InputDecoration(
                isDense: true,
                floatingLabelBehavior: FloatingLabelBehavior.always,

                fillColor: Colors.black45,
                focusColor: Colors.greenAccent,
                filled: true,
                focusedBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.greenAccent)),
              ) ,
              enabled: false,
              keyboardType: TextInputType.multiline,

              style:
              GoogleFonts.robotoMono(color: Colors.white54,fontSize: 15),
            ),
          ),
        ),
        )),


      ],
    ),

    );
      //Center(
      //child: Text("hello World convert",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 24),),);
  }


}