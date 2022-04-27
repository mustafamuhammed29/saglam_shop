import 'package:flutter/material.dart';
import 'package:saglam_shop/pages/shopping/shopping.dart';

class ProductDetail extends StatefulWidget {
  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  Widget HeaderBuild() {
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[100],
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1))
                  ],
                  borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.red,
                  ))),
                   Expanded(child: Text("")),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[100],
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1))
                  ],
                  borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),

                  onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Shopping()));
                  })),
        ],
      ),
    );
  }

  Widget imageProduct() {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.red,
                  spreadRadius: 1,
                  blurRadius: 0,
                  offset: Offset(0, 1))
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0),
            )),
        child: Column(children: [
          Image.asset("images/product/3.png"),
          Padding(padding: EdgeInsets.only(top: 0.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[100],
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1))
                      ],
                      borderRadius: BorderRadius.circular(15)),

          )
        ])]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: ListView(
          children: <Widget>[
            HeaderBuild(),
            imageProduct(),
            Container(
              padding: EdgeInsets.all(35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Text(
                    "Asus n550jk",
                    style: TextStyle(fontSize: 25),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 15.0)),
                  new Row(
                    children: [
                      new Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      new Text("7"),
                      Expanded(child: Text("")),
                      new Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      ),
                      new Text("4.5"),
                    ],
                  ),
                  new Text(
                    " paragraphs consist of three parts: the topic sentence,paragraphs consist of three parts: the topic sentence body sentences, and the concluding o",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),

      bottomNavigationBar:
      Container(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Row(
            children: <Widget>[
              new Text(
                " 5000TL ",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),

              Expanded(child: Text("")),
              Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1))
                    ],
                    borderRadius: BorderRadius.circular(40)),
                margin: EdgeInsets.all(1),
                padding: EdgeInsets.all(5),
                child: Text(
                  "Sepata Ekle ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:15,
                      color: Colors.white),
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ), onPressed: () {  },
                ),
              ),
            ],
          ),
        ),
        padding: EdgeInsets.only(left: 50, right: 30),
        height: 60.0,
        decoration: BoxDecoration(
            color: Colors.red[300],
            boxShadow: [
              BoxShadow(
                  color: Colors.red,
                  spreadRadius: 0,
                  blurRadius: 0,
                  offset: Offset(0, 3))
            ],
            borderRadius: BorderRadius.circular(50)),

      ),

    );

  }
}