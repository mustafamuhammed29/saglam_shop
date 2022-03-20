import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  var myarr_category = [
    {
      "cat_id": "1",
      "cat_name": "cat1",
      "cat_image": "images/category/cat1.png"
    },
    {
      "cat_id": "2",
      "cat_name": "cat2",
      "cat_image": "images/category/cat2.png"
    },
    {
      "cat_id": "3",
      "cat_name": "cat3",
      "cat_image": "images/category/cat3.png"
    },
    {
      "cat_id": "3",
      "cat_name": "cat3",
      "cat_image": "images/category/cat3.png"
    },
    {
      "cat_id": "5",
      "cat_name": "cat5",
      "cat_image": "images/category/cat5.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Gatekategory"),
        leading: InkWell(
          onTap:(){Navigator.of(context).pop();
          } ,

          child: Icon(Icons.arrow_back_ios,color: Colors.black87,),

        ),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: myarr_category.length,
            itemBuilder: (BuildContext context, int index) {
              return SingleCategory(
                  cat_id: myarr_category[index]["cat_id"],
                  cat_image: myarr_category[index]["cat_image"],
                  cat_name: myarr_category[index]["cat_name"]);
            }),
      ),
    );
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
        children: [
          InkWell(
            onTap: () {
            /* Navigator.push(context, MaterialPageRoute(builder: (context)=>SubCategory()));*/
            },
            child: ListTile(
              leading: Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.5),
                    color: Colors.white70),
                child: Image.asset(cat_image),
              ),
              title: Text(
                cat_name,
                style: TextStyle(fontSize: 17),
              ),
              trailing: Icon(Icons.arrow_back_ios),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
