import 'package:flutter/material.dart';

void main() {
  runApp(BusinessCard());
}

class BusinessCard extends StatefulWidget {
  @override
  State<BusinessCard> createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 25),
                  CircleAvatar(
                    radius: 97,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 96,
                      backgroundImage: AssetImage('images/Flutter.jpg'),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Hanan Waleed",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                  Text(
                    "FLOWER SHOP",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  Divider(
                    color: Colors.grey[550],
                    thickness: 2,
                    indent: 60,
                    endIndent: 60,
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey[800]!),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.phone, size: 28),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              controller: phoneController,
                              keyboardType: TextInputType.phone,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                hintText: "Enter Your Phone Number",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey[800]!),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.mail, size: 28),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                hintText: "Enter Your Email",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      print("Login Clicked!");
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


/*
import 'package:flutter/material.dart';

void main() {
  runApp(business_card());
}

class business_card extends StatelessWidget {
  const business_card({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 97,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 96,
                backgroundImage: AssetImage('images/Flutter.jpg'),
              ),
            ),
            Text(
              "Hanan Waleed",
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontFamily: 'pacifico',
              ),
            ),
            Text(
              "FLOWER SHOP",style: TextStyle(
                color: Colors.black,fontSize: 25,
              ),
            ),
            Divider(color:Colors.grey[550] , thickness: 2, indent:60 ,
          endIndent: 60,  height: 10,
            ),
            Padding(
              padding:  EdgeInsets.all(16),
              
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey[800]! )
               
                ),
             
                child: 
                Row(
                  children: [
                
                 Icon(Icons.phone,size: 40,),SizedBox(width: 10)
                 ,
                 Padding(
                   padding: const EdgeInsets.only(left: 7),
                   child: Text('(+20) 1280292678',style: TextStyle(
                      color:Colors.grey[800] ,
                    fontSize: 18,
                   ),
                   ),
                 ),
                  ],
                ),
                
              ),
            ), Padding(
              padding:  EdgeInsets.all(16),
              
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey[800]! ),
                  
               
                ),
            
                child: 
                Row(
                  children: [
                 
                 Icon(Icons.mail,size: 40,),SizedBox(width: 10)
                 , 
                 Expanded(
                   child: Padding(
                     padding: const EdgeInsets.only(left: 7),
                     child: Text('waleedhanan81@gmail.com',style: TextStyle(
                      color:Colors.grey[800] ,
                      fontSize: 18,
                     ),
                     overflow: TextOverflow.ellipsis,
                     softWrap: true,
                     ),
                   ),
                 ),
                  ],
                ),
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
 */