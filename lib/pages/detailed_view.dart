import 'package:flutter/material.dart';

class DetailedView extends StatefulWidget {
  const DetailedView({Key? key}) : super(key: key);

  @override
  State<DetailedView> createState() => _DetailedViewState();
}

class _DetailedViewState extends State<DetailedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      body: SafeArea(
        child: Column(
          children: [
            IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
            ),
          ],
        ),
      )
    );
  }
}

