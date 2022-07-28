//
//  ContentView.swift
//  slotMachineGame
//
//  Created by Asmaa Abdul-Amin on 1/29/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var credits = 500
    @State var slot1 = "fruit1"
    @State var slot2 = "fruit2"
    @State var slot3 = "fruit3"
    
    var body: some View {
        VStack(spacing: 20.0) {
           
           
         // Game Title
            Text("Slot Machines!").font(.largeTitle)
                .padding()
            
            Spacer()
            
        // Score
                Text("Credits: \(credits)" )
            
            Spacer()
            
        // Slots
            HStack{
                Image(slot1)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
               
                Image(slot2)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
              
                Image(slot3)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            Spacer()
            
     // Spin Button
            Button(action: {
                // Randomize the numbers
               let slot1Rand = Int.random(in: 1...3)
               let slot2Rand = Int.random(in: 1...3)
               let slot3Rand = Int.random(in: 1...3)
                // Update the slots
                slot1 = "fruit" + String(slot1Rand)
                slot2 = "fruit" + String(slot2Rand)
                slot3 = "fruit" + String(slot3Rand)
                
                // Update credits based on match or not
                if slot1 == slot2 && slot2 == slot3 {
                    // Match
                    credits += 1000
                    
                }
                else {
                    credits -= 5
                }
                
            }, label: {
                Image("spinbutton")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
