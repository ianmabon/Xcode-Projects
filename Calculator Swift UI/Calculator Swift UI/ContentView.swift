//
//  ContentView.swift
//  Calculator Swift UI
//
//  Created by Ian Mabon on 11/6/19.
//  Copyright © 2019 Ian Mabon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black).edgesIgnoringSafeArea(.all)
            Spacer()
            VStack {
                Text("0")
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                HStack {
                    ZStack{
                        Circle.init()
                            .frame(width: 90, height: 90, alignment: .center)
                            .foregroundColor(.orange)
                        Text("%")
                    }
                    Spacer()
                    ZStack{
                        Circle.init().frame(width: 90, height: 90, alignment: .center).foregroundColor(.orange)
                        Text("+/-")
                    }
                    Spacer()
                    ZStack{
                        Circle.init().frame(width: 90, height: 90, alignment: .center).foregroundColor(.orange)
                        Text("AC")
                    }
                    Spacer()
                    ZStack{
                        Circle.init().frame(width: 90, height: 90, alignment: .center).foregroundColor(.orange)
                        Text("÷")
                    }
                }
                .foregroundColor(.white).font(.system(size: 50))
                HStack
                    {
                        ZStack{
                            Circle.init().frame(width: 90, height: 90, alignment: .center).foregroundColor(.blue)
                            Text("7")
                        }
                        Spacer()
                        ZStack{
                            Circle.init().frame(width: 90, height: 90, alignment: .center).foregroundColor(.blue)
                            Text("8")
                        }
                        Spacer()
                        ZStack{
                            Circle.init().frame(width: 90, height: 90, alignment: .center).foregroundColor(.blue)
                            Text("9")
                        }
                        Spacer()
                        ZStack{
                            Circle.init().frame(width: 90, height: 90, alignment: .center).foregroundColor(.orange)
                            Text("x")
                        }
                }
                .foregroundColor(.white).font(.system(size: 50))
                HStack {
                    ZStack{
                        Circle.init().frame(width: 90, height: 90, alignment: .center).foregroundColor(.blue)
                        Text("4")
                    }
                    Spacer()
                    ZStack{
                        Circle.init().frame(width: 90, height: 90, alignment: .center).foregroundColor(.blue)
                        Text("5")
                    }
                    Spacer()
                    ZStack{
                        Circle.init().frame(width: 90, height: 90, alignment: .center).foregroundColor(.blue)
                        Text("6")
                    }
                    Spacer()
                    ZStack{
                        Circle.init().frame(width: 90, height: 90, alignment: .center).foregroundColor(.orange)
                        Text("-")
                    }
                    
                }
                .foregroundColor(.white).font(.system(size: 50))
                
                HStack {
                    ZStack{
                        Circle.init().frame(width: 90, height: 90, alignment: .center).foregroundColor(.blue)
                        Text("1")
                    }
                    Spacer()
                    ZStack{
                        Circle.init().frame(width: 90, height: 90, alignment: .center).foregroundColor(.blue)
                        Text("2")
                    }
                    Spacer()
                    ZStack{
                        Circle.init().frame(width: 90, height: 90, alignment: .center).foregroundColor(.blue)
                        Text("3")
                    }
                    Spacer()
                    ZStack{
                        Circle.init().frame(width: 90, height: 90, alignment: .center).foregroundColor(.orange)
                        Text("+")
                    }
                    
                } .foregroundColor(.white).font(.system(size: 50))
                HStack {
                    ZStack{
                        Circle.init().frame(width: 90, height: 90, alignment: .center).foregroundColor(.blue)
                        Text("0").foregroundColor(.white).font(.system(size: 50))
                    }
                    Spacer()
                    ZStack{
                        Circle.init().frame(width: 90, height: 90, alignment: .center).foregroundColor(.blue)
                        Text(".").foregroundColor(.white).font(.system(size: 50))
                    }
                    Spacer()
                    ZStack{
                        Circle.init().frame(width: 90, height: 90, alignment: .center).foregroundColor(.blue)
                        Text("=")
                    } .foregroundColor(.white).font(.system(size: 50))
                }
            }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
