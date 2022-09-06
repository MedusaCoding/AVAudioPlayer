//
//  ContentView.swift
//  Music SwiftUI
//
//  Created by Ronan Chenay on 06/09/2022.
//

import SwiftUI
import AVFoundation

var player:AVAudioPlayer!

struct ContentView: View {
    var body: some View {
        
        ZStack{
            
        // Background //
        Rectangle()
        .fill(Color.black)
        .frame(width: .infinity, height: .infinity)
        .edgesIgnoringSafeArea(.all)
            
        Rectangle()
        .fill(Color.white)
        .frame(width: .infinity, height: .infinity)
        .opacity(0.2)
        .edgesIgnoringSafeArea(.all)
            
       
           
            RoundedRectangle(cornerRadius: 30)
            .strokeBorder(.white, lineWidth: 5)
            .frame(width: 350, height: 650)
            
         
            
        VStack{
            
            Spacer()
            
            Text("XXXTenation BAD")
                .foregroundColor(Color.white)
                .font(.system(size:30))
            
           
            Image("xxx")
                .resizable()
                .frame(width: 300, height: 450)
            
           
            
            Button(action: { // Button Musique
            self.playSound()
        }) {
            
                    Image(systemName: "play.circle")
                    .foregroundColor(Color.white)
                    .font(.system(size: 70))
                 
        }
            Spacer()
    }
    } // ZStack
}
   
    func playSound() {
        let url = Bundle.main.url(forResource:"off",withExtension: "mp3")
        
        guard url != nil else {
            return
        }
    
        do{
            player = try AVAudioPlayer(contentsOf: url! )
            player?.play()
        }catch{
            
            print("erreur systeme")
        }
}
                    
        
        
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
