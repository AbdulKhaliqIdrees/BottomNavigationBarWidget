import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homepage(),
  ));
}
int myindex=0;
class homepage extends StatefulWidget{
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<Widget> Screens =[Search(),Camera(),Settings()];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Engineer Abdul Khaliq"),
      ),
      body:IndexedStack(
         index: myindex,
        children: Screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myindex,
        onTap: (index)=>setState(() {
          myindex=index;
        }),
        backgroundColor: Colors.yellow,
        items: [
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search,size: 35,),
          ),
          BottomNavigationBarItem(
            label: "Camera",
            icon: Icon(Icons.camera,size: 35,),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(Icons.settings,size: 35,),
          ),
        ],
        ),
    );
  }
}

class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
      ),
      body:Container(
        color: Colors.red,
      ),
    );
  }

}

class Camera extends StatefulWidget{
  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  int a=0;

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera"),
      ),
      body:Container(
        color: Colors.yellow,
        child:Center(
          child:  Text("The Value of A is =$a",style: TextStyle(fontSize: 20),),
        ),
      ),
       floatingActionButton:FloatingActionButton(
         child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              a++;
              //a=a+1;
            });
          },
        ),
    );
  }
}

class Settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Container(
        color: Colors.orange,
      ),
    );
  }

}



 
  

