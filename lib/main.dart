import 'dart:html';

import 'package:composicao_facil/data/data.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Composição fácil",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<SliderModel> slides = List<SliderModel>();
  int currentIndex = 0;

  PageController pageController = new PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
    slides = getSlides();
  }

  Widget pageIndexIndicator(bool isCurrentPage){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
        borderRadius: BorderRadius.circular(12)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: slides.length,
        onPageChanged: (value){
          setState(() {
          currentIndex = value;
          });
        },
        itemBuilder: (context, index){
        return SliderTile(
          imageAssetPath: slides[index].getImageAssetPath(),
          title: slides[index].getTitle(),
          desc: slides[index].getDesc(),
        ); 
        },
        ),
        bottomSheet: currentIndex != slides.length - 1 ? Container(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Text("PULAR"),
                onTap: (){
                  pageController.animateToPage(slides.length - 1, duration: Duration(milliseconds: 400), curve: Curves.linear);
                },
                ),
              Row(
                children: <Widget>[
                  for(int i = 0; i< slides.length; i++)currentIndex == i ? pageIndexIndicator(true) : pageIndexIndicator(false)
                  
              ],),
              InkWell(
                child: Text("PRÓXIMO"),
                onTap: (){
                  pageController.animateToPage(currentIndex + 1, duration: Duration(milliseconds: 400), curve: Curves.linear);
                },
                ),
            ],
          ),
        ) : Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: 60,
          color: Colors.blue,
          child: Text("Entrar",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600
          ),),) ,
    );
  }
}


class SliderTile extends StatelessWidget {
  String imageAssetPath, title, desc;

  SliderTile({this.imageAssetPath, this.title, this.desc});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageAssetPath),
          SizedBox(height: 20),
          Text(title,
          style: TextStyle(fontWeight: FontWeight.w500,
          fontSize: 20),),
          SizedBox(height: 12),
          Text(desc,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),)
        ]
      ),
    );
  }
}