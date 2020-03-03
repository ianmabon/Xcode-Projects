//
//  ContentView.swift
//  Egg Timer Swift UI
//
//  Created by Ian Mabon on 11/9/19.
//  Copyright © 2019 Ian Mabon. All rights reserved.
//

import SwiftUI
var fullTime = 300
struct ContentView: View {
    @State var timeLeft = 300
    @State var timer: Timer?
    @State var title = "Egg!?"
    
    var body: some View {
        ZStack {
            Color(.orange)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text(title).fontWeight(.bold).font(.system(size: 50))
                Spacer()
                HStack {
                    ZStack {
                        Button(action: {
                            self.title = "He Cookin!?"
                            if let temptimer = self.timer {
                                temptimer.invalidate()
                            }
                            fullTime = 300
                            self.timeLeft = 300
                            self.startTimer()
                            
                        }) {
                            Image("soft_egg").resizable().aspectRatio(contentMode: .fit).padding(.horizontal)
                        }
                    }
                    ZStack {
                        Button(action: {
                            self.title = "He Cookin!#@!"
                            if let temptimer = self.timer {
                                temptimer.invalidate()
                            }
                            fullTime = 420
                            self.timeLeft = 420
                            self.startTimer()
                        }) {
                            Image("medium_egg").resizable().aspectRatio(contentMode: .fit).padding(.horizontal)
                        }
                        
                    }
                    ZStack {
                        Button(action: {
                            self.title = "hE cOoKIn!$$$"
                            if let temptimer = self.timer {
                                temptimer.invalidate()
                            }
                            fullTime = 720
                            self.timeLeft = 720
                            self.startTimer()
                        }) {
                            Image("hard_egg").resizable().aspectRatio(contentMode: .fit).padding(.horizontal)
                        }
                        
                    }
                }
                Spacer()
                ProgressBar(value: Double(fullTime - timeLeft), maxValue: Double(fullTime), foregroundColor: .blue)
                    .frame(height: 30, alignment: .center).padding()
                Spacer()
            }
        }
    }
    func startTimer() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            print("\(self.timeLeft)")
            if self.timeLeft > 0 {
                self.timeLeft -= 1
            } else {
                timer.invalidate()
                self.title = "He Ready?!"
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
