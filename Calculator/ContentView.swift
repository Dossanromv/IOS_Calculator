//
//  ContentView.swift
//  Calculator
//


//  Created by Rakhat Dossanbayev on 24.05.2026.
//

import SwiftUI


struct ContentView: View {

    @State var display = "0"
    @State private var firstNumber = ""
    @State private var operation = ""

    
    var body: some View {
        
        

        
        VStack {
            
            

            Text(display)
                .font(.system(size: 64, weight: .light))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.horizontal)
            
                        
            
             HStack(spacing: 20) {
                 ForEach(["1", "2", "3"], id: \.self) { num in
                     Button {
                         
                         if display == "0" {
                             display = num
                         } else {
                             display += num
                         }
                         
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
                         if display == "0" {
                             display = num
                         } else {
                             display += num
                         }

                         
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
                        if display == "0" {
                            display = num
                        } else {
                            display += num
                        }

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
                        if num == "+" || num == "-" {
                            
                            firstNumber = display
                            operation = num
                            display = "0"

                            
                        } else {
                            
                            if display == "0" {
                                display = num
                            } else {
                                display += num
                            }

                        }
                        
                        
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
                     
                     if display.count > 1 {
                         display.removeLast()
                     } else {
                         display = "0"
                     }
                     
                 } label: {
                     Text("Удалить")
                         .fontWeight(.semibold)
                         .foregroundColor(.white)
                         .frame(width: 70, height: 30)
                         .padding()
                         .background(Color.red)
                         .cornerRadius(12)
                 }
                
                Button {
                    
                    let first = Double(firstNumber) ?? 0
                    let second = Double(display) ?? 0
                    let result: Double

                    if operation == "+" {
                        result = first + second
                    } else if operation == "-" {
                        result = first - second
                    } else {
                        result = 0
                    }

                    if result.truncatingRemainder(dividingBy: 1) == 0 {
                        display = String(Int(result))
                    } else {
                        display = String(result)
                    }
                } label: {
                    Text("=")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 10, height: 30)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(12)
                }

                
                 Button {
                     
                     display = "0"
                     
                 } label: {
                     Text("Отмена")
                         .fontWeight(.semibold)
                         .foregroundColor(.white)
                         .frame(width: 70, height: 30)
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
