
 ContentView.swift
 TipCalculator

 Created by Devindi Jayawardena on 2022-11-13.


import SwiftUI

struct ContentView: View {

   @State var total = ""
   @State var tipPercent = 15.0

   var body: some View {
       VStack{
           HStack {
               Image(systemName: "dollarsign.circle.fill")
                   .imageScale(.medium)
                   .foregroundColor(.accentColor)
                   .font(.largeTitle)
               Text("Tip Calculator")
                   .font(.largeTitle)
                   .fontWeight(.bold)
                   .foregroundColor(Color.black)
           }

           HStack {
               Text("")
           }

           HStack {
               Text("Rs.")
               TextField("Amount", text: $total)
               //Text(total)
           }

           HStack{
               Slider(
                   value: $tipPercent,
                   in: 1...30,
                   step: 1.0
               )
               Text("\(Int(tipPercent))")
               Text("%")
           }

           if let totalNumber = Double(total){
               Text(verbatim: "Tip Amount : Rs. \(totalNumber * tipPercent / 100)")
           } else{
               Text("Please enter a numeric value")
           }

       }
       .padding()
   }

}


struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
       ContentView()
   }
}





import SwiftUI

struct ContentView: View {
    @State var total = "100"
    @State var tipPercent = 15.0
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "dollarsign.circle.fill")
                    .imageScale(.medium)
                    .foregroundColor(.accentColor)
                    .font(.title)
                Text("Tip Calculator")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            HStack {
                Text("$")
                TextField("Amount", text: $total)
            }
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))")
                Text("%")
            }
            if let totalNumber = Double(total) {
                Text("Tip Amount: $\(totalNumber * tipPercent / 100, specifier: "%0.2f")")
            } else {
                Text("Please enter a numeric value.")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
