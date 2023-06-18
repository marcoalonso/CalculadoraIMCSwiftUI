//
//  SourcesView.swift
//  CalculadoraIMCSwiftUI
//
//  Created by Marco Alonso Rodriguez on 17/06/23.
//

import SwiftUI

struct SourcesView: View {
    var body: some View {
        NavigationView {
            VStack {
                List(articulos) { articulo in
                    NavigationLink(destination: EmptyView()) {
                        HStack {
                            Image(systemName: "globe")
                                .resizable()
                                .frame(width: 35, height: 35)
                            
                            VStack {
                                Text(articulo.nombre)
                                    .font(.system(size: 15))
                                    .foregroundColor(.blue)
                                
                                Text("Fuente: \(articulo.fuente)")
                                    .font(.footnote)
                            }
                            
                            
                            Spacer()
                            
                            Image(systemName: "info.circle")
                                .resizable()
                                .frame(width: 15, height: 15)
                            
                        }
                        
                    }
                }
                .frame(maxHeight: .infinity)
                .listStyle(.plain)
            }
            .navigationTitle("Fuentes")
        }
    }
}

struct SourcesView_Previews: PreviewProvider {
    static var previews: some View {
        SourcesView()
    }
}
