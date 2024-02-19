
import 'package:flutter/material.dart';

class YemekTarifPage extends StatelessWidget {
  const YemekTarifPage({super.key});
   final String yemekUrl = 'https://cdn.yemek.com/mnresize/940/940/uploads/2022/08/100-gram-kiymayla-karniyarik-one-cikan.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yemek Tarifi',style: Theme.of(context).appBarTheme.titleTextStyle,),
        iconTheme: const IconThemeData(color: Colors.white),),
      body: Column(
        children: [
          const SizedBox(height: 54,),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 200,
              width: 200,
              alignment: Alignment.center,
              child: CircleAvatar(radius: 160,backgroundImage: NetworkImage(yemekUrl)),
            ),
          ),
          const SizedBox(height: 18,),
          TextStyles(text: 'Karniyarik').textKoyuTon(),
          const SizedBox(height: 12,),
          TextStyles(text: 'Tahmini Sure').textGriTon(),
          const SizedBox(height: 4,),
          TextStyles(text: '45 Dakika').textKoyuTonKucuk(),
          const SizedBox(height: 32,),
          TextStyles(text: '3 adet ...').textKoyuTonKucuk(),
          TextStyles(text: '2 adet ...').textKoyuTonKucuk(),
          TextStyles(text: '1 adet su bardagi').textKoyuTonKucuk(),
          const SizedBox(height: 86,),
          ElevatedButton(onPressed: () {
            
          },
          style:  const ButtonStyle(backgroundColor:MaterialStatePropertyAll<Color>(Colors.red),),
           child: const Text('Tarifi Gor',style: TextStyle(color: Colors.white),),
          
          )
        ],
      ), 
      
    );
  }
}


class TextStyles{
  TextStyles({required this.text});
  String text;
  Text textKoyuTon() {
    return Text(text,style: const TextStyle(color: Colors.black,fontSize: 24),);
  }
  Text textGriTon() {
    return Text(text,style: const TextStyle(color: Colors.grey,fontSize: 24),);
  }
  Text textKoyuTonKucuk() {
    return Text(text,style: const TextStyle(color: Colors.black,fontSize: 18),);
  }
}