import 'package:fooddekho/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// Sample products added, there will be approx 2 million products
  List<Product> _products = [
    Product('Aachi Aaloo Muttar','100','112.0','4.800000000000001','1.6','0.0','0.0','0.0','14.4','0.0','0.0','2.4000000000000004','0.0','0.0','0.0'),
Product('Aashirvaad Roti','100','33.333333333333336','0.2777777777777778','0.0','0.0','0.0','0.0','6.111111111111112','0.0','0.0','1.6666666666666667','0.0','0.0','0.0'),
Product('Aashirvaad Chapati','100','170.0','2.0','0.0','0.0','0.0','0.0','32.0','1.0','0.0','6.0','140.0','0.0','140.0'),
Product('Aashirvaad Aata','100','363.0','1.7','0.0','0.0','0.0','0.0','75.1','5.0','14.2','11.8','0.0','0.0','0.0'),
Product('Aashirvaad Whole Wheat Atta','100','367.0','1.7','0.0','0.0','0.0','0.0','77.0','0.0','10.5','10.9','0.0','0.0','0.0'),
Product('Aashirvaad Multigrain Atta','100','366.0','1.97','0.0','0.0','0.0','0.0','72.48','6.18','16.3','14.43','0.0','0.0','0.0'),
Product('Aashirvaad Rajma Masala','100','147.0','6.2','0.0','0.0','0.0','0.0','17.0','6.2','0.0','5.9','0.0','0.0','0.0'),
Product('Aashirvaad Multigrain Sugar Release Control','100','371.0','2.0','0.0','0.0','0.0','0.0','71.6','4.3','16.5','16.5','0.0','0.0','0.0'),
Product('Aashirvaad Sharbati Atta','100','368.0','1.9','0.0','0.0','0.0','0.0','77.6','6.2','11.1','10.1','0.0','0.0','0.0'),
Product('Aavin Milk','100','74.0','4.5','0.0','0.0','0.0','0.0','4.7','0.0','0.0','3.2','0.0','0.0','0.0'),
Product('Aavin Buttermilk','100','29.0','1.3','0.0','0.0','0.0','0.0','2.5','0.0','0.0','2.1','0.0','0.0','0.0'),
Product('Aavin Green Magic','100','74.0','4.5','4.5','0.0','0.0','0.0','4.7','0.0','0.0','3.2','700.0','0.0','700.0'),
Product('Aavin Kulfi','100','227.0','10.1','0.0','0.0','0.0','0.0','28.2','16.0','0.0','5.9','0.0','0.0','0.0'),
Product('Aavin Paneer','100','301.0','25.0','0.0','0.0','0.0','0.0','2.0','0.0','0.0','17.0','0.0','0.0','0.0'),
Product('Abbott Ensure','100','410.0','11.5','4.0','0.2','4.5','2.6','59.83','14.7','0.0','15.1','314.0','0.0','314.0'),
Product('Abbzorb Nutrition Whey Protein Isolate','100','381.8181818181818','0.5151515151515151','0.303030303030303','0.0','0.0','0.0','3.939393939393939','0.0','0.0','90.0','151.5151515151515','0.0','151.5151515151515'),
Product('Abbzorb Nutrition Whey Protein','100','375.0','2.4','1.6','0.0','0.0','0.0','10.0','0.0','0.0','79.0','150.0','0.0','150.0'),
Product('Abbzorb Nutrition Protein Bar','100','380.0','14.0','9.2','0.0','0.0','0.0','48.4','5.0','10.6','22.0','0.0','0.0','0.0'),
Product('Ace Blend Protein Powder','100','357.1428571428572','2.857142857142857','1.4285714285714286','0.0','0.8571428571428571','1.142857142857143','25.714285714285715','0.0','0.0','57.142857142857146','1028.571428571429','0.0','1028.571428571429'),
Product('Act II Classic Salted Popcorn','100','507.0','26.0','12.0','0.0','0.0','0.0','60.0','0.0','0.0','10.0','0.0','0.0','0.0'),
Product('Act II Butter Popcorn','100','507.0','26.0','0.0','0.0','0.0','0.0','60.0','0.0','0.0','9.0','0.0','0.0','0.0'),
Product('Act II Golden Sizzle Popcorn','100','493.0','29.0','13.0','0.0','12.0','4.0','55.0','0.0','10.0','8.0','1500.0','0.0','1500.0'),
Product('Act II Spicy Pudina Popcorn','100','455.0','19.0','10.0','0.0','7.0','2.0','66.0','3.4','10.0','10.0','900.0','0.0','900.0'),
Product('Act II Sweet Corn','100','84.0','1.7','0.3','0.0','0.5','0.9','14.3','4.7','4.0','3.0','400.0','0.0','400.0'),
Product('Ahmad Tea English Tea No. 1','100','1.0','0.0','0.0','0.0','0.0','0.0','0.3','0.0','0.0','0.0','3.0','0.0','3.0'),
Product('Al Kabeer Vegetable Samosas','100','226.0','7.5','0.0','0.0','0.0','0.0','34.9','0.0','0.0','5.8','0.0','0.0','0.0'),
Product('Aliva Multigrain Waves','100','464.0','21.0','0.0','0.0','0.0','0.0','63.6','0.0','7.0','8.6','0.0','0.0','0.0'),
Product('Almarai Laban','100','60.0','3.3','2.2','0.0','0.0','0.0','4.7','4.7','0.0','3.0','45.0','0.0','45.0'),
Product('Alpino Natural Peanut Butter','100','625.0','49.0','12.0','0.0','21.0','16.0','18.0','3.0','6.0','30.0','25.0','0.0','25.0'),
Product('Alpino Chocolate Peanut Butter','100','632.0','50.0','13.0','0.0','25.0','12.0','25.0','12.0','5.0','22.0','71.0','0.0','71.0'),
Product('Alpino Peanut Butter','100','645.0','52.0','10.0','0.0','0.0','0.0','17.0','4.0','8.0','29.0','60.0','0.0','60.0'),
Product('Alpino Peanut Butter Powder','100','433.33333333333337','10.0','0.0','0.0','0.0','0.0','30.0','0.0','0.0','53.333333333333336','0.0','0.0','0.0'),
Product('Alpino Peanut Butter Smooth','100','625.0','49.0','12.0','0.0','21.0','16.0','18.0','3.0','6.0','30.0','25.0','0.0','25.0'),
Product('Alpino Super Muesli Fruit and Nuts','100','385.0','2.37','0.0','0.0','0.0','0.0','83.06','25.29','0.0','7.92','163.0','0.0','163.0'),
Product('American Garden Baked Beans','100','100.0','0.7692307692307693','0.0','0.0','0.0','0.0','19.230769230769237','6.153846153846154','7.6923076923076925','3.8461538461538463','384.61538461538464','0.0','384.61538461538464'),
Product('American Garden Pizza Sauce','100','65.57377049180329','2.459016393442623','0.0','0.0','0.0','0.0','8.196721311475411','0.0','0.0','1.639344262295082','0.0','0.0','0.0'),
Product('American Garden Mayonnaise','100','714.2857142857143','78.57142857142857','10.714285714285715','0.0','0.0','0.0','0.0','0.0','0.0','0.0','464.28571428571433','0.0','464.28571428571433'),
Product('Amma\'s Kitchen Alloo Ka Paratha','100','180.55555555555557','3.703703703703704','0.4629629629629629','0.0','2.314814814814815','0.4629629629629629','30.09259259259259','0.4629629629629629','3.240740740740741','4.62962962962963','185.1851851851852','0.0','185.1851851851852'),
Product('Amul Curd','100','62.0','3.1','1.9','0.0','0.0','0.0','4.4','0.0','0.0','4.1','61.0','0.0','61.0'),
Product('Amul Cow Milk','100','62.0','3.5','0.0','0.0','0.0','0.0','4.7','0.0','0.0','3.0','0.0','0.0','0.0'),
Product('Amul Fresh Paneer','100','296.0','22.0','15.0','0.0','0.0','0.0','4.5','0.0','0.0','20.0','0.0','0.0','0.0'),
Product('Amul Buttermilk','100','28.0','1.0','0.7','0.0','0.0','0.0','2.9','0.0','0.0','1.9','0.0','0.0','0.0'),
Product('Amul Butter','100','722.0','80.0','51.0','0.0','0.0','0.0','0.0','0.0','0.0','0.5','836.0','0.0','836.0'),
Product('Amul Cheese Slice','100','311.0','25.0','16.0','0.0','0.0','0.0','1.4','0.0','0.0','20.0','0.0','0.0','0.0'),
Product('Amul Masti Dahi','100','62.0','3.1','2.0','0.0','0.5','0.7','4.4','0.0','0.0','4.0','0.0','0.0','0.0'),
Product('Amul Taaza Milk','100','58.0','3.0','2.0','0.0','0.0','0.0','4.8','0.0','0.0','3.0','50.0','0.0','50.0'),
Product('Amul Gold','100','87.0','6.0','3.8','0.0','0.0','0.0','5.0','5.0','0.0','3.2','42.0','0.0','42.0'),
Product('Amul Cheese','100','320.0','26.0','16.0','0.0','0.0','0.0','1.2','0.0','0.0','20.0','5600.0','0.0','5600.0'),
Product('Amul Toned Milk','100','58.0','3.0','2.0','0.0','0.0','0.0','4.7','0.0','0.0','3.0','0.0','0.0','0.0'),
Product('Amul Milk','100','58.0','3.0','2.0','0.0','0.0','0.0','4.8','0.0','0.0','3.0','0.0','0.0','0.0'),
Product('Amul Cheese Cube','100','320.0','26.0','16.0','0.0','0.0','0.0','2.0','2.0','0.0','20.0','1600.0','0.0','1600.0'),
Product('Amul Dark Chocolate','100','521.0','33.1','20.4','0.0','0.0','0.0','51.4','43.0','0.0','6.4','38.0','0.0','38.0'),
Product('Amul Masti Butter Milk','100','29.0','1.5','1.0','0.0','0.0','0.0','2.3','0.0','0.0','1.7','0.0','0.0','0.0'),
Product('Amul Lassi','100','79.0','2.1','1.4','0.1','0.0','0.0','12.8','12.0','0.0','2.31','0.0','0.0','0.0'),

  ];

  List<Product> _foundedProducts = [];

  List<Product> stateProduct = [];

  @override
  void initState() {
    super.initState();

    setState(() {
      _foundedProducts = _products;
    });
  }

  onSearch(String search) {
    setState(() {
      _foundedProducts = _products.where((user) => user.name.toLowerCase().contains(search)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 28, 111, 179),
        title: Container(
          height: 38,
          child: TextField(
            onChanged: (value) => onSearch(value),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[850],
              contentPadding: EdgeInsets.all(0),
              prefixIcon: Icon(Icons.search, color: Colors.grey.shade500,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none
              ),
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade500
              ),
              hintText: "Search Products"
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.grey.shade900,
        child: _foundedProducts.length > 0 ? ListView.builder(
          itemCount: _foundedProducts.length,
          itemBuilder: (context, index) {
            return Slidable(
              actionPane: SlidableDrawerActionPane( ),
              actionExtentRatio: 0.25,
              child: productComponent(product: _foundedProducts[index]),
            );
          }) : Center(child: Text("No Products found", style: TextStyle(color: Colors.white),)),
      ),
    );
  }

  productComponent({required Product product}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 10,
                height: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  // child: Image.network(user.image),
                )
              ),
              SizedBox(width: 10),
             
            GestureDetector(
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  ProductRoute(product : product),
            ));
            },
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
                  SizedBox(height: 5,),
                  // Text(product.username, style: TextStyle(color: Colors.grey[500])),
                ]
              ),
            
          )
            ]
          ),
 
        ],
      ),
    );
  }
}



