import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  String? group;
  Color _radioColor=Colors.grey;
  
  void Song(){
    setState(() {
      if(group=='Song'){
       _radioColor=Colors.yellow;
      }else{
      _radioColor=Colors.grey;
      }
    });
  }

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
                          groupValue: group,
                          onChanged: (value1){
                            setState(() {
                              group=value1;
                              Song();
                            });
                          },
                          activeColor: Colors.blue,            
                        ),
                        Text(
                          'Song',
                          style:TextStyle(
                            fontSize: 17,
                            color:_radioColor,
                          )),
                  
                        Radio(
                          value:'Singer',
                          groupValue: group,
                          onChanged: (value2){
                            setState(() {
                              group=value2;
                              if(group=='Singer'){
                                _radioColor=Colors.red;
                              }else{
                                _radioColor=Colors.grey;
                              }
                            });
                          },
                          activeColor: Colors.blue,            
                        ),
                        Text(
                          'Singer',
                          style:TextStyle(
                            fontSize: 17,
                            color:_radioColor,
                          )
                          ),
                  
                        Radio(
                          value:'Code',
                          groupValue: group,
                          onChanged: (value3){
                            setState(() {
                              group=value3;
                              if(group=='Code'){
                                _radioColor=Colors.green;
                              }else{
                                _radioColor=Colors.grey;
                              }
                            });
                          },
                          activeColor: Colors.blue,            
                        ),
                        Text(
                          'Code',
                          style:TextStyle(
                            fontSize: 17,
                            color:_radioColor,
                          )
                          ),
                  
                    ],
                  )              
                ]),
              ),
            ),
          ),
          //next thing after search bar container
          
          Container(
            height:50, //inorder to leave some space between search bar container and listtile
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
                    fontSize: 17,
                    color:const Color.fromARGB(255, 0, 48, 183),
                    fontWeight: FontWeight.w900,
                  )
            
                )
              ),
            ),
          ),
          Container(
            height:50, //inorder to leave some space between search bar container and listtile
          ),

          //GRID VIEW STARTS:
        Padding(
        padding: const EdgeInsets.only(
          left:55,
          right:55
        ),
        child: SizedBox(
         width:1200,
         height:950,
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
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
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
                          child: Image.asset('images/December_Love_gridimg.jpg')
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
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
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
                          child: Image.asset('images/dwi_ha_ba_gridimg.jpg')
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
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
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
                          child: Image.asset('images/Maung_Bar_Phyit_Chin_Lal_gridimg.jpg')
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
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
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
                          child: Image.asset('images/Saung_cho_gridimg.png')
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
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
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
                          child: Image.asset('images/Sayar_Ma_Lay_img.jpg')
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
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
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
                          child: Image.asset('images/A_Nay_Nee_Khae_gridimg.jpg')
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
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
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
                          child: Image.asset('images/Myat_Wun_-_Kha_Chorus_gridimg.jpg')
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
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
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

      Padding(
            padding: const EdgeInsets.only(
              left:60,
              right:60
            ),
            child: ListTile(
              leading:Text(
                  'Status Tunes',
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
                    fontSize: 17,
                    color:const Color.fromARGB(255, 0, 48, 183),
                    fontWeight: FontWeight.w900,
                  )
            
                )
              ),
            ),
          ),

          
          Container(
            height:50, //inorder to leave some space between search bar container and listtile
          ),

          //NEXT GRID STARTS HERE

          Padding(
        padding: const EdgeInsets.only(
          left:55,
          right:55
        ),
        child: SizedBox(
         height:1350,
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
                          child: Image.asset('images/chill.png',
                          fit:BoxFit.fitWidth
                          )
                          ),
                          
                        SizedBox(height:22),
                        Text(
                          'Vacation (mm)',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:12),
                        
                        Row(
                            children:[ 
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
                            ),
                            Text(
                              'Set',
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
                          child: Image.asset('images/driving.png')
                          ),
                       SizedBox(height:22),
                        Text(
                          'Driving (mm)',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:12),
                        Row(
                            children:[ 
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
                            ),
                            Text(
                              'Set',
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
                          child: Image.asset('images/sleep.png')
                          ),
                        SizedBox(height:22),
                        Text(
                          'Sleep (mm)',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:12),
                        Row(
                            children:[ 
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
                            ),
                            Text(
                              'Set',
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
                          child: Image.asset('images/gym.png')
                          ),
                        SizedBox(height:22),
                        Text(
                          'Gym (mm)',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:12),
                        Row(
                            children:[ 
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
                            ),
                            Text(
                              'Set',
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
                          child: Image.asset('images/meeting.png')
                          ),
                        SizedBox(height:22),
                        Text(
                          'Meeting (mm)',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:12),
                        Row(
                            children:[ 
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
                            ),
                            Text(
                              'Set',
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
                          child: Image.asset('images/unwell.png')
                          ),
                        SizedBox(height:22),
                        Text(
                          'Unwell (mm)',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:12),
                        Row(
                            children:[ 
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
                            ),
                            Text(
                              'Set',
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
                          child: Image.asset('images/gym.png')
                          ),
                        SizedBox(height:22),
                        Text(
                          'Gym (mm)',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:12),
                        Row(
                            children:[ 
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
                            ),
                            Text(
                              'Set',
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
                          child: Image.asset('images/meeting.png')
                          ),
                        SizedBox(height:22),
                        Text(
                          'Meeting (mm)',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:12),
                        Row(
                            children:[ 
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
                            ),
                            Text(
                              'Set',
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

            //Grid no.9:
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
                          child: Image.asset('images/unwell.png')
                          ),
                        SizedBox(height:22),
                        Text(
                          'Unwell (eng)',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:12),
                        Row(
                            children:[ 
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
                            ),
                            Text(
                              'Set',
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
              //Grid no.10:
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
                          child: Image.asset('images/driving.png')
                          ),
                        SizedBox(height:22),
                        Text(
                          'Driving (eng)',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:12),
                        Row(
                            children:[ 
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
                            ),
                            Text(
                              'Set',
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
              //Grid no.11:
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
                          child: Image.asset('images/chill.png')
                          ),
                        SizedBox(height:22),
                        Text(
                          'Vacation (eng)',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:12),
                        Row(
                            children:[ 
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
                            ),
                            Text(
                              'Set',
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
              //Grid no.12:
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
                          child: Image.asset('images/sleep.png')
                          ),
                        SizedBox(height:22),
                        Text(
                          'Sleep (eng)',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height:12),
                        Row(
                            children:[ 
                            IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.shopping_bag),
                                color:Colors.blue[900],
                            ),
                            Text(
                              'Set',
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
            ]),

            
        ), 
      ),
      Container(
        height:340,
        color: Color.fromARGB(255, 8, 59, 134),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top:65,
                left:75,
              ),
              child: Text(
                'Greet Callers With Your Name Tunes',
                style: TextStyle(
                  fontSize: 38,
                  color:Colors.white,
                  
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                top:35,
                left:75,
                right:480
              ),
              child: TextField(
                      style:TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        hintText: '  Find Your Name',
                        //contentPadding:EdgeInsets.only(left: 20),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        isDense:true,
                        hintStyle: TextStyle(
                          fontSize: 20,
                          
                        ),
                        fillColor: Colors.white,
                        filled:true,

                        suffixIcon: Container(
                          margin:EdgeInsets.only(
                            //left:12
                          ),
                          child: TextButton(
                            onPressed: (){},
                            style:TextButton.styleFrom(
                              shape:RoundedRectangleBorder(
                                borderRadius:BorderRadius.only(
                                  bottomRight: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                  
                                )
                              ),
                              backgroundColor: Colors.yellow[700],
                              fixedSize: Size(140, 50)
                            ),
                            child:Text(
                              'Search',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w900
                              ),
                            )
                          ),
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
            ),
          ],
        ),
      
      ),
      Image.asset('images/bottom_image.png'),

      Container(
        height:205,
        color:Colors.black,    
        child:Padding(
          padding: const EdgeInsets.only(
            top:40,
            left:50,
            right:50
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row( 
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       SizedBox(height:10),
                       Text(
                         'Company',
                         style:TextStyle(
                           fontSize:17,
                          color:Colors.yellow[700],
                  
                         )
                       ),
                       SizedBox(height:6),
                        Text(
                          'Help',
                          style:TextStyle(
                            fontSize: 12,
                            color:Colors.white,
                          )
                        ),
                        Text(
                          'Privacy Policy',
                          style:TextStyle(
                            fontSize: 12,
                            color:Colors.white,
                          )
                        ),
                        Text(
                          'Terms and conditions',
                          style:TextStyle(
                            fontSize: 12,
                            color:Colors.white,
                          )
                        ), 
                    ]),
              
                    Padding(
                      padding: const EdgeInsets.only(
                        left:175,
                        
                      ),
                      child: Column(
                        children: [
                         Text(
                           'Follow us On',
                           style:TextStyle(
                             fontSize:17,
                            color:Colors.yellow[700],   
                           )
                         ),
              
                         Row(
                          children: [
                            IconButton(
                              onPressed: (){}, 
                              icon: Icon(FontAwesomeIcons.facebook)
                            ),
                            IconButton(
                              onPressed: (){}, 
                              icon: Icon(FontAwesomeIcons.instagram)
                            ),
                            IconButton(
                              onPressed: (){}, 
                              icon: Icon(FontAwesomeIcons.linkedin)
                            ),    
                        ]),
              
                        
              
                
                      ]),
                    ),

                    
                ]),

          SizedBox(height:20),
          Divider(
                  color: Colors.white,
                  thickness: 1
                  ), 

          Text(
            '© 2023 Copyrights. All Rights Reserved',
            style:TextStyle(
              fontSize:10,
              color:const Color.fromARGB(255, 255, 255, 255))
            ),

                         
          
         ]),
          ),
          
        )
      ])
    );
  }
}




