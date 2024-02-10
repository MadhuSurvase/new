import 'package:flutter/material.dart';
import 'package:loginpage/main.dart';
class ExitApp extends StatelessWidget{
  const ExitApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: "ExitApp",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lime,
            title: Text('ExitApp'),
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              width: 300,
              height: 250,
              padding: const EdgeInsets.all(20.0),
              child: Card(
                shadowColor: Colors.black38,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.lime,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Center(
                      child: ListTile(
                        title: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Center(child: Text("Exit App",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                        ),
                        subtitle: Center(child: Text("Are you want to sure to Exit App", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: Colors.white),)),
                      ),
                    ),
                    Expanded(child: Padding(
                      padding:const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Expanded(child: TextButton(
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.black),
                              child: const Text('Yes'),
                              onPressed: ( ){
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder:(context)=>MyApp()));

                              },
                            ),
                            ),
                          ),
                          const SizedBox(
                            width:5,
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.black),
                            child: const Text('No'),
                            onPressed: ( ){
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    ),),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}