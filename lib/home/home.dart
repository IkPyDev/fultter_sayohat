import 'package:flutter/material.dart';
import 'package:untitled2/detail.dart';
import 'package:untitled2/home/conpe/item_home_horizontal.dart';
import 'package:untitled2/home/conpe/item_home_vertical.dart';

import 'data.dart';

class Home extends StatefulWidget {

  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> tags = ["Barjasi", "Tog'", "Daja", "Shaxar"];

  final List<Data> _allItems = Const.list;

  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF031F2B),
      appBar: AppBar(
        backgroundColor: Color(0xFF031F2B),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            "Sayohat",
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25,left: 20,right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Qidiring ... ',
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF5EDFFF),
                          borderRadius: BorderRadius.circular(15),

                        ),

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Barjasi",
                              style: TextStyle(color: Colors.black),
                            ),
                          )),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),),
                          child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Tog'", // "Barjasi" o'rniga name o'zgaruvchisini ishlatdim
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Daja'", // "Barjasi" o'rniga name o'zgaruvchisini ishlatdim
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Shaxar'",
                            // "Barjasi" o'rniga name o'zgaruvchisini ishlatdim
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Mashxur joylar",
                    style: (TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                  ),
                ),
                Container(
                  height: 120,
                  child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Detail(
                                  _allItems[index].name,
                                  _allItems[index].name,
                                  _allItems[index].image,
                                  _allItems[index].rating,
                                  _allItems[index].desc,
                                ),),);
                          },
                          child: ItemHomeHorizontal(
                            _allItems[index].name,
                            _allItems[index].name,
                            _allItems[index].image,

                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 15,
                        );
                      },
                      itemCount: _allItems.length),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Barchasi",
                    style: (TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                  ),
                ),
                Container(
                  // height: 450,
                  child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => Detail(
                              _allItems[index].name,
                              _allItems[index].name,
                              _allItems[index].image,
                              _allItems[index].rating,
                              _allItems[index].desc,
                            ),),);
                          },
                          child: ItemHomeVertical(
                            _allItems[index].name,
                            _allItems[index].name,
                            _allItems[index].image,

                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 15,
                        );
                      },
                      itemCount: _allItems.length),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
