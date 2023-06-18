//
//  SourcesView.swift
//  CalculadoraIMCSwiftUI
//
//  Created by Marco Alonso Rodriguez on 17/06/23.
//

import SwiftUI
import WebKit

struct SourcesView: View {
    var body: some View {
        VStack {
            List(articulos) { articulo in
                NavigationLink(destination: WebView(urlString: articulo.url)) {
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
        
    }
}

struct WebView: UIViewRepresentable {
    var urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let url = URL(string: urlString)!
            let request = URLRequest(url: url)
            uiView.load(request)
    }
}

struct SourcesView_Previews: PreviewProvider {
    static var previews: some View {
        SourcesView()
    }
}
