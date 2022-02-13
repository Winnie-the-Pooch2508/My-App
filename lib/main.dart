import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Список'),
      ),
      body: Center(
        child: InkWell(
          onTap: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondRoute()),);},
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Ink.image(
                  image: const NetworkImage('https://images.unsplash.com/photo-1627097170492-1041ecd6c3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGhvdG8lMjBvZiUyMGNhcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=1200&q=60',
                  ),height: 200, width: 200, fit: BoxFit.cover,
              ),
              const Text('Aston Martin'),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Фотография'),
      ),
      body: Center(
        child: IconButton(
          icon: Image.network('https://images.unsplash.com/photo-1627097170492-1041ecd6c3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGhvdG8lMjBvZiUyMGNhcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=1200&q=60'),
          iconSize:550,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstRoute()),);
          },
        )
      ),
    );
  }
}
