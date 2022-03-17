import 'package:flutter/material.dart';
import 'package:saglam_shop/drawer/mydrawer.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _KeyDrawer = GlobalKey<ScaffoldState>();
  var myarr_product = [
    {
      "pro_id": "1",
      "pro_name": "product1",
      "pro_desc": "productproductproduct1",
      "cat image": "images/category/1.png"
    },
    {
      "pro_id": "2",
      "pro_name": "product2",
      "pro_desc": "productproductproduct1",
      "cat image": "images/category/2.png"
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "productproductproduct1",
      "cat image": "images/category/3.png"
    },
  ];
  var myarr_category = [
    {
      "cat_id": "1",
      "cat_name": "cat1",
      "cat image": "images/category/cat1.png"
    },
    {
      "cat_id": "2",
      "cat_name": "cat2",
      "cat image": "images/category/cat2.png"
    },
    {
      "cat_id": "3",
      "cat_name": "cat3",
      "cat image": "images/category/cat3.png"
    },
    {
      "cat_id": "4",
      "cat_name": "cat4",
      "cat image": "images/category/cat4.png"
    },
    {
      "cat_id": "5",
      "cat_name": "cat5",
      "cat image": "images/category/cat5.png"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            key: _KeyDrawer,
            endDrawer: MyDrawer(),
            body: Directionality(
                textDirection: TextDirection.ltr,
                child: Column(children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "konunuz",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Adreslerim",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.red,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  new Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              _KeyDrawer.currentState.openEndDrawer();
                            },
                            child: new Icon(Icons.menu)),
                        Expanded(
                            child: new Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(25.0)),
                          child: new TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: " ",
                                suffixIcon: Icon(Icons.search)),
                          ),
                        )),
                      ],
                    ),
                  ),
                  new Container(
                    width: MediaQuery.of(context).size.width / 1,
                    height: 100,
                    child: ListView.builder(
                        itemCount: myarr_category.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return SingleCategory(
                            cat_id: myarr_product[index]["cat_id"],
                            cat_image: myarr_product[index]["cat_image"],
                            cat_name: myarr_product[index]["cat_name"],
                          );
                        }),
                  ),
                  new Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Container(
                          child: Text(" "),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("images/category/2.png"))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        new Text(
                          "pro name",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        new Text(
                          "pro name name name name  name",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ]))));
  }
}



class SingleCategory extends StatelessWidget {
  final String cat_id;
  final String cat_name;
  final String cat_image;

  SingleCategory({this.cat_id, this.cat_name, this.cat_image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.5),
                color: Colors.white70),
            child: Image.asset(cat_image),
          ),
          Text(
            cat_name,
            style: TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }
}
