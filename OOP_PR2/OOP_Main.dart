import 'OOP_Class.dart';
import 'dart:io';
void main() {
  print("||=============||=============||");
  print("||             ||             ||");
  print("||==Welcome to LizzaaFashion==||");
  print("||             ||             ||");
  print("||=============||=============||");
  stdout.write("Enter The Number of Customer : ");
  int num = int.parse(stdin.readLineSync()!);
  List<customer> _customer = List.generate(num, (index) {
    stdout.write("Enter ID : ");
    int id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Name : ");
    String name = stdin.readLineSync()!;
    stdout.write("Enter Contact number : ");
    int contact = int.parse(stdin.readLineSync()!);

    return customer(id: id, name: name, contact: contact);
  });
  stdout.write("Enter search id number : ");
  int s_id = int.parse(stdin.readLineSync()!);
  _customer.forEach((e) {
    do {
      if (s_id == e.id) {
        print("${e.id}\n${e.name}\n${e.bill}");
      } else {
        print("INVALID NUMBER...");
      }
    } while (s_id == e.id);
  });
}