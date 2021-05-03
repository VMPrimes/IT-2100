//
//  ContentView.swift
//  Lab Sandwiches
//
//  Created by Vickie Primes on 4/26/21.
//

import SwiftUI

struct ContentView: View {
    var sandwiches: [Sandwich] = []
    
    var body: some View {
        NavigationView {
           List(sandwiches) { sandwich in
            NavigationLink(destination: Text(sandwich.name)) {
                Image(sandwich.thumbnailName)
                    .resizable()
                    .frame(width: 40.0, height: 40.0)
                  .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(sandwich.name)
                Text("\(sandwich.ingredientCount) ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
      
          }
            
           }
          .navigationTitle("Sandwiches")
           }
            
        }
        
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sandwiches: testData)
    }
}


