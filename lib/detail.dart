import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String name;
  final String region;
  final String img;
  final String reting;
  final String info;

  Detail(this.name, this.region, this.img, this.reting, this.info, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF031F2B),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Color(0xFF031F2B),
              expandedHeight: 400.0,
              floating: true,
              pinned: true,
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0x4DFFFFFF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Padding(
                  padding: const EdgeInsets.only(right: 20, top: 15, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 35),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            region,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        reting,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        size: 24,
                        color: Color(0xFFE58F3F),
                      )
                    ],
                  ),
                ),
                background: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                  child: Container(
                    color: Color(0xFF031F2B),
                    child: Image.asset(
                      img,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Batafsil",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              RichText(
                text: TextSpan(
                  text: info,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xFF5EDFFF), width: 2)),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.map_outlined,
                              color: Color(0xFF5EDFFF),
                              size: 20,
                            ),
                          ),
                          Center(
                              child: Text(
                            "Joylashuv",
                            style: TextStyle(color: Colors.white),
                          ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xFF5EDFFF), width: 2)),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.language,
                              color: Color(0xFF5EDFFF),
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Center(
                                child: Text(
                              "Manba",
                              style: TextStyle(color: Colors.white),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