class ProductRoute extends StatelessWidget {
  ProductRoute({ required this.product});
  final Product product;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Information'),
      ),
      body: SingleChildScrollView (child : Center(
        child: Column( children: <Widget> [ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child:  Text(this.product.name),
        ),
        ProductTable(product: product,),
        ],) 
      ),
    ));
  }
}


class ProductTable extends StatelessWidget {
  ProductTable({required this.product});
    final Product product;


  TableRow buildrow(String typicalValue, String value, String percentage) {
          return TableRow(
          children: <Widget>[
            Container(
                child :   Text(
                  typicalValue,
                  style: TextStyle(fontSize: 15.0),
                ),
              height: 32,
              // color: Colors.green,
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.top,
              child: Container(
                child :   Text(
                  value,
                  style: TextStyle(fontSize: 15.0),
                ),
                height: 32,
                width: 32,
                // color: Colors.red,
              ),
            ),
            Container(
                child :   Text(
                 percentage,
                  style: TextStyle(fontSize: 15.0),
                ),
              height: 64,
              color: Colors.blue,
            ),
          ],
        );
  }

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        0: FixedColumnWidth(124),
        1: FixedColumnWidth(124),
        2: FixedColumnWidth(124),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        
        TableRow(
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          children: <Widget>[
          Container(
                child :   Text(
                  "Typical Values",
                  style: TextStyle(fontSize: 15.0),
                ),
                height: 32,
                width: 32,
              ),
                        Center(
              child: Container(
                child :   Text(
                  "Value",
                  style: TextStyle(fontSize: 12.0),
                ),
                height: 32,
                width: 32,

              ),
            ),
          Container(
                child :   Text(
                  "% based on RI for Average Adult",
                  style: TextStyle(fontSize: 15.0),
                ),
                height: 32,
                width: 32,
              ),

            
          ],
        ),
                      buildrow("Energy ", product.energyKcal, "5"),
                      buildrow("Fat ", product.fat, "5"),
                      buildrow("TransFat ", product.transFat, "5"),
                      buildrow("Saturated Fat ", product.saturatedFat, "5"),
                      buildrow("Monounsatured Fat ", product.monounsaturatedFat, "5"),
                      buildrow("Polyunsaturated Fat ", product.polyunsaturateFat, "5"),
                      buildrow("Carbohydrates ", product.carbohydrates, "5"),
                      buildrow("Sugar ", product.sugar, "5"),
                      buildrow("Fibre ", product.fibre, "5"),
                      buildrow("Protein ", product.protein, "5"),
                      buildrow("Sodium ", product.sodium, "5"),
                      buildrow("Cholestrol ", product.cholestrol, "5"),
                      buildrow("Potassium ", product.potassium, "5"),

      ],
    );
  }
}

