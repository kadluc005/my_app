import 'package:flutter/material.dart';
import 'package:my_app/pages/add_event_page.dart';
import 'pages/home_page.dart';
import 'pages/event_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  setCurrentIndex(int index){
    setState(() {
      _currentIndex= index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: [
            const Text("Accueil"),
            const Text("Liste des conférences"),
            const Text("Formulaire")
            ][_currentIndex],
        ),
        body: [
          const HomePage(),
          const EventPage(),
          const AddEventPage(),
        ][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setCurrentIndex(index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Accueil',
              ),

              BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Planning'
              ),

              BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Ajout'
              ),
          ],
        ),
      )
    );
  }
}
