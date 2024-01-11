import 'package:flutter/material.dart';

class EquatableTesting extends StatefulWidget {
  const EquatableTesting({super.key});

  @override
  State<EquatableTesting> createState() => _EquatableTestingState();
}

class _EquatableTestingState extends State<EquatableTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Person person = Person(name: "Aakash", age: 21);
          Person person1 = Person(name: "Aakash", age: 21);

          print(person.hashCode.toString());
          print(person1.hashCode.toString());

          print(person == person1);
        },
      ),
    );
  }
}

class Person {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Person &&
            runtimeType == other.runtimeType &&
            name == other.name &&
            age == other.age;
    ;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
