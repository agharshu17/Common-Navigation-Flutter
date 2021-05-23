import 'package:flutter/material.dart';

List<String> nav = ['Home', 'Product', 'About', 'Contact'];

homeFunc(context) {
  print('Home');
  Navigator.pushNamed(context, '/HomePage');
}

productFunc(context) {
  print('Product');
  Navigator.pushNamed(context, '/ProductPage');
}

aboutFunc(context) {
  print('About');
  Navigator.pushNamed(context, '/AboutPage');
}

contactFunc(context) {
  print('Contact');
  Navigator.pushNamed(context, '/ContactPage');
}

navFunction(context, text) {
  switch (text) {
    case 'Home':
      homeFunc(context);
      break;
    case 'Product':
      productFunc(context);
      break;
    case 'About':
      aboutFunc(context);
      break;
    case 'Contact':
      contactFunc(context);
      break;
  }
}
