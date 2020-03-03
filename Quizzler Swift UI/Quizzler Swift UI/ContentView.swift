//
//  ContentView.swift
//  Quizzler Swift UI
//
//  Created by Ian Mabon on 11/14/19.
//  Copyright © 2019 Ian Mabon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let questionArray = [["1 + 2 = 3", "True"], ["The capital of California is Los Angeles", "False"], ["Ian was born in 2001", "True"], ["Longhouse is gross", "True"], ["Computer Science is extremely fun", "True"], ["Quiz Done!", "poop"]]
    @State var questionText = "1 + 2 = 3"
    @State var questionNumber = 0
    @State var userAnswer = "placeholder"
    @State var actualAnswer = "placeholder"
    @State var score = 0
    var body: some View {
        ZStack {
            Color(.systemIndigo).edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text("Score: \(score)/5").font(.system(size: 25)).padding(.horizontal)
                    Spacer()
                }
                Spacer()
                Text(questionText).font(.system(size: 30))
                Spacer()
                Button(action: {
                    self.userAnswer = "True"
                    self.actualAnswer = self.questionArray[self.questionNumber][1]
                        if self.userAnswer == self.actualAnswer && self.questionNumber <= 4 {
                            if self.questionNumber <= 4 {
                            self.score += 1
                            } else {
                                print("QUIZ DONE")
                            }
                        }
                    if self.questionNumber + 1 < self.questionArray.count {
                        self.questionNumber += 1
                    } else {
                        print("Quiz done")
                    }
                    self.questionText = self.questionArray[self.questionNumber][0]
                    }) {
                    ZStack{
                        Rectangle().frame(width: 300, height: 50, alignment: .center).foregroundColor(.green)
                        Text("True").font(.system(size: 25)).foregroundColor(.black)
                    }
                    
                }
                Button(action: {
                    self.userAnswer = "False"
                    self.actualAnswer = self.questionArray[self.questionNumber][1]
                        if self.userAnswer == self.actualAnswer && self.questionNumber <= 4 {
                        self.score += 1
                        }
                    if self.questionNumber + 1 < self.questionArray.count {
                        self.questionNumber += 1
                    } else {
                        print("Quiz done")
                    }
                    self.questionText = self.questionArray[self.questionNumber][0]
                }) {
                    ZStack{
                        Rectangle().frame(width: 300, height: 50, alignment: .center).foregroundColor(.red)
                        
                        Text("False").font(.system(size: 25)).foregroundColor(.black)
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
