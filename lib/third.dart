import 'package:flutter/material.dart';

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var column = Column(
                children: <Widget>[

               Padding(
            padding: EdgeInsets.only(left:2,bottom:0,right: 20,top: 40),
                 child: Center(
                   
                   child: Text(
              ' 0 < X <= 49   "FF" ',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: (TextStyle(fontWeight: FontWeight.bold,fontSize: 18 ,color:Colors.purple)),
            ),
                 ),
               ),
                 
              Text(
              '49 < X <= 54   "DD" ',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
            ),
    
                 
              Text(
              '54 < X <= 59   "DC" ',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
            ),
    
             Text(
              '59 < X <= 65   "CC" ',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
            ),
    
             Text(
              '65 < X <= 72   "CB" ',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
            ),
    
            Text(
              '74 < X <= 80   "BB" ',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
            ),
    
             Text(
              '80 < X <= 88   "BA" ',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
            ),
    
              Text(
              '88 < X <= 100  "AA" ',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
            ),
    
             Padding(
               padding: const EdgeInsets.only(left:2,bottom:0,right: 20,top: 20),
               child: Text(
                'bu dönem kaç ders alıyorsun? ',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),
            ),
             ), 

                ],
              );
        return Scaffold(
          appBar: AppBar(
            title: Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Merhaba '+ModalRoute.of(context).settings.arguments.toString()+'  hadi dönem ortalamanı hesaplayalım :)'),
            )),
            backgroundColor: Colors.red,
          ),
          body: Form(
              child: column
      
      ),
    );
  }
}