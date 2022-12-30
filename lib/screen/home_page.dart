import 'package:felix/providers/moviedata_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MovieProvider dataMovie1 = Provider.of<MovieProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Felix',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              dataMovie1.fetchData();
            },
            child: const Text('Fetch')),
      ),
    );
  }
}
