//
//  ContentView.swift
//  CalculadoraIMCSwiftUI
//
//  Created by Marco Alonso Rodriguez on 24/04/23.
//

import SwiftUI

struct ContentView: View {
    @State  var peso: Float = 0.0
    @State  var altura: Float = 0.0
    @State var resultado: Float = 0.0
    @State  var calculatedResult = false
    @State  var isDisabled = true
    
    var body: some View {
        NavigationView {
            VStack {
                // MARK:  Peso Slider
                HStack {
                    Text("Peso")
                        .font(.title)
                    
                    Spacer()
                    
                    Text("\(String(format: "%.1f", peso)) Kg.")
                        .font(.title)
                }
                
                Slider(value: $peso, in: 2...220, step: 1.0)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .accentColor(.purple)
                
                // MARK:  Altura Slider
                
                HStack {
                    Text("Altura")
                        .font(.title)
                    
                    Spacer()
                    
                    Text("\(String(format: "%.1f", altura)) Cms.")
                        .font(.title)
                }
                
                Slider(value: $altura, in: 30...240, step: 1.0) { _ in
                    isDisabled = false
                }.frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .accentColor(.purple)
                
                
                Image("imc")
                    .resizable()
                    .frame(maxHeight: 300)
                    .cornerRadius(8)
                    .shadow(radius: 6)
                
                Button {
                    //Mandar llamar a calcular
                    calcularIMC(peso: peso, altura: altura)
                    
                } label: {
                    Text("Calcular")
                        .font(.largeTitle)
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(
                            isDisabled ? Color.gray : Color.purple
                        )
                        .cornerRadius(25)
                }.disabled(isDisabled)
                
                
            }
            .padding(.leading, 20)
            .padding(.trailing, 20)
            .navigationTitle("Calculadora IMC")
            .fullScreenCover(isPresented: $calculatedResult) {
                ResultadoView(resultado: $resultado)
            }
        }
    }
    
    // MARK:  Functions
    func calcularIMC(peso: Float, altura: Float){
        let alturaMts = altura / 100
        let resultado = peso / (alturaMts * alturaMts)
        self.resultado = resultado
        print(self.resultado)
        calculatedResult = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
