//
//  ContentView.swift
//  warChallenge
//
//  Created by Jonathan on 2022/04/07.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard="card3"
    @State var cpuCard="card4"
    @State var playerScore=0
    @State var cpuScore=0
    
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button (action:{
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                    }else if playerRand < cpuRand{
                        cpuScore += 1
                    }
                    
                    
                    
                } ,label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")                    .foregroundColor(Color.white).font(.headline).padding(.bottom, 10.0)
                        Text(String(playerScore)).font(.headline) .padding(.bottom, 10.0)                .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0).font(.headline)
                        Text(String(cpuScore)).foregroundColor(Color.white)
                            .padding(.bottom, 10.0).font(.headline)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
