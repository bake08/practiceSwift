//
//  ContentView.swift
//  Water Balance
//
//  Created by bakebrlk on 09.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("WATER BALANCE")
                .font(.system(size: 24, weight: .heavy))
                .foregroundColor(Color.blue)
                .italic()
            
            Text("What is your goal?")
                .font(.system(size: 36, weight: .bold))
                .padding(EdgeInsets(top: 64, leading: 0, bottom: 0, trailing: 0))
            
            ZStack{
                VStack{
                    RadioButton(text: "Goal Number One")
                    RadioButton(text: "Goal Number Two")
                    RadioButton(text: "Goal Number Three")
                    RadioButton(text: "Goal Number Four")
                }
                .padding(EdgeInsets(top: 24, leading: 0, bottom: 24, trailing: 0))
            }
            .background(Color(red: 165 / 255, green: 225 / 255, blue: 255 / 255))
            .cornerRadius(16)
            .padding(EdgeInsets(top: 32, leading: 0, bottom: 0, trailing: 0))
            
            
            Button(action: {
                SecondPage()
            }){
                
                Text("Next")
                    .foregroundColor(Color.white)
                    .font(.system(size: 22, weight: .bold))
                    .frame(width: 295, height: 28)
                    .padding()
            }
            .background(Color.blue)
            .cornerRadius(16)
            .padding(EdgeInsets(top: 116, leading: 0, bottom: 0, trailing: 0))
        }
        .padding()
    }
}

extension Color{
    init? (color : String){
        switch color{
            case "blue" :
                self = .blue
            case "white" :
                self = .white
            default:
                return nil
        }
    }
}


struct RadioButton: View {
    @State private var selected = false
    @State private var color = "white"
    var text: String
    
    var body: some View {
        
        HStack{
            Button(action: {
                selected = !selected
                
                if(selected){
                    self.color = "blue"
                }else{
                    self.color = "white"
                }
            }){
               
                HStack{
                    Text(text)
                        .foregroundColor(Color.black)
                    
                    Spacer()
                    
                    ZStack{
                        Circle()
                            .strokeBorder(.blue)
                            .frame(width: 20,height: 20)
                            .foregroundColor(Color.white)
                        
                        Circle()
                            .frame(width: 12, height: 12)
                            .foregroundColor(Color(color: color))
                    }
                }
                .padding(24)
            }
            .frame(width: 320 , height: 60)
            .background(Color.white)
            .cornerRadius(16)
        }
        .padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 24))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
