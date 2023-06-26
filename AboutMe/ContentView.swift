//
//  ContentView.swift
//  AboutMe
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    var body: some View {
        VStack {
            ZStack {
                Color(red: 0.60, green: 0.40, blue: 0.5)
                    .blur(radius: 10.0)
                Text("S I M O N N I")
                    .fontWeight(.bold)
                    .font(.title)
                    .position(x:200, y:95)
                Text("Wanna know me?")
                Image("Image 1")
                    .resizable()
                    .frame(width:350, height:400)
                    .border(Color.white, width: 10)
                    .padding()
                Button("Click!") {
                    self.showDetails = true
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.black)
                .cornerRadius(10)
                .position(x:185, y:650)
                .padding()
                .bold()
            }
        }
        .sheet(isPresented: $showDetails) {
            ZStack {
                VStack {
                        Text("About Me")
                            .font(.title)
                            .bold()
                            .padding()
                            .foregroundColor(.brown)
                            .position(x:200, y:85)
                        Image("Image 2")
                            .resizable(capInsets: EdgeInsets(top: 0.0, leading: -20.0, bottom: 0.0, trailing: -20.0))
                            .frame(width: 190.0, height: 200.0)
                            .position(x:100, y:200)
                        Text("I love to hangout!")
                            .font(.title)
                            .position(x:300, y:200)
                            .bold()
                    }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
