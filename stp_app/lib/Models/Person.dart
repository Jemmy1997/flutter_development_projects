import 'package:flutter/material.dart';

abstract class Person{
  String name;
  String email;
  String img;
  Person(this.name, this.email, this.img);
}