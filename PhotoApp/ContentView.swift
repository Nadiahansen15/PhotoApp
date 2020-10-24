//
//  ContentView.swift
//  PhotoApp
//
//  Created by Nadia Hansen on 04/10/2020.
//  Copyright © 2020 Nadia Hansen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var show_modal: Bool = false
    @State var color: String
    
    
    var body: some View {
        ZStack {
        VStack {
            Text("Lær traffiken at kende")
                .font(.title).bold()
                .padding().frame(width: 500, height: 100, alignment: .center)
            Spacer().fixedSize()
            Button(action: {
                self.show_modal = true
                self.color = "red"
            }, label:{
              Text("STOP")
                .padding().frame(width: 200, height: 50, alignment: .center)
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(8)
                }).shadow(color: Color.red, radius: 20, y: 5)
                .sheet(isPresented: self.$show_modal) {
                    DetailView(iscolor: self.$color)
            }
            
            Spacer().fixedSize()
            Button(action: {
                self.show_modal = true
                self.color = "yellow"
            }, label: {
              Text("RYD KRYDSET")
                .padding().frame(width: 200, height: 50, alignment: .center)
                .foregroundColor(.white)
                .background(Color.yellow)
                .cornerRadius(8)
                }).shadow(color: Color.yellow, radius: 20, y: 5)
                .sheet(isPresented: self.$show_modal){
                    DetailView(iscolor: self.$color)
            }
            
            Spacer().fixedSize()
            Button(action: {
                self.show_modal = true
                self.color = "green"
            }, label: {
              Text("GÅ")
                .padding().frame(width: 200, height: 50, alignment: .center)
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(8)
                }).shadow(color: Color.green, radius: 20, y: 5)
            .sheet(isPresented: self.$show_modal){
            DetailView(iscolor: self.$color)
            }
        }.background(Image("fodgang"))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(color: "")
    }
}

