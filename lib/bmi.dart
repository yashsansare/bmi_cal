import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  int age=10;
  int weigth =30;
  double h = 100;
  double bmi = 0;
  double temp1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 245, 245),
      body: Column(
        children: [
          SizedBox(
            height:40,
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color.fromARGB(255, 133, 133, 133))
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        child: Text("Age (In Year)",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        child: Text("$age",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(
                        height:20,
                      ),
                      Row(
                          mainAxisAlignment:MainAxisAlignment.center ,
                          children: [
                            InkWell(
                              child: Container(
                                width: 35,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    border: Border.all(color: Colors.black),
                                    color: Color.fromARGB(255, 235, 235, 235)
                                ),
                                child: Text("-",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30)),
                              ),
                              onTap: (){
                                setState(() {
                                  age--;
                                  if(age<0){
                                    age=0;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            InkWell(
                              child: Container(
                                  width: 35,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      color: Color.fromARGB(255, 235, 235, 235),
                                      border: Border.all(color: Colors.black)
                                  ),
                                  child: Text(" + ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30))
                              ),
                              onTap: (){
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ]
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color.fromARGB(255, 124, 124, 124))
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        child: Text("Weigth (Kg)",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        child: Text("$weigth",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(
                          height:20
                      ),
                      Row(
                          mainAxisAlignment:MainAxisAlignment.center ,
                          children: [
                            InkWell(
                              child: Container(
                                width: 35,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    border: Border.all(color: Colors.black),
                                    color: Color.fromARGB(255, 235, 235, 235)
                                ),
                                child: Text("-",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red)),
                              ),
                              onTap: (){
                                setState(() {
                                  weigth--;
                                  if(weigth < 0){
                                    weigth = 0;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            InkWell(
                              child: Container(
                                  width: 35,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      color: Color.fromARGB(255, 235, 235, 235),
                                      border: Border.all(color: Color.fromARGB(255, 0, 0, 0))
                                  ),
                                  child: Text(" + ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30))
                              ),
                              onTap: (){
                                setState(() {
                                  weigth++;
                                });
                              },
                            ),
                          ]
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color.fromARGB(255, 145, 145, 145)),
              color: Colors.white,
            ),
            height: 170,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text("Height",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text("${h.toInt()}",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 12),
                        alignment: Alignment.bottomLeft,
                        child: Text(" cm",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 122, 122, 122)),),
                      ),
                    ),
                  ],
                ),
                Slider(value: h,activeColor: Colors.red,inactiveColor: Color.fromARGB(255, 253, 237, 236), onChanged: (value){
                  setState(() {
                    h = value;
                  });
                },max: 200,),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 70,
            margin: EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color.fromARGB(255, 155, 154, 154))
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,

                    ),
                    child: Text("Gender:",style: TextStyle(fontSize: 29,fontWeight: FontWeight.bold),),
                  ),
                ),

                Expanded(
                  child: InkWell(
                    child: Container(
                      height: 50,
                      margin: EdgeInsets.only(top: 10,bottom:10,left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(255, 13, 13, 13)),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("Male",style: TextStyle(color: Colors.red,fontSize:27,fontWeight: FontWeight.bold),),
                    ),
                    onTap: (){

                      setState(() {

                      });
                    },
                    focusColor: Colors.black.withOpacity(0.3),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 245, 244, 244),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color.fromARGB(255, 5, 5, 5))
                      ),
                      child: Text("Female",style: TextStyle(color: Colors.red,fontSize:27,fontWeight: FontWeight.bold),),
                    ),
                    onTap: (){
                      setState(() {

                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 7,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(child:
              Container()
              ),
              InkWell(
                child: Container(
                  height: 45,
                  alignment: Alignment.center,
                  width: 200,
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                      border: Border.all(color: Color.fromARGB(255, 117, 116, 116))
                  ) ,
                  child: Text("Calculate",style: TextStyle(color: Colors.white,fontSize: 25),),
                ),
                onTap: (){
                  setState(() {
                    temp1=h/100;
                    bmi = weigth /(temp1*temp1);

                  });

                },
              ),
              Expanded(child: Container(),),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child:Text("BMI Is : ${bmi.toInt()}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          SizedBox(
            height: 20,
          ),
          (bmi<=18.4 )? Text("UnderWeigth",style: TextStyle(color: Color.fromARGB(255, 244, 104, 94),fontSize: 20,fontWeight: FontWeight.bold),):((bmi >= 18.4 && bmi <=24.9)?Text("Normal",style: TextStyle(color: Color.fromARGB(255, 231, 77, 66),fontSize: 20,fontWeight: FontWeight.bold)):((bmi>=24.9 && bmi<=39.9 )? Text("OverWeigth",style: TextStyle(color: Color.fromARGB(255, 243, 50, 36),fontSize: 20,fontWeight: FontWeight.bold)):(bmi >= 40.0)?Text("Obese",style: TextStyle(color: Color.fromARGB(255, 243, 25, 9),fontSize: 20,fontWeight: FontWeight.bold)):Text(""))),

        ],
      ),
    );
  }
}