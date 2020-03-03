//
//  ContentView.swift
//  Functional Calculator SwiftUI
//
//  Created by Ian Mabon on 11/20/19.
//  Copyright © 2019 Ian Mabon. All rights reserved.
//

import SwiftUI

enum operations {
    //no operation
    case null
    case plus
    case minus
    case multiply
    case divide
    
}
//for saving the first number clicked after an operation is clicked
var previousNumber: Double = 0
var operation = operations.null
//for consecutive equals
var multipleEquals = false
struct ContentView: View {
    @State var topLine: Double = 0.0
    //for knowing if the decimal button was pressed
    @State var decimal = false
    //for amount of decimals added
    @State var counter: Int = 0
    //same operation number for consectuive equals
    @State var operationNumber: Double = 0
    var body: some View {
        ZStack {
            Color(.black).edgesIgnoringSafeArea(.all)
            //these buttons are embeded in HStacks within a VStack
            VStack {
                HStack {
                    Spacer()
                    //what number is displayed
                    Text("\(self.topLine)")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                        .padding(.horizontal)
                    
                }
                HStack {
                    Button(action: {
                        self.topLine = self.topLine / 100
                    }) {
                        ZStack{
                            Rectangle.init()
                                .foregroundColor(.orange)
                            Text("%")
                        }
                    }
                    Spacer()
                    Button(action: {
                        self.topLine = self.topLine * -1
                    }) {
                        ZStack{
                            Rectangle.init()
                                .foregroundColor(.orange)
                            Text("+/-")
                        }
                    }
                    Spacer()
                    Button(action: {
                        //resets all variables and booleans
                        self.decimal = false
                        self.topLine = 0
                        self.counter = 0
                        self.operationNumber = 0
                    }) {
                        ZStack{
                            Rectangle.init()
                                .foregroundColor(.orange)
                            Text("AC")
                        }
                    }
                    Spacer()
                    //each operation button has the exact same code except for each operation's case. Probably should have made a function
                    Button(action: {
                        //saves the first number
                        previousNumber = self.topLine
                        //resets the display
                        self.topLine = 0
                        operation = .divide
                        //resets variables
                        self.counter = 0
                        self.decimal = false
                        multipleEquals = false
                    }) {
                        ZStack{
                            Rectangle.init().foregroundColor(.orange)
                            Text("÷")
                        }
                    }
                }
                .foregroundColor(.white).font(.system(size: 40))
                HStack
                    {
                        Button(action: {
                            //if the decimal button was hit, the proceeding numbers pressed will go to the right of the decimal point. This is true for every number button
                            if self.decimal == true {
                                self.counter += 1
                                self.topLine += 7/pow(10, Double(self.counter))
                            }
                            //moves the previous number in front of the next number. This is also true for every number
                            else {
                                self.topLine = self.topLine * 10 + 7
                            }
                            
                        }) {
                            ZStack{
                                Rectangle.init().foregroundColor(.blue)
                                Text("7")
                            }
                        }
                        Spacer()
                        Button(action: {
                            if self.decimal == true {
                                self.counter += 1
                                self.topLine += 8/pow(10, Double(self.counter))
                            }
                            else {
                                self.topLine = self.topLine * 10 + 8
                            }
                            
                        }) {
                            ZStack{
                                Rectangle.init().foregroundColor(.blue)
                                Text("8")
                            }
                        }
                        Spacer()
                        Button(action: {
                            if self.decimal == true {
                                self.counter += 1
                                self.topLine += 9/pow(10, Double(self.counter))
                            }
                            else {
                                self.topLine = self.topLine * 10 + 9
                            }
                            
                        }) {
                            ZStack{
                                Rectangle.init().foregroundColor(.blue)
                                Text("9")
                            }
                        }
                        Spacer()
                        Button(action: {
                            previousNumber = self.topLine
                            self.topLine = 0
                            operation = .multiply
                            self.counter = 0
                            self.decimal = false
                            multipleEquals = false
                        }) {
                            ZStack{
                                Rectangle.init().foregroundColor(.orange)
                                Text("x")
                            }
                        }
                }
                .foregroundColor(.white).font(.system(size: 40))
                HStack {
                    Button(action: {
                        if self.decimal == true {
                            self.counter += 1
                            self.topLine += 4/pow(10, Double(self.counter))
                        }
                        else {
                            self.topLine = self.topLine * 10 + 4
                        }
                    }) {
                        ZStack{
                            Rectangle.init().foregroundColor(.blue)
                            Text("4")
                        }
                    }
                    Spacer()
                    Button(action: {
                        if self.decimal == true {
                            self.counter += 1
                            self.topLine += 5/pow(10, Double(self.counter))
                        }
                        else {
                            self.topLine = self.topLine * 10 + 5
                        }
                    }) {
                        ZStack{
                            Rectangle.init().foregroundColor(.blue)
                            Text("5")
                        }
                    }
                    Spacer()
                    Button(action: {
                        if self.decimal == true {
                            self.counter += 1
                            self.topLine += 6/pow(10, Double(self.counter))
                        }
                        else {
                            self.topLine = self.topLine * 10 + 6
                        }
                    }) {
                        ZStack{
                            Rectangle.init().foregroundColor(.blue)
                            Text("6")
                        }
                    }
                    Spacer()
                    Button(action: {
                        previousNumber = self.topLine
                        self.topLine = 0
                        operation = .minus
                        self.counter = 0
                        self.decimal = false
                        multipleEquals = false
                    }) {
                        ZStack{
                            Rectangle.init().foregroundColor(.orange)
                            Text("-")
                        }
                    }
                    
                }
                .foregroundColor(.white).font(.system(size: 40))
                
                HStack {
                    Button(action: {
                        if self.decimal == true {
                            self.counter += 1
                            self.topLine += 1/pow(10, Double(self.counter))
                        }
                        else {
                            self.topLine = self.topLine * 10 + 1
                        }
                    }) {
                        ZStack{
                            Rectangle.init().foregroundColor(.blue)
                            Text("1")
                        }
                    }
                    Spacer()
                    Button(action: {
                        if self.decimal == true {
                            self.counter += 1
                            self.topLine += 2/pow(10, Double(self.counter))
                        }
                        else {
                            self.topLine = self.topLine * 10 + 2
                        }
                    }) {
                        ZStack{
                            Rectangle.init().foregroundColor(.blue)
                            Text("2")
                        }
                    }
                    Spacer()
                    Button(action: {
                        if self.decimal == true {
                            self.counter += 1
                            self.topLine += 3/pow(10, Double(self.counter))
                        }
                        else {
                            self.topLine = self.topLine * 10 + 3
                        }
                    }) {
                        ZStack{
                            Rectangle.init().foregroundColor(.blue)
                            Text("3")
                        }
                    }
                    Spacer()
                    Button(action: {
                        previousNumber = self.topLine
                        
                        self.topLine = 0
                        operation = .plus
                        self.counter = 0
                        self.decimal = false
                        multipleEquals = false
                    }) {
                        ZStack{
                            Rectangle.init().foregroundColor(.orange)
                            Text("+")
                        }
                    }
                    
                } .foregroundColor(.white).font(.system(size: 40))
                HStack {
                    Button(action: {
                        if self.decimal == true {
                            self.counter += 1
                            self.topLine += 0/pow(10, Double(self.counter))
                        }
                        else {
                            self.topLine = self.topLine * 10
                        }
                    }) {
                        ZStack{
                            Rectangle.init().foregroundColor(.blue)
                            Text("0")
                                .foregroundColor(.white)
                                .font(.system(size: 40))
                        }
                    }
                    Spacer()
                    HStack {
                        Button(action: {
                            //turns to decimal mode
                            self.decimal = true
                        }) {
                            ZStack{
                                Rectangle.init().foregroundColor(.blue)
                                Text(".")
                                    .foregroundColor(.white)
                                    .font(.system(size: 40))
                            }
                        }
                        Spacer()
                        Button(action: {
                            //resets variables
                            self.counter = 0
                            self.decimal = false
                            //for consecutive equals
                            if multipleEquals == true {
                                //checks case, then does specific operation
                                if operation == .plus {
                                    self.topLine = self.operationNumber + self.topLine
                                } else if operation == .minus {
                                    self.topLine = self.topLine - self.operationNumber
                                } else if operation == .multiply {
                                    self.topLine = self.operationNumber * self.topLine
                                } else if operation == .divide {
                                    self.topLine = self.topLine / self.operationNumber
                                }
                            }
                            //if no operation was pressed, go back to 0
                            else if operation == .null {
                                self.topLine = 0
                            }
                            else {
                                //sets multipleEquals to true and saves the operation number
                                self.operationNumber = self.topLine
                                //uses operation number instead of the previous displayed number and does each operation according to the selected case
                                multipleEquals = true
                                if operation == .plus {
                                    self.topLine = previousNumber + self.topLine
                                } else if operation == .minus {
                                    self.topLine = previousNumber - self.topLine
                                } else if operation == .multiply {
                                    self.topLine = previousNumber * self.topLine
                                } else if operation == .divide {
                                    self.topLine = previousNumber / self.topLine
                                }
                                
                            }
                          
                        }) {
                            ZStack{
                                Rectangle.init().foregroundColor(.blue)
                                Text("=")
                            } .foregroundColor(.white).font(.system(size: 40))
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
