import 'dart:io';

class Product {
  final int id;
  final String name;
  final int price;
  int qty = 1;
  Product(
      {required this.id,
      required this.name,
      required this.price,
      this.qty = 1});
  factory Product.factory({required Map data}) {
    return Product(id: data['id'], name: data['name'], price: data['price']);
  }
  static List<Map<String, dynamic>> allproduct = [
    {
      'id': 1,
      'name': "Plazzo",
      'price': 1249,
    },
    {
      'id': 2,
      'name': "Kurti    ",
      'price': 999,
    },
    {
      'id': 3,
      'name': "Kruti-Set   ",
      'price': 2999,
    },
    {
      'id': 4,
      'name': "3-pices  ",
      'price': 1599,
    },
    {
      'id': 5,
      'name': "Dress",
      'price': 799,
    },
    {
      'id': 6,
      'name': "Pent",
      'price': 599,
    },
    {
      'id': 7,
      'name': "Top   ",
      'price': 999,
    },
    {
      'id': 8,
      'name': "Plazzo-Set",
      'price': 299,
    },
    {
      'id': 9,
      'name': "Kurti-Pair",
      'price': 1999,
    },
    {
      'id': 10,
      'name': "Extra Bag  ",
      'price': 39,
    },
  ];
}

class customer {
  final int id;
  final String name;
  final int contact;
  int bill = 0;
  List<Product> cart = [];
  customer({required this.id, required this.name, required this.contact}) {
    int choice;

    do {
      print("1. Add Product.");
    
      print("2. Exit");
      stdout.write("Enter your choice : ");
      choice = int.parse(stdin.readLineSync()!);

      switch (choice) {
        case 1:
          Product.allproduct.forEach((e) {
            print("${e['id']}\t${e['name']}\t${e['price']}");
          });
          stdout.write("Enter product number to add your cart : ");
          int n = int.parse(stdin.readLineSync()!);
          stdout.write("Enter quantity :");
          int q = int.parse(stdin.readLineSync()!);

          Product p = Product.factory(data: Product.allproduct[n - 1]);
          p.qty = q;
          cart.add(p);
          break;
        case 2:
          break;
        default:
          print("Enter valid Number!!");
          break;
      }
    } while (choice != 2);
    cart.forEach((e) {
      bill += (e.qty * e.price);
    });
    if (bill >= 500 && bill < 1500) {
      print("your bill is ${(bill * 10) / 100}");
    } else if (bill >= 1500 && bill < 3500) {
      print("your bill is ${bill-((bill * 20) / 100)}");
    } else if (bill >= 3500 && bill < 6500) {
      print("your bill is ${(bill * 25) / 100}");
    } else {
      print("your bill is ${(bill * 30) / 100}");
    }
  }
}

