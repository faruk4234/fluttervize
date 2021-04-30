import 'package:flutter/material.dart';


class Hakinda extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Container(
    color:Colors.orange,
     padding: EdgeInsets.all((20.0)),
      child: Container(color:Colors.blue,
      child: Center(
        child: Text(
  "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193301072 numaralı Öğrenci Öğrenir tarafından 30 Nisan 2021 günü yapılmıştır.",
  style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 0.6),
)
      ),
        )
      );
  }

} 