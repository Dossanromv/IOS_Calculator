//
//  ContentView.swift
//  Calculator
//


//  Created by Rakhat Dossanbayev on 24.05.2026.
//

import SwiftUI


struct ContentView: View {

    var body: some View {
        VStack {
            
            //            Image(systemName: "globe")
            //                .imageScale(.large)
            //                .foregroundStyle(.tint)
            
            // Вынеси кнопку в отдельный View или используй HStack/VStack
            HStack(spacing: 16) {
                ForEach(["1", "2", "3",], id: \.self) { num in
                    Button {
                        print("Нажал \(num)")
                    } label: {
                        Text(num)
                            .fontWeight(.semibold)
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 60, height: 60)
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                }
            }
            
            
            
            
            
        }
        
    }

}

#Preview {
    ContentView()
}
