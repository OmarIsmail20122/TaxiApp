//
//  OTPTextField.swift
//  TaxiApp
//
//  Created by MacBookPro on 13/03/2025.
//

import SwiftUI

struct OTPTextField: View {
    
    @State var otp : [String]
    let numberOfField : Int
    @FocusState private var fieldFocus : Int?
    @State private var oldValue = ""
 
    var body: some View {
        HStack{
            ForEach(0..<numberOfField , id: \.self) { index in
                TextField("", text: $otp[index] ,onEditingChanged: {
                    editing in
                    oldValue = otp[index]
                    
                } )
                .keyboardType(.numberPad)
                .frame(width: 48 , height: 48)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5)
                .multilineTextAlignment(.center)
                .focused($fieldFocus , equals:  index)
                .tag(index)
                .onChange(of: otp[index]) {newIndex in
                    if otp[index].count > 1 {
                        let currentValue = Array(otp[index])
                        
                        if currentValue[0] == Character(oldValue) {
                            otp[index] = String(otp[index].suffix(1))
                        }
                        else {
                            otp[index] = String(otp[index].prefix(1))
                        }
                    }
                    if !newIndex.isEmpty {
                        if index == numberOfField - 1 {
                            fieldFocus = nil
                        }
                        else {
                            fieldFocus = (fieldFocus ?? 0) + 1
                        }
                    } else {
                        fieldFocus = (fieldFocus ?? 0) - 1
                    }
                }
            }
        }
    }
}

//
//struct OTPTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        OTPTextField()
//    }
//}
