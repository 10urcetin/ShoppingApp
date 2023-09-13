import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/constants.dart';
import 'package:shop/screens/home/components/pop%C3%BClerler.dart';
import 'package:shop/screens/home/components/yeni_%C3%BCr%C3%BCnler.dart';
import 'components/categories.dart';
import 'components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key ? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,//Transparent rengini kaldırdık
        leading: IconButton(onPressed: (){
        },
        icon: SvgPicture.asset("assets/icons/menu.svg"),

      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/icons/Location.svg"),
          const SizedBox(width: 8,),
          Text("Törekent - Ankara",style: Theme.of(context).textTheme.subtitle2,),
      ]), 
      actions: [
        IconButton(onPressed: (){
        }, icon: SvgPicture.asset("assets/icons/Notification.svg"))
      ],
          
    ),
    body: SingleChildScrollView(
      
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Keşfet",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const Text(
              "Aradığın ürün bir tık uzağında...",
              style: TextStyle(fontSize: 18),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const Categories(),
            const NewArrivalProducts(),
            const PopularProducts(),
          ],
        ),
      ),
    );
  }
}