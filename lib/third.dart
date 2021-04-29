import 'package:first/second.dart';
import 'package:flutter/material.dart';


class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      TextEditingController count = new TextEditingController();
var datas =[];
  datas=ModalRoute.of(context).settings.arguments;
   String name=datas[0];
    int no=datas[1];

    var column = Column(
                children: <Widget>[

               Padding(
            padding: EdgeInsets.only(left:2,bottom:0,right: 20,top: 40),
                 child: Center(
                   
                   child: Text(
              '      0 < X <= 49   "FF" ',
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
            
            
                      TextField(
                        controller:count ,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Aldıgın ders sayısını gir',
              ),
              keyboardType: TextInputType.number,
            ),

             RaisedButton(
            child: Text('hesapla '),
            onPressed: () {
              datas.add(count.text);
               Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => SecondRoute(),
            settings: RouteSettings(
              arguments: datas
            ),
            ));
            },
          ),



                ],
              );
        return Scaffold(
          appBar: AppBar(
            title: Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Merhaba '+name+'  hadi dönem ortalamanı hesaplayalım :)'),
            )),
            backgroundColor: Colors.red,
          ),
          body: Form(
              child:column
              
      
      ),
    );
  }
}