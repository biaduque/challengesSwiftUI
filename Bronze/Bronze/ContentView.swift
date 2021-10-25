//
//  ContentView.swift
//  Bronze
//
//  Created by Beatriz Duque on 25/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .frame(height:300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment:.leading) {
           
                Text("Oi Bia!")
                    .font(.title)
                    .foregroundColor(.pink)
                HStack {
                    Text("Hoje o dia está nublado.")
                        .font(.subheadline)
                    Spacer()
                    Text("Osasco")
                        .font(.subheadline)
                }
                Divider()
                Text("Encontre localizações")
                    .font(.title2)
                Text("Selecione o local de sua preferência")
                    .font(.subheadline)
                
            }.padding()
            Spacer()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
