//
//  ContentView.swift
//  SwiftUIBulleyeV1
//
//  Created by yup on 2021/05/09.
//

import SwiftUI

struct ContentView: View {
    // Properties
    //===============
    
    // stage for User Interface views
    @State var alertIsVisible: Bool = false
    @State var sliderValue: Double = 50.0
    
    var body: some View {
        VStack{
            Spacer()
            HStack {
                Text("Put the bull eye as clone as you can do:")
                Text("100")
            }
            Spacer()
            // Slider row
            // TODO : Add view for the Slider row here
            HStack {
                Text("1")
                Slider(value: self.$sliderValue, in: 1...100)
                Text("100")
            }
            Spacer()
            
            // Button row
            Button(action: {
                print("Button pressed")
                self.alertIsVisible = true
            }) {
                Text("Hit me!")
            }
            // State for alert
            .alert(isPresented: self.$alertIsVisible){
                Alert(title:Text("Hello there!"),
                      message: Text("The slider's value is \(Int(self.sliderValue.rounded()))."),
                      dismissButton: .default(Text("Awesome!")))
            } // end if .alert
            Spacer()
            // Score row
            // TODO : Add view for the score, rounds and start over and info button
            HStack {
                Button(action:{}){
                    Text("Start over")
                }
                Spacer()
                Text("Score:")
                Text("999999")
                Spacer()
                Text("Score:")
                Text("999")
                Spacer()
                Button(action:{}){
                    Text("Inform")
                }
            }.padding(.bottom, 20)
        } // End of VStack
    } // End of body
    
    // Methods
    
    
} // End of struct

// Preview
//==============
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
