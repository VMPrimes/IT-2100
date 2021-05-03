//
//  ContentView.swift
//  Lab 15 Binding
//
//  Created by Vickie Primes on 4/28/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstName = ""
    
    private func buttonPressed() {
        print(firstName)
    }
    
    var body: some View {
        
        VStack {
            VStack {
                Text("Your name will be displayed here!")
                
                TextField("Enter name", text: $firstName)
                    .padding(12)
                
                Button(action: buttonPressed) {
                    Text("Press me!")
                
               
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
