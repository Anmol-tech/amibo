import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: menu(context));
  }
}

Widget menu(context) {
  return Container(
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.height * 0.2,
                child: Image.asset("images/bot.png", fit: BoxFit.cover),
              ),
              primaryButton("Amibo", "Amibo"),
              primaryButton("BPIT", "bpit"),
              primaryButton("Faculty", "fac"),
              primaryButton("Departments", "dep"),
              primaryButton("Navigation", "nav"),
              primaryButton("Socities", "soc"),
              primaryButton("Fest and Events", "event"),
              primaryButton("Sports and Activites", "sports"),
              primaryButton("Training and Placement ", "T&P"),
            ],
          ),
        )
      ],
    ),
  );
}

Widget primaryButton(text, onpress) {
  return Container(
    margin: EdgeInsets.all(5),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 20,
        minimumSize: const Size(200, 30),
        shadowColor: Colors.teal,
        padding: const EdgeInsets.all(15),
      ),
      onPressed: () => print(onpress),
      child: Text(text),
    ),
  );
}
