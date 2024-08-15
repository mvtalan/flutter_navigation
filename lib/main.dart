import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Route Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/secondpage': (context) => SecondPage(),
        '/thirdpage': (context) => ThirdPage(),
      }
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 206, 244, 54),
        title: Text('Home Page'),
    ),
    body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('Pop the stack'),
        ),
    ),
    bottomNavigationBar: BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () {
            // Navigator.pushNamed(context, '/');
          }, 
          icon: Icon(Icons.home),
          ),
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/secondpage');
          }, 
          icon: Icon(Icons.settings),
          ),
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/thirdpage');
          }, 
          icon: Icon(Icons.search),
          ),
        ],
      ),
      ),
      );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 243, 33, 159),
        title: Text('Second Page'),
    ),
    bottomNavigationBar: BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/');
          }, 
          icon: Icon(Icons.home),
          ),
          IconButton(onPressed: () {
            // Navigator.pushNamed(context, '/secondpage');
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=> SecondPage())
            );
          }, 
          icon: Icon(Icons.settings),
          ),
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/thirdpage');
          }, 
          icon: Icon(Icons.search),
          ),
        ],
      ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text('Third Page'),
    ),
    bottomNavigationBar: BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/');
          }, 
          icon: Icon(Icons.home),
          ),
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/secondpage');
          }, 
          icon: Icon(Icons.settings),
          ),
          IconButton(onPressed: () {
            // Navigator.pushNamed(context, '/thirdpage');
          }, 
          icon: Icon(Icons.search),
          ),
        ],
      ),
      ),
      );
  }
}