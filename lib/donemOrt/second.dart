import 'package:first/donemOrt/Dersler.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  TextEditingController clasName = new TextEditingController();
  TextEditingController vize = new TextEditingController();
  TextEditingController finall = new TextEditingController();
  TextEditingController kredi = new TextEditingController();

    var datas =[];
  datas=ModalRoute.of(context).settings.arguments;
   String name=datas[0];
    int no=datas[1];
    String count =datas[2];
    int turn =0;
    var notlar=[];
    return Scaffold(
      appBar: AppBar(
        title: Text('notlarını gir lütfen :)'),
        backgroundColor: Colors.green,
      ),
    body: new Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: new Column(children: <Widget>[
              Text(
                turn.toString(),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: kredi,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Ders Kaç kredi ?'
              ),
            ),
             TextFormField(
               controller: clasName,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Dersin Adı Ne'
              ),
            ),
             TextFormField(
               controller: vize,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Vize Notun kaç?'
              ),
            ),
              TextFormField(
                controller: finall,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Final veya büt notun kaç ?'
              ),
            ),
              new RaisedButton(
                onPressed: () => {
                  notlar.add([clasName.text,kredi.text,vize.text,finall.text]),
                  turn=turn+1,

           if(turn<int.parse(count))
           { 
             clasName.clear(),
             kredi.clear(),
             vize.clear(),
             finall.clear(), 
             showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(turn.toString()+'.dersin notlarını girdiniz'),
        );
      } ) 
           }else {
            Navigator.pushReplacement(
            context,
            MaterialPageRoute(
            builder: (context) => Dersler(),
            settings: RouteSettings(
            arguments:notlar
            ),
            ))
           },
       print(turn.toString()),
             },
                child: new Text('ciguli'),
              ),

      ]),
          )),
    );
  }
}