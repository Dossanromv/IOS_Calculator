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
            
            @State var display = "0"
            
            
            
             HStack(spacing: 20) {
                 ForEach(["1", "2", "3"], id: \.self) { num in
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

            
             HStack(spacing: 20) {
                 ForEach(["4", "5", "6"], id: \.self) { num in
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
            
            
            
            HStack(spacing: 20) {
                ForEach(["7", "8", "9"], id: \.self) { num in
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
            
            
            HStack(spacing: 20) {
                ForEach(["+", "0", "-"], id: \.self) { num in
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




            HStack(spacing: 10)
            {
                 Button {
                     print("Удалить")
                 } label: {
                     Text("Удалить")
                         .fontWeight(.semibold)
                         .foregroundColor(.white)
                         .frame(width: 100, height: 30)
                         .padding()
                         .background(Color.red)
                         .cornerRadius(12)
                 }
                
                 Button {} label: {
                     Text("Отмена")
                         .fontWeight(.semibold)
                         .foregroundColor(.white)
                         .frame(width: 100, height: 30)
                         .padding()
                         .background(Color.gray)
                         .cornerRadius(12)
                 }
             }
             .padding(.horizontal)
         }
         .padding(.top)
            
        }
        
    }



#Preview {
    ContentView()
}
