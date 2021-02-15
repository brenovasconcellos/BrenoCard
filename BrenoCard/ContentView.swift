//
//  ContentView.swift
//  BrenoCard
//
//  Created by user183164 on 11/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.20, green: 0.60, blue: 0.86).edgesIgnoringSafeArea(.all)
            VStack {
                Image("Breno")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Breno Vasconcellos")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("IOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    .padding(.bottom)
                Divider()
                InfoView(text: "+55 091 98186-2676", imageName: "phone.fill")
                    .padding(.all)
                Divider()
                InfoView(text: "brenov.dev@gmail.com", imageName: "envelope.fill")
                    .padding(.horizontal)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
