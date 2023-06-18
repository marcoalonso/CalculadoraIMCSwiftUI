//
//  ImcInfoView.swift
//  CalculadoraIMCSwiftUI
//
//  Created by Marco Alonso Rodriguez on 17/06/23.
//

import SwiftUI

struct ImcInfoView: View {
    var body: some View {
        VStack {
            Image("imc")
                .resizable()
                .frame(maxHeight: 300)
                .cornerRadius(12)
                .shadow(radius: 8)
            
            ScrollView {
                Text("El índice de masa corporal (IMC) es un número que se calcula con base en el peso y la estatura de la persona. Para la mayoría de las personas, el IMC es un indicador confiable de la gordura y se usa para identificar las categorías de peso que pueden llevar a problemas de salud.  El índice de masa corporal (IMC) es el peso de una persona en kilogramos dividido por el cuadrado de la estatura en metros. El IMC es un método de evaluación fácil y económico para la categoría de peso: bajo peso, peso saludable, sobrepeso, y obesidad. \n El IMC no mide la grasa corporal directamente, pero el IMC se correlaciona moderadamente con medidas más directas de la grasa corporal.           \n                  Además, el IMC parece estar tan fuertemente correlacionado con diversos resultados metabólicos y de enfermedades como lo están estas medidas más directas de la grasa corporal.")
                    .font(.title2)
                    .foregroundColor(.purple)
                    .multilineTextAlignment(.center)
            }
        }
        .padding(10)
    }
}

struct ImcInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ImcInfoView()
    }
}
