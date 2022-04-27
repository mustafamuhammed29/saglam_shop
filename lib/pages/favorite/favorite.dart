import 'package:flutter/material.dart';
import 'package:saglam_shop/pages/product/productdetail.dart';



class Favorite extends StatefulWidget {

  @override
  State<Favorite> createState() => _FavoriteState();
}
var myarr_product = [
  {
    "pro_id": "1",
    "pro_name": "product1",
    "pro_desc": "productproductproduct1",
    "pro_image": "images/product/1.png"
  },
  {
    "pro_id": "2",
    "pro_name": "product2",
    "pro_desc": "productproductproduct1",
    "pro_image": "images/product/2.png"
  },
  {
    "pro_id": "3",
    "pro_name": "product3",
    "pro_desc": "productproductproduct1",
    "pro_image": "images/product/3.png"
  },
  {
    "pro_id": "4",
    "pro_name": "product4",
    "pro_desc": "productproductproduct1",
    "pro_image": "images/product/4.png"
  },
];

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("fa"),
      ),
      body: Container(
        child: GridView.builder(
          itemCount: myarr_product.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.8
            ),
            itemBuilder: (BuildContext context,int index){
              return SingleProduct(
                pro_id: myarr_product[index]["pro_id"],
                pro_name: myarr_product[index]["pro_name"],
                pro_image: myarr_product[index]["pro_image"],
                pro_desc: myarr_product[index]["pro_desc"],

              );
            }
        ),
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_desc;
  final String pro_image;

  SingleProduct({this.pro_id, this.pro_name, this.pro_desc, this.pro_image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductDetail()));
      },
      child: new Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        padding: EdgeInsets.all(9.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.topRight,
                child: new Icon(Icons.favorite_border,color: Colors.red,)),
            new Container(
              width: MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height/2-177.7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(pro_image))),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: new Text(
                pro_name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
           Row(
             children: [
               Text(pro_id),
               Expanded(child: Text("")),
               Text(pro_id),
               Icon(Icons.star_border,color: Colors.yellow,)
             ],
           )
          ],
        ),
      ),
    );
  }
}
