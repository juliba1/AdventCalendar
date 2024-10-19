import 'package:flutter/material.dart';

class Calendar {
  String title = "";
  List<String> headers = [];
  List<String> texts = [];
  List<String> pictures = [];
  String earlyPicture = "";
  String earlyHeader = "";
  String earlyText = "";
  Color primaryColor = Colors.black;
  Color secundaryColor = Colors.white;
  String backgroundImage = "";

  void setTitle(String title){
    this.title = title;
  }

  void setHeaders(List<String> headers) {
    this.headers = headers;
  }

  void setTexts(List<String> texts) {
    this.texts = texts;
  }

  void setPictures(List<String> pictures) {
    this.pictures = pictures;
  }

  void setColors(Color primaryColor, Color secundaryColor) {
    this.primaryColor = primaryColor;
    this.secundaryColor = secundaryColor;
  }

  void setBackgroundImage(String imagePath) {
    backgroundImage = imagePath;
  }
}