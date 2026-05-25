//
//  ContentView.swift
//  Calculator
//


//  Created by Rakhat Dossanbayev on 24.05.2026.
//

import SwiftUI

struct Person {
  let name: String
  var age: Int
  func greet() -> String {
    return "Привет, меня зовут \(name)!"
  }
}


struct ContentView: View {

    var body: some View {
        VStack {

//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
            
            
            Image(systemName:"heart.fill")
                .imageScale(.large)
                .foregroundStyle(.red)
                .padding(25)
            
            Text("Title")
            Text("Description description")
            
            Button(action: {
                        print("Нажал кнопку удаления")
                    }) {
                        Label(
                            title: {
                                Text("Удалить")
                                    .fontWeight(.semibold)
                                    .font(.title)
                            }, icon: {
                                Image(systemName: "trash")
                                    .font(.title)
                            } )
                        .padding()
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(40)
                    }
            
        }
        
    }

}

#Preview {
    ContentView()
}
