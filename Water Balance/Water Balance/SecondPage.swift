//
//  SecondPage.swift
//  Water Balance
//
//  Created by bakebrlk on 09.04.2023.
//

import SwiftUI



func button(text: String) -> some View{
        

    let a =  Button(action: {}){
            Text(text)
                .font(.system(size: 16))
                .frame(width: 124)
                .foregroundColor(Color.black)

        }
            .frame(width: 150, height: 60)
            .background(Color.white)
            .cornerRadius(16)

        return a
    

}

struct SecondPage: View {
    
    private var columns: [GridItem] = [
            GridItem(.fixed(174)),
            GridItem(.fixed(174)),
               
           ]
        

    
    var body: some View {
        VStack {
            Text("WATER BALANCE")
                .font(.system(size: 24, weight: .heavy))
                .foregroundColor(Color.blue)
                .italic()
            
            Text("Remind me each")
                .font(.system(size: 36, weight: .bold))
                .padding(EdgeInsets(top: 64, leading: 0, bottom: 0, trailing: 0))
            
            ZStack{
                VStack{
                    LazyVGrid(columns: columns ,alignment: .center ,spacing: 20 ){
                                    
                                    button(text: "15 minutes")
                                    button(text: "30 minutes")
                                    button(text: "45 minutes")
                                    button(text: "1 hour")
                                    button(text: "1.5 hours")
                                        .border(.blue, width: 3)
                                        .cornerRadius(14)
                                    button(text: "2 hours")
                                    button(text: "3 hours")
                                    button(text: "4 hours")
                                }
                            //    .padding(40)
                                
                }
                .padding(EdgeInsets(top: 24, leading: 0, bottom: 24, trailing: 0))
            }
            .background(Color(red: 165 / 255, green: 225 / 255, blue: 255 / 255))
            .cornerRadius(16)
            .padding(EdgeInsets(top: 32, leading: 0, bottom: 0, trailing: 0))
            
            
            Button(action: {
                print("")
                ThirdPage()
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




struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage()
    }
}
