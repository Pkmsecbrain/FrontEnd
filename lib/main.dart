import 'package:flutter/material.dart';

    void main(){
      runApp(
        MaterialApp(
          title: "Latihan Drawable Flutter", 
          //menghilangkan debug banner
          debugShowCheckedModeBanner: true, 
          home: HomePage(),
        
        )
      );
    }
    
    class HomePage extends StatefulWidget {
      const HomePage({ Key? key }) : super(key: key);
    
      @override
      _HomePageState createState() => _HomePageState();
    }
    
    class _HomePageState extends State<HomePage> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Flutter Drawer"),
          ),
          backgroundColor: Colors.black,
          body: GridView.count(
          
            padding: const EdgeInsets.all(0),
            crossAxisCount: 1,
            
            children:<Widget> [
         
                

              Card(
              
                color: const Color.fromARGB(255, 21, 21, 21),
                margin: const EdgeInsets.only(top: 120, left: 15, right: 15,),
                
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize .min,
                      children:  const <Widget>[
                        
                      ],
                    )
                  )
                )
              ),
       
              Card(
                color: const Color.fromARGB(255, 21, 21, 21),
                margin: const EdgeInsets.only(top: 10, left: 15, right: 15,bottom: 200),
                
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
              )

            ],
          ),
          );
          //memberikan button garis tiga disebelah kiri appbar
          //jika ditekan akan menjalankan widget builddrawer
         
        
      }
    }
    
    
    //widget ini adalah isi dari sidebar atau drawer
    Widget _buildDrawer() {
      return SizedBox(
        //membuat menu drawer
        child: Drawer(
          //membuat list, 
          //list digunakan untuk melakukan scrolling jika datanya terlalu panjang
          child: ListView(
            padding: EdgeInsets.zero,
            //di dalam listview ini terdapat beberapa widget drawable
            children: [
              UserAccountsDrawerHeader(
                //membuat gambar profil
                currentAccountPicture: Image(
                  image: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png")
                ),
                //membuat nama akun
                accountName: Text("Sahretech"), 
                //membuat nama email
                accountEmail: Text("ig: @sahretech"),
                //memberikan background
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://cdn.pixabay.com/photo/2016/04/24/20/52/laundry-1350593_960_720.jpg"), 
                    fit: BoxFit.cover
                  )
                ),
              ), 
              //membuat list menu
              ListTile( leading: Icon(Icons.home), title: Text("Beranda"), onTap: (){},),
              ListTile( leading: Icon(Icons.people), title: Text("Pegawai"), onTap: (){},), 
              ListTile( leading: Icon(Icons.money), title: Text("Transaksi"), onTap: (){},), 
              Divider(),
              ListTile( leading: Icon(Icons.emoji_emotions), title: Text("Profil"), onTap: (){},), 
              ListTile( leading: Icon(Icons.info), title: Text("Tentang"), onTap: (){},), 
            ],
          ),
        ),
);
}
