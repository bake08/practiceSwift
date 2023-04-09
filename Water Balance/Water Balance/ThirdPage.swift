//
//  ThirdPage.swift
//  Water Balance
//
//  Created by bakebrlk on 09.04.2023.
//

import SwiftUI

struct ThirdPage: View {
   
    @State var input = ""
    var body: some View {
        
        VStack{
            
            Text("WATER BALANCE")
                .font(.system(size: 24, weight: .heavy))
                .foregroundColor(Color.blue)
                .italic()
            
            Text("Daily intake?")
                .font(.system(size: 36, weight: .bold))
                .padding(EdgeInsets(top: 64, leading: 0, bottom: 0, trailing: 0))
            
            
            HStack{
                TextField("2400",text:  $input)
                    .multilineTextAlignment(.center)
                    .keyboardType(.decimalPad)
                    .frame(width: 250, height: 60)
                    .background(Color.white)
                    .cornerRadius(16)
                Text("ML")
            }
            .frame(width: 358, height: 108)
            .background(Color(red: 165 / 255, green: 225 / 255, blue: 255 / 255))
            .cornerRadius(16)
            .padding(EdgeInsets(top: 32, leading: 0, bottom: 0, trailing: 0))
            
            Button(action: {}){
                
                Text("Save")
                    .foregroundColor(Color.white)
                    .font(.system(size: 22, weight: .bold))
                    .frame(width: 295, height: 28)
                    .padding()
            }
            .background(Color.blue)
            .cornerRadius(16)
            .padding(EdgeInsets(top: 116, leading: 0, bottom: 0, trailing: 0))
        }
    
    }
}

struct ThirdPage_Previews: PreviewProvider {
    static var previews: some View {
        ThirdPage()
    }
}
