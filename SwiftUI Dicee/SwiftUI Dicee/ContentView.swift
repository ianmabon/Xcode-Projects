//
//  ContentView.swift
//  SwiftUI Dicee
//
//  Created by Ian Mabon on 10/31/19.
//  Copyright © 2019 Ian Mabon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("GreenBackground")
            .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("DiceeLogo")
                .resizable()
                .frame(width: 200, height: 150, alignment: .top)
                    .padding()
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 60))
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
       
        }
    }
}
struct DiceView: View {
   
    let n: Int
    
    var body: some View {
        Image("Dice\(n)")
        .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


