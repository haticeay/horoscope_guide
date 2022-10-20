import 'package:flutter/material.dart';
import 'package:horoscope_guide/model/burc.dart';
import 'burc_detay.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle=Theme.of(context).textTheme;
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: (){
          Navigator.pushNamed(context, 'burcDetay',
              arguments:listelenenBurc);
          },
          leading: Image.asset("images/"+listelenenBurc.burcKucukResim),
          title: Text(
              listelenenBurc.burcAdi, style: myTextStyle.headline6,),
          subtitle: Text(
              listelenenBurc.burcTarihi, style: myTextStyle.subtitle1,),
          trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.purple,),
        ),
      ),

    );
  }
}
