import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class CouterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CouterProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.watch<CouterProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '${provider.counter}',
              style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),
            ),

               Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      key:Key("1") ,
                      onPressed: Provider.of<CouterProvider>(context).add,
                      tooltip: 'Increment',
                      child: const Icon(Icons.add),
                    ),
                  SizedBox(width: 10,),
                  FloatingActionButton(
                      key:Key("2") ,
                      onPressed: Provider.of<CouterProvider>(context).minus,
                      tooltip: 'Increment',
                      child: const Icon(Icons.remove),
                    ),
                  ],
                ),
              ),

          ],
        ),

      ),


      // This trailing comma makes auto-formatting nicer for build methods.
    );;
  }
}

