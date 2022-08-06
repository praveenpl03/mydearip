import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Classes extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(3),
        margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
      child:Column(
        children: [  Text("#-#- IP Class-#-#",style:
        GoogleFonts.robotoMono(color: Colors.white54,fontSize: 15, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10,),
          Table(
            border: TableBorder.all(
                color: Colors.greenAccent,
                style: BorderStyle.solid,
                width: 1.5),
            columnWidths: {
              0: FlexColumnWidth(1),
              1: FlexColumnWidth(4),

            },
            children:  [

              TableRow(
                  children: [
                    Center( child: Text("CLASSES",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Center(child:Text("RANGE",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                  ]

              ) ,  TableRow(

                  children: [
                    Center(child: Text("A",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Text("1.0.0.0 to 126.255.255.255",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),),
                  ]

              ),TableRow(

                  children: [
                    Center(child: Text("B",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Text("128.0.0.0 to 191.255.255.255",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),),
                  ]

              ),TableRow(

                  children: [
                    Center(child: Text("C",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Text("192.0.0.0 to 223.255.255.255",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),),
                  ]

              ),TableRow(

                  children: [
                    Center(child: Text("D",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Text("224.0.0.0 to 239.255.255.255",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),),
                  ]

              ),TableRow(

                  children: [
                    Center(child: Text("E",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Text("240.0.0.0 to 239.255.255.254",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),),
                  ]

              ),TableRow(

                  children: [
                    Center(child: Text("LoopBack",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 12),)),
                    Text("127.0.0.1",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),),
                  ]

              ),TableRow(

                  children: [
                    Center(child: Text("Broadcast",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 12),)),
                    Text("255.255.255.255",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),),
                  ]

              ),TableRow(

                  children: [
                    Center(child: Text("All Network",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 12),)),
                    Text("0.0.0.1 to 255.255.255.255",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),),
                  ]

              ),
            ],
          ),
          const SizedBox(height: 10,),
          Text("#-#- Ports On Reserve -#-#",style:
          GoogleFonts.robotoMono(color: Colors.white54,fontSize: 15, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10,),
          Table(


            border: TableBorder.all(
                color: Colors.greenAccent,
                style: BorderStyle.solid,
                width: 1.5),
            columnWidths: {
              0: FlexColumnWidth(1),
              1: FlexColumnWidth(4),

            }
            ,
            children:  [

              TableRow(
                  children: [
                    Center( child: Text("Port",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Center(child:Text("Protocol",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                  ]

              ) ,  TableRow(

                  children: [
                    Center(child: Text("53",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Padding(padding:EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child:Text("DNS",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                  ]

              ),TableRow(

                  children: [
                    Center(child: Text("67/68",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Padding(padding:EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child:Text("DHCP",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                  ]

              ),TableRow(

                  children: [
                    Center(child: Text("80",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Padding(padding:EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child:Text("HTTP",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                  ]

              ),TableRow(

                  children: [
                    Center(child: Text("443",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Padding(padding:EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child:Text("SSL/TLS",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                  ]

              ),TableRow(

                  children: [
                    Center(child: Text("23",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Padding(padding:EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child:Text("TELNET",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                  ]

              ),TableRow(

                  children: [
                    Center(child: Text("22",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Padding(padding:EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child:Text("SSH",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                  ]

              ),TableRow(

                  children: [
                    Center(child: Text("20/21",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Padding(padding:EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child:Text("FTP",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                  ]

              ),TableRow(

                  children: [
                    Center(child: Text("25",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Padding(padding:EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child:Text("SMTP",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                  ]

              ),TableRow(

                  children: [
                    Center(child: Text("110",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Padding(padding:EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child:Text("POP3",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                  ]

              ),TableRow(

                  children: [
                    Center(child: Text("161/162",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Padding(padding:EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child:Text("SNMP",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                  ]

              ),TableRow(

                  children: [
                    Center(child: Text("520",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Padding(padding:EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child:Text("RIP/RIPv2",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                  ]

              ),TableRow(

                  children: [
                    Center(child: Text("179",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18),)),
                    Padding(padding:EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child:Text("BGP",style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 18), )),
                  ]

              ),
            ],
          ),
        ],
      )

    );


  }

}