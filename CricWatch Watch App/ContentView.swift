//
//  ContentView.swift
//  CricWatch Watch App
//
//  Created by Musa Malik on 1/28/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var runs = 0
    @State var balls = 0
    @State var overs = 0
    @State var target = 0
    
    var body: some View {
        VStack {
            HStack {
                Text("Runs: \(runs)")
                    .font(.headline)
                    .padding(.top, 2.5)
            }
            
            Spacer()
            
            HStack {
                Text("Target: \(target)")
                    .font(.footnote)
                    .foregroundColor(Color(red: 0.39215686274509803, green: 0.8274509803921568, blue: 1.0))
                    .padding(.vertical, 2.0)
            }
            
                
            HStack {
                Button(action: {
                    self.runs -= 1
                }) {
                    Text("-")
                        .foregroundColor(.red)
                }
                
                Spacer()
                
                Button(action: {
                    self.target = runs
                    self.runs = 0
                }) {
                    Text("0")
                        .foregroundColor(.blue)
                }
                
                Button(action: {
                    self.runs += 1
                    if runs > target {
                        self.target = 0
                    }
                }) {
                    Text("+")
                        .foregroundColor(.green)
                }
            }
            
            HStack {
                Text("Balls: \(balls)")
                    .font(.headline)
                    .padding(5.0)
                Text("Overs: \(overs)")
                    .font(.headline)
                    .padding(5.0)
            }

            
            HStack {
                Button(action: {
                    self.balls -= 1
                }) {
                    Text("-")
                        .foregroundColor(.red)
                }
                                
                Button(action: {
                    self.balls = 0
                    self.overs = 0
                }) {
                    Text("0")
                        .foregroundColor(.blue)
                }
                
                
                
                Button(action: {
                    self.balls += 1
                    if self.balls > 6 {
                        self.balls = 0
                        self.overs += 1
                    }
                }) {
                    Text("+")
                        .foregroundColor(.green)
                }
            }
            
            Spacer()
            Spacer()
            
            Text("By Musa | v1.0")
                .font(.footnote)
                .fontWeight(.thin)
                .lineLimit(8)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

