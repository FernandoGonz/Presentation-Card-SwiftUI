//
//  ContentView.swift
//  FernandoCard
//
//  Created by Fernando González on 02/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.0)
                .ignoresSafeArea(.all)
            VStack {
                Image("")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Fernando González")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Mobile Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                InfoView(textLabel: "+52 4451074", strigIcon: "phone.fill")
                InfoView(textLabel: "mat.fernandogonzalez@gmail.com", strigIcon: "envelope.fill")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone XR"))
    }
}

