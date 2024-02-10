import 'package:flutter/material.dart';
import 'exit.dart';
class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: const
        <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.lightGreen),
          BottomNavigationBarItem(icon: Icon(Icons.add),
              label: "Add",
              backgroundColor: Colors.lightGreen),
          BottomNavigationBarItem(icon: Icon(Icons.navigation),
              label: "Navigation",
              backgroundColor: Colors.lightGreen),
          BottomNavigationBarItem(icon: Icon(Icons.search),
              label: "Search",
              backgroundColor: Colors.lightGreen),

          BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: "Logout",
              backgroundColor: Colors.lightGreen),

        ]),

        appBar: AppBar(
          backgroundColor: Colors.lime,
          title: const Text("HomePage"),
          actions: [
            PopupMenuButton(itemBuilder: (context)=>[
              PopupMenuItem<int>(

                value: 0,
                child: Column(
                  children: [


                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.wifi, color: Colors.black,),
                        Text("Wi-Fi"),
                      ],
                    ),
                    const SizedBox(height: 10,),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.bluetooth_audio, color: Colors.black,),
                        Text("Bluetooth"),
                      ],
                    ),
                    const SizedBox(height: 10,),

                    const Row(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.battery_0_bar, color: Colors.black,),
                        Text("Battery"),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.storage, color: Colors.black,),
                        Text("Storage"),
                      ],
                    ),
                    const SizedBox(height: 10,),

                  ],
                ),
              )
            ]),
          ],
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Column(
                children:<Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text("Madhu Survase"),
                    accountEmail: Text("madhu30197@gmail.com"),
                    currentAccountPictureSize:Size.square(70),
                    currentAccountPicture:
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 165, 255, 137),
                      child:Text("MS"),

                    ),
                  ),

                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),

                  ListTile(
                    leading: Icon(Icons.person_outline_outlined),
                    title: Text("Profile"),
                  ),

                  ListTile(
                    leading: Icon(Icons.view_agenda),
                    title: Text("View"),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_box_outlined),
                    title: Text("Account"),
                  ),

                  const ListTile(
                    leading: Icon(Icons.contact_phone),
                    title: Text("Contact"),
                  ),


                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return ExitApp();
                      }),);
                    },
                    child: ListTile(
                      leading: Icon(Icons.logout),
                      title: Text("Log out"),
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
        body: Center()

    );
  }
}