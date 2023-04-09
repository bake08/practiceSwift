//
//  FourPage.swift
//  Water Balance
//
//  Created by bakebrlk on 09.04.2023.
//

import SwiftUI

struct Main: View {
    var body: some View {
        VStack{
            
            VStack{
                ZStack{
                    
                    Circle()
                        .stroke(Color.white,lineWidth: 4)
                        .frame(width: 160, height: 160)
                    
                    VStack{
                        Text("0%")
                            .font(.system(size: 36, weight: .bold))
                        
                        Text("0 out of 2,4 L")
                        
                    }
                    
                }
                .padding(EdgeInsets(top: 32, leading: 89, bottom: 58, trailing: 89))
                
                Text("Monday, 25th of November")
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 40, trailing: 16))


               } .background(Color(red: 212 / 255, green: 225 / 255, blue: 248 / 255))
                .cornerRadius(16)
            
            
            Text("Add your first drink for today")
                .multilineTextAlignment(.center)
                .font(.system(size: 36, weight: .bold))
                .padding(20)
            
            Button(action: {}){
                
                Text("Add")
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

struct MainPreviews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
