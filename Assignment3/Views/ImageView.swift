//
//  ImageView.swift
//  Assignment3
//
//  Created by user231949 on 3/26/23.
//

import SwiftUI

struct ImageView: View {
    
    var url : String
    
    var body: some View {
        AsyncImage(url: URL(string: url)) { image in
            image.resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(width: 150, height: 150)
        } placeholder: {
            ProgressView()
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(url: "https://rickandmortyapi.com/api/character/avatar/1.jpeg")
    }
}
