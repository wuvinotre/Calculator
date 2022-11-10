//
//  ContentView.swift
//  Calculator
//
//  Created by Vinicius on 09/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var result = ""
    
    var body: some View {
        VStack( alignment: .trailing,spacing: 0){
            Text("\(result.count)")
                .foregroundColor(Color.red)
            Spacer()
            HStack{
                Text(result)
                    .padding()
                    .lineLimit(1)
                    .font(.system(size: CGFloat(60 / Int((Double(result.count + 10) / 10.0 )))))
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity)
                    .fixedSize(horizontal: true, vertical: false)
            }
            HStack{
                Button("AC"){
                    
                } .padding()
                    .frame(maxWidth: .infinity)
                Button("+/-"){
                    
                } .padding()
                    .frame(maxWidth: .infinity)
                Button("%"){
                    
                } .padding()
                    .frame(maxWidth: .infinity)
                Button("/"){
                    
                } .padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
            }.foregroundColor(Color.white)
            HStack{
                Button("7"){
                    result += "7"
                } .padding()
                    .frame(maxWidth: .infinity)
                Button("8"){
                    result += "8"
                } .padding()
                    .frame(maxWidth: .infinity)
                Button("9"){
                    result += "9"
                } .padding()
                    .frame(maxWidth: .infinity)
                Button("X"){
                    
                } .padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
            }
            .foregroundColor(Color.white)
            HStack{
                Button("4"){
                    result += "4"
                } .padding()
                    .frame(maxWidth: .infinity)
                Button("5"){
                    result += "5"
                } .padding()
                    .frame(maxWidth: .infinity)
                Button("6"){
                    result += "6"
                } .padding()
                    .frame(maxWidth: .infinity)
                Button("-"){
                    
                } .padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
            }.foregroundColor(Color.white)
            HStack{
                Button("1"){
                    result += "1"
                } .padding()
                    .frame(maxWidth: .infinity)
                Button("2"){
                    result += "2"
                } .padding()
                    .frame(maxWidth: .infinity)
                Button("3"){
                    result += "3"
                } .padding()
                    .frame(maxWidth: .infinity)
                Button("+"){
                    
                } .padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
            }.foregroundColor(Color.white)
            GeometryReader { geometry in
                HStack{
                    Button("0"){
                        
                    }.padding()
                        .frame(minWidth: geometry.size.width / 2)
                    Button(","){
                        
                    }.padding()
                        .frame(maxWidth: .infinity)
                    Button("="){
                        
                    }.padding(.vertical, 40)
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                }.foregroundColor(Color.white)
            }.frame(maxHeight: 92)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
