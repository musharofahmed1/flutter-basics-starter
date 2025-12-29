import 'package:flutter/material.dart'; // Standard material design

void main() {
  // Always use const for the root widget if possible for better performance
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
      color: Colors.yellow,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  // Adding 'void' because this function performs an action but doesn't return data
  void mySnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message), // Wrap the message in a Text widget
        duration: const Duration(seconds: 2), // Optional: set how long it stays
      ),
    );
  }
  void myAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Notice"),
        content: const Text("Do you want to proceed with Inventory BD?"),
        actions: [
          TextButton(onPressed: (){
          mySnackBar("Delete Success", context);
          Navigator.of(context).pop();
          }, child: Text("YES")),
          TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("NO")),
        ],
      );
    },
  );
}
  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60)
    );
    // Scaffold provides the basic visual layout structure
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        titleSpacing: 0,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 6,
        backgroundColor: const Color.fromARGB(255, 177, 222, 105),
        actions: [
          IconButton(onPressed: (){mySnackBar("I am comments",context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){mySnackBar("I am Search",context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){mySnackBar("I am settings",context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){mySnackBar("I am email",context);}, icon: Icon(Icons.email)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: const Color.fromARGB(255, 131, 240, 135),
        child: Icon(Icons.add),
        onPressed: (){mySnackBar("I am Floting Action Button", context);},
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
        ],

        onTap: (int index){
          if(index==0){
            mySnackBar("You Pressed Home", context);
          }
          if(index==1){
            mySnackBar("You Pressed Contact", context);
          }
          if(index==2){
            mySnackBar("You Pressed User", context);
          }
        },
        ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                
                accountName: Text("INVENTORY BD",style: TextStyle(color: Colors.white)),
                accountEmail: Text("contact@inventorybd.com",style: TextStyle(color: Colors.white)),
                currentAccountPicture: Image.network(""),
                ),
                
              ),
        

            ListTile(title: Text("Contact"),
            leading: Icon(Icons.home), 
            onTap: (){mySnackBar("Home", context);}),

            ListTile(title: Text("Profile"),
            leading: Icon(Icons.person),
            onTap: (){mySnackBar("Profile", context);}),

            ListTile(title: Text("Email"),
            leading: Icon(Icons.email),
            onTap: (){mySnackBar("Email", context);}),

            ListTile(title: Text("Phone"),
            leading: Icon(Icons.phone),
            onTap: (){mySnackBar("Phone", context);})
          

          ],
        ),
      ),
      endDrawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(0),
            child: UserAccountsDrawerHeader(
              
              accountName: Text("INVENTORY BD",style: TextStyle(color: Colors.white)),
              accountEmail: Text("contact@inventorybd.com",style: TextStyle(color: Colors.white)),
              currentAccountPicture: Image.network(""),
              ),
              
            ),
      

          ListTile(title: Text("Contact"),
          leading: Icon(Icons.home), 
          onTap: (){mySnackBar("Home", context);}),

          ListTile(title: Text("Profile"),
          leading: Icon(Icons.person),
          onTap: (){mySnackBar("Profile", context);}),

          ListTile(title: Text("Email"),
          leading: Icon(Icons.email),
          onTap: (){mySnackBar("Email", context);}),

          ListTile(title: Text("Phone"),
          leading: Icon(Icons.phone),
          onTap: (){mySnackBar("Phone", context);})
         

        ],
      ),
    ),
      // body: Container( 
      //   height: 250,           // Give it a numeric value
      //   width: double.infinity, // This makes it as wide as the screen
      //   color: Colors.amber,   // Adding color helps you see where the container is
      //   child: const Center(
      //   child: Text("This is inside a Container"),
      //   ),
      //   ),
    //  body: Column(
    //  children: [
    //     const SizedBox(height: 50), // This adds exactly 50 pixels of top space
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           ElevatedButton(
    //             onPressed: () {myAlertDialog(context);},
    //             child: const Text("Click me"),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    
    //start form 
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "First Name")),),
        Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "First Name")),),
        Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "First Name")),),
        Padding(padding: EdgeInsets.all(10), child: ElevatedButton(onPressed:  (){}, child: Text("Submit"), style: buttonStyle,),)
      ],
    ),
    );

    }
  }