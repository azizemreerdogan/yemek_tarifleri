import 'package:empty_project/101/yemek_tarifi_page.dart';
import 'package:flutter/material.dart';

class YemeklerSiraliView extends StatefulWidget {
  const YemeklerSiraliView({super.key});

  @override
  State<YemeklerSiraliView> createState() => _YemeklerSiraliViewState();
}

class _YemeklerSiraliViewState extends State<YemeklerSiraliView> {
  final String yemekUrl = 'https://cdn.yemek.com/mnresize/940/940/uploads/2022/08/100-gram-kiymayla-karniyarik-one-cikan.jpg';
  int i= 10;
  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Text('Yemekler',style: Theme.of(context).appBarTheme.titleTextStyle),
        backgroundColor: Colors.red,
      ),
      body: Column(children: [
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              ExpansinTileYemekler(),
              ExpansinTileYemekler(),
              
            ],),
        )
      ],)
    );
  }
}

class YemekCard extends StatefulWidget {
  const YemekCard({super.key});
  

  @override
  State<YemekCard> createState() => _YemekCardState();
}

class _YemekCardState extends State<YemekCard> {
  
  int i = 45;
  final String yemekUrl = 'https://cdn.yemek.com/mnresize/940/940/uploads/2022/08/100-gram-kiymayla-karniyarik-one-cikan.jpg';
  
  @override
  Widget build(BuildContext context) {
    return Card(
            borderOnForeground: false,
            elevation: 0,
            surfaceTintColor: Theme.of(context).cardColor,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 120,
                  width: 100,
                  decoration: const ShapeDecoration(shape: StadiumBorder()),
                  child: CircleAvatar(radius: 50,backgroundImage: NetworkImage(yemekUrl)),
                          ),
                const SizedBox(width: 20,),
                 Column(
                  children: [
                    Text('Karniyarik',style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text('Tahmini Sure $i'),
                    
                  ],
                ),
                
           
                          ],
            
            )

          );
  }
}

class ExpansinTileYemekler extends StatefulWidget {
  const ExpansinTileYemekler({super.key});

  @override
  State<ExpansinTileYemekler> createState() => _ExpansinTileYemeklerState();
}

class _ExpansinTileYemeklerState extends State<ExpansinTileYemekler> {
  @override
  Widget build(BuildContext context) {
    return  ExpansionTile(title: YemekCard(),
            children: [
              Column(
                children: [
                  Text('3 adet...'),
                  Text('2 adet...'),
                  Text('1 adet su bardaği'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        child: IconButton(onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => YemekTarifPage()));
                        }, icon: Icon(Icons.arrow_circle_right_sharp,size: 48,color: Colors.red,)),
                        
                      ),
                    ],
                  )
                ],
              )
            ],);
  }
}