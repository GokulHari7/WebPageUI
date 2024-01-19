import 'package:flutter/material.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:ListView(
        children: [
          Expanded(
            child: Container(
              child: Image.asset('assets/images/webimage.png'), //Image.network('https://ringtune.mpt.com.mm/crbt-web-portal/assets/images/mpt_banner.svg'),  
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(
              top:20,
            ),
            child: Container(
              height: 150,
              decoration:BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/TextfieldBGI.jpg'),
                    fit:BoxFit.fill,
                    
                    
                    )
                  ),
              child: Padding(
                padding: const EdgeInsets.only(
                  right:200,
                  left:200,
                  top:43
                  
                ),
                child: Column( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                    style:TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      hintText: '  Type to search',
                      //contentPadding:EdgeInsets.only(left: 20),
                      
                      hintStyle: TextStyle(
                        fontSize: 20,
                        
                      ),
                      fillColor: Colors.white,
                      filled:true,
                      suffixIcon:Icon(
                        Icons.search,
                        size: 40,
                      ),
                      //contentPadding: EdgeInsets.symmetric(vertical: 25), 
                      enabledBorder:OutlineInputBorder(
                        borderRadius:BorderRadius.circular(40),
                        borderSide:BorderSide(
                          color:Colors.white,
                          
                        )  
                        
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide:BorderSide(
                          color:Colors.white,
                        )
                      )
                    )
                  ),
                  //next child of column, which is radio button should start here
                  
                  SizedBox(height: 6,),  //to leave some vertical space
                  
                  Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Radio(
                          value:'Song',
                          groupValue: gender,
                          onChanged: (value){
                            setState(() {
                              gender=value;
                            });
                            
                          },            
                        ),
                        Text('Song'),
                  
                        Radio(
                          value:'Singer',
                          groupValue: gender,
                          onChanged: (value){
                            setState(() {
                              gender=value;
                            });
                          },            
                        ),
                        Text('Singer'),
                  
                        Radio(
                          value:'Code',
                          groupValue: gender,
                          onChanged: (value){
                            setState(() {
                              gender=value;
                            });
                          },            
                        ),
                        Text('Code'),
                  
                    ],
                  )              
                ]),
              ),
            ),
          ),
          //next thing after search bar container
          
          Column(
            children:[
              Container(
                height:50, //inorder to leave some space between search bar container and listtile
              )
            ]
          ),
          
          Padding(
            padding: const EdgeInsets.only(
              left:60,
              right:60
            ),
            child: ListTile(
              leading:Text(
                  'New Releases',
                  style:TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 34, 30, 32),
                    fontWeight: FontWeight.w900,
                    
                  )
                  ),
                
              trailing: TextButton( 
                onPressed: (){},
                child: Text(
                  'Show More',
                  style:TextStyle(
                    fontSize: 15,
                    color:const Color.fromARGB(255, 0, 48, 183),
                    fontWeight: FontWeight.w900,
                  )
            
                )
              ),
            ),
          ),
          Column(
            children:[
              Container(
                height:40, 
              )
            ]
          ),

          //GRID VIEW STARTS:
           Padding(
        padding: const EdgeInsets.only(
          left:55,
          right:55
        ),
        child: SizedBox(
         width:1700,
         height:1700,
          child: GridView.count(
            crossAxisCount: 4, // mentions number of columns required
            childAspectRatio: .70,
            crossAxisSpacing: 55,
            mainAxisSpacing: 55,
          
            children:[
              Stack( //stack is used to create icon play button and its positioning on the image widget using positioned widget within the stack given below
                children:[ 
                  ClipRRect( //used to adjust border radius
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80),),
                  child: Container(
                    child:Column(
                
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect( 
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(80), bottomRight: Radius.circular(80),),
                          child: Image.asset('images/INFINITY_INTELLIGENCE_gridimg.jpg')
                          ),
                        SizedBox(height:10),
                        Text(
                          'Infinity Intelligence Instrumental...',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:9),
                        Text(
                          'Devasix',
                          style:TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                          )
                        ),
                        Row(
                            children:[ 
                            IconButton(
                             icon: Icon(Icons.wallet_giftcard_outlined),
                             onPressed: (){},
                            ),
                            Text(
                              'Gift',
                              style:TextStyle(
                                fontSize: 15,
                              )
                              ),
                            
                            SizedBox(width:100),
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag)
                            ),
                            Text(
                              'Buy',
                              style: TextStyle(
                                fontSize: 15
                              ),
                            )      
                        ])
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom:140,
                  right:16,
                  child:IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.play_circle_filled_sharp),
                    iconSize: 56.0,
                    color:Colors.white
                    ), 
                ),
                
            ]),
              //Grid no.2:
              Stack( //stack is used to create icon play button and its positioning on the image widget using positioned widget within the stack given below
                children:[ 
                  ClipRRect( //used to adjust border radius
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80),),
                  child: Container(
                    child:Column(
                
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect( 
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(80), bottomRight: Radius.circular(80),),
                          child: Image.asset('images/INFINITY_INTELLIGENCE_gridimg.jpg')
                          ),
                        SizedBox(height:10),
                        Text(
                          'Infinity Intelligence Instrumental...',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:9),
                        Text(
                          'Devasix',
                          style:TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                          )
                        ),
                        Row(
                            children:[ 
                            IconButton(
                             icon: Icon(Icons.wallet_giftcard_outlined),
                             onPressed: (){},
                            ),
                            Text(
                              'Gift',
                              style:TextStyle(
                                fontSize: 15,
                              )
                              ),
                            
                            SizedBox(width:100),
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag)
                            ),
                            Text(
                              'Buy',
                              style: TextStyle(
                                fontSize: 15
                              ),
                            )      
                        ])
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom:140,
                  right:16,
                  child:IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.play_circle_filled_sharp),
                    iconSize: 56.0,
                    color:Colors.white
                    ), 
                ),
                
            ]),
              //Grid no.3:
              Stack( //stack is used to create icon play button and its positioning on the image widget using positioned widget within the stack given below
                children:[ 
                  ClipRRect( //used to adjust border radius
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80),),
                  child: Container(
                    child:Column(
                
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect( 
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(80), bottomRight: Radius.circular(80),),
                          child: Image.asset('images/INFINITY_INTELLIGENCE_gridimg.jpg')
                          ),
                        SizedBox(height:10),
                        Text(
                          'Infinity Intelligence Instrumental...',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:9),
                        Text(
                          'Devasix',
                          style:TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                          )
                        ),
                        Row(
                            children:[ 
                            IconButton(
                             icon: Icon(Icons.wallet_giftcard_outlined),
                             onPressed: (){},
                            ),
                            Text(
                              'Gift',
                              style:TextStyle(
                                fontSize: 15,
                              )
                              ),
                            
                            SizedBox(width:100),
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag)
                            ),
                            Text(
                              'Buy',
                              style: TextStyle(
                                fontSize: 15
                              ),
                            )      
                        ])
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom:140,
                  right:16,
                  child:IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.play_circle_filled_sharp),
                    iconSize: 56.0,
                    color:Colors.white
                    ), 
                ),
                
            ]),
              //Grid no.4:
              Stack( //stack is used to create icon play button and its positioning on the image widget using positioned widget within the stack given below
                children:[ 
                  ClipRRect( //used to adjust border radius
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80),),
                  child: Container(
                    child:Column(
                
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect( 
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(80), bottomRight: Radius.circular(80),),
                          child: Image.asset('images/INFINITY_INTELLIGENCE_gridimg.jpg')
                          ),
                        SizedBox(height:10),
                        Text(
                          'Infinity Intelligence Instrumental...',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:9),
                        Text(
                          'Devasix',
                          style:TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                          )
                        ),
                        Row(
                            children:[ 
                            IconButton(
                             icon: Icon(Icons.wallet_giftcard_outlined),
                             onPressed: (){},
                            ),
                            Text(
                              'Gift',
                              style:TextStyle(
                                fontSize: 15,
                              )
                              ),
                            
                            SizedBox(width:100),
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag)
                            ),
                            Text(
                              'Buy',
                              style: TextStyle(
                                fontSize: 15
                              ),
                            )      
                        ])
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom:140,
                  right:16,
                  child:IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.play_circle_filled_sharp),
                    iconSize: 56.0,
                    color:Colors.white
                    ), 
                ),
                
            ]),
              //Grid no.5:
              Stack( //stack is used to create icon play button and its positioning on the image widget using positioned widget within the stack given below
                children:[ 
                  ClipRRect( //used to adjust border radius
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80),),
                  child: Container(
                    child:Column(
                
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect( 
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(80), bottomRight: Radius.circular(80),),
                          child: Image.asset('images/INFINITY_INTELLIGENCE_gridimg.jpg')
                          ),
                        SizedBox(height:10),
                        Text(
                          'Infinity Intelligence Instrumental...',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:9),
                        Text(
                          'Devasix',
                          style:TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                          )
                        ),
                        Row(
                            children:[ 
                            IconButton(
                             icon: Icon(Icons.wallet_giftcard_outlined),
                             onPressed: (){},
                            ),
                            Text(
                              'Gift',
                              style:TextStyle(
                                fontSize: 15,
                              )
                              ),
                            
                            SizedBox(width:100),
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag)
                            ),
                            Text(
                              'Buy',
                              style: TextStyle(
                                fontSize: 15
                              ),
                            )      
                        ])
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom:140,
                  right:16,
                  child:IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.play_circle_filled_sharp),
                    iconSize: 56.0,
                    color:Colors.white
                    ), 
                ),
                
            ]),
              //Grid no.6:
              Stack( //stack is used to create icon play button and its positioning on the image widget using positioned widget within the stack given below
                children:[ 
                  ClipRRect( //used to adjust border radius
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80),),
                  child: Container(
                    child:Column(
                
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect( 
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(80), bottomRight: Radius.circular(80),),
                          child: Image.asset('images/INFINITY_INTELLIGENCE_gridimg.jpg')
                          ),
                        SizedBox(height:10),
                        Text(
                          'Infinity Intelligence Instrumental...',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:9),
                        Text(
                          'Devasix',
                          style:TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                          )
                        ),
                        Row(
                            children:[ 
                            IconButton(
                             icon: Icon(Icons.wallet_giftcard_outlined),
                             onPressed: (){},
                            ),
                            Text(
                              'Gift',
                              style:TextStyle(
                                fontSize: 15,
                              )
                              ),
                            
                            SizedBox(width:100),
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag)
                            ),
                            Text(
                              'Buy',
                              style: TextStyle(
                                fontSize: 15
                              ),
                            )      
                        ])
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom:140,
                  right:16,
                  child:IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.play_circle_filled_sharp),
                    iconSize: 56.0,
                    color:Colors.white
                    ), 
                ),
                
            ]),
              //Grid no.7:
              Stack( //stack is used to create icon play button and its positioning on the image widget using positioned widget within the stack given below
                children:[ 
                  ClipRRect( //used to adjust border radius
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80),),
                  child: Container(
                    child:Column(
                
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect( 
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(80), bottomRight: Radius.circular(80),),
                          child: Image.asset('images/INFINITY_INTELLIGENCE_gridimg.jpg')
                          ),
                        SizedBox(height:10),
                        Text(
                          'Infinity Intelligence Instrumental...',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:9),
                        Text(
                          'Devasix',
                          style:TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                          )
                        ),
                        Row(
                            children:[ 
                            IconButton(
                             icon: Icon(Icons.wallet_giftcard_outlined),
                             onPressed: (){},
                            ),
                            Text(
                              'Gift',
                              style:TextStyle(
                                fontSize: 15,
                              )
                              ),
                            
                            SizedBox(width:100),
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag)
                            ),
                            Text(
                              'Buy',
                              style: TextStyle(
                                fontSize: 15
                              ),
                            )      
                        ])
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom:140,
                  right:16,
                  child:IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.play_circle_filled_sharp),
                    iconSize: 56.0,
                    color:Colors.white
                    ), 
                ),
                
            ]),
              //Grid no.8:
              Stack( //stack is used to create icon play button and its positioning on the image widget using positioned widget within the stack given below
                children:[ 
                  ClipRRect( //used to adjust border radius
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80),),
                  child: Container(
                    child:Column(
                
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect( 
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(80), bottomRight: Radius.circular(80),),
                          child: Image.asset('images/INFINITY_INTELLIGENCE_gridimg.jpg')
                          ),
                        SizedBox(height:10),
                        Text(
                          'Infinity Intelligence Instrumental...',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:9),
                        Text(
                          'Devasix',
                          style:TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                          )
                        ),
                        Row(
                            children:[ 
                            IconButton(
                             icon: Icon(Icons.wallet_giftcard_outlined),
                             onPressed: (){},
                            ),
                            Text(
                              'Gift',
                              style:TextStyle(
                                fontSize: 15,
                              )
                              ),
                            
                            SizedBox(width:100),
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag)
                            ),
                            Text(
                              'Buy',
                              style: TextStyle(
                                fontSize: 15
                              ),
                            )      
                        ])
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom:140,
                  right:16,
                  child:IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.play_circle_filled_sharp),
                    iconSize: 56.0,
                    color:Colors.white
                    ), 
                ),
                
            ]),
            ] ),
        ),
      ),
        
      ])
    );
  }
}




