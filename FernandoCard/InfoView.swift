//
//  InfoView.swift
//  FernandoCard
//
//  Created by Fernando González on 05/09/21.
//

import SwiftUI

struct InfoView: View {
    let textLabel: String
    let strigIcon: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .frame(width: .infinity, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: strigIcon)
                        .foregroundColor(.green)
                    Text(textLabel)
                        .foregroundColor(.black)
                }
            )
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(textLabel: "Some text", strigIcon: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
