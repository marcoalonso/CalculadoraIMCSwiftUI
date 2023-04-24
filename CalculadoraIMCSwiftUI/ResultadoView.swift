//
//  ResultadoView.swift
//  CalculadoraIMCSwiftUI
//
//  Created by Marco Alonso Rodriguez on 24/04/23.
//

import SwiftUI



struct ResultadoView: View {
    @Environment(\.presentationMode) var presentatioMode

    @Binding var resultado: Float
    @State var imc: AtributoIMC?
    
    var body: some View {
        VStack {
            Text("Resultado : \(String(format: "%.1f", imc?.valor ?? 0.0))")
                .font(.largeTitle)
                .foregroundColor(imc?.color)
            
            Image(imc?.imagen ?? "flaco")
                .resizable()
                .frame(maxHeight: 300)
                .cornerRadius(12)
                .shadow(radius: 8)
            
            Text(imc?.aviso ?? "-")
                .foregroundColor(imc?.color)
                .font(.title2)
            
            Button {
                presentatioMode.wrappedValue.dismiss()
            } label: {
                Text("Regresar")
                    .font(.title)
                    .frame(maxHeight: 50)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .background(
                        imc?.color
                    )
                    .cornerRadius(50)
            }
            
            Spacer()

            
        }
        
        .onAppear{
            print("Calcular IMC ... \(resultado)")
            
            if resultado < 18.5 {
                imc = AtributoIMC(valor: resultado, aviso: "Tu IMC es muy bajo estas en riesgo de anemia, come mas porcion de alimentos ricos en vitaminas y minerales", color: .yellow, imagen: "flaco")
            }
            
            else if resultado < 24.9 {
                imc = AtributoIMC(valor: resultado, aviso: "Felicidades, tu indice de mas corporal esta dentro de los niveles recomendados, sigue asi!", color: .green, imagen: "normal")
            }
            else if resultado < 29.9 {
                imc = AtributoIMC(valor: resultado, aviso: "Atención, estas en principios de obesidad , haz mas ejercicio y come menos grasas, toma mucha agua.", color: .orange, imagen: "obesidad")
            } else {
                imc = AtributoIMC(valor: resultado, aviso: "Atención tu indice de masa corporal es muy alto, estas en riesgo en tu salud, visita a tu medico o nutriologo favorito.", color: .red, imagen: "sobrepeso")
            }
        }
        .padding(.leading, 40)
        .padding(.trailing, 40)
    }
}

struct ResultadoView_Previews: PreviewProvider {
    static var previews: some View {
        ResultadoView(resultado: .constant(0.0))
    }
}
