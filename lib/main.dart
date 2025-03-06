import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Citlali Miscles 1264'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomButton(
                icon: Icons.home,
                text: 'Botón 1',
                color: Color(0xff1687f1),
                textColor: Colors.white,
              ),
              CustomButton(
                icon: Icons.work,
                text: 'Botón 2',
                color: Color(0xff2b99f2),
                textColor: Colors.white,
                isRectangle: true,
              ),
              CustomButton(
                icon: Icons.school,
                text: 'Botón 3',
                color: Color(0xff4874ed),
                textColor: Colors.white,
              ),
              CustomButton(
                icon: Icons.favorite,
                text: 'Botón 4',
                color: Color(0xff567bf6),
                textColor: Color(0xfff9f7f7),
              ),
              CustomButton(
                icon: Icons.star,
                text: 'Botón 5',
                color: Color(0xfffbfbfb),
                textColor: Color(0xff3391bc),
              ),
              CustomButton(
                icon: Icons.person,
                text: 'Botón 6',
                color: Color(0xffffffff),
                textColor: Color(0xff3391bc),
                isRectangle: true,
              ),
              CustomButton(
                icon: Icons.settings,
                text: 'Botón 7',
                color: Color(0xffffffff),
                textColor: Color(0xff3391bc),
              ),
              CustomButton(
                icon: Icons.help,
                text: 'Botón 8',
                color: Color(0xffffffff),
                textColor: Color(0xff3391bc),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color textColor;
  final bool isRectangle;

  CustomButton({
    required this.icon,
    required this.text,
    required this.color,
    required this.textColor,
    this.isRectangle = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape: isRectangle
              ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                )
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
        ),
        onPressed: () {
          // Acción al presionar el botón
        },
        icon: Icon(icon, color: textColor),
        label: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 20),
        ),
      ),
    );
  }
}
