import 'package:flutter/material.dart';
import 'event_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Asynconf 2022"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/image1.png"),
              const Text(
                "Asynconf 2022",
                style: TextStyle(
                    fontSize: 42,
                    fontFamily: "Poppins"
                ),
              ),
              const Text("Salon virtuelle de l'informatique 2022 et 2023",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Poppins"
                  ),
                  textAlign: TextAlign.center
              ),
              const Padding(
                  padding: EdgeInsets.only(
                      top:10,
                      bottom: 10,
                      right: 10,
                      left: 10
                  )
              ),
              ElevatedButton.icon(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Colors.amberAccent
                      ),
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.all(20)
                      )
                  ),
                  onPressed: () => {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_,__,___) => EventPage()
                        )
                    )
                  },
                  label: const Text(
                    "Afficher le planning",
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  icon : Icon(Icons.calendar_month)
              )
            ],
          )
      ),
    );
  }
}