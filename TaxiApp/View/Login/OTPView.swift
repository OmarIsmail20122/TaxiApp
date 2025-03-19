//
//  OTPView.swift
//  TaxiApp
//
//  Created by MacBookPro on 13/03/2025.
//

import SwiftUI

struct OTPView: View {
    @State private var otp: [String] = Array(repeating: "", count: 6)
    @Environment(\.dismiss) private var dismiss
    @Environment(\.presentationMode) private var mode : Binding<PresentationMode>
    var body: some View {
        ZStack{
            ScrollView{
                NavigationBack()
                
                VStack(alignment: .leading, spacing: 5){
                    Text("OTP Verification")
                        .font(.customfont(.extraBold, fontSize: 24))
                        .padding(.bottom , 20)
                    Text("Enter the 4-digit code sent to ypu")
                        .font(.customfont(.medium, fontSize: 16))
                        .foregroundColor(Color.secondaryText)
//                        .frame(maxWidth: .infinity, alignment: .center)
                    HStack{
                        Text("+201016481694")
                            .font(.customfont(.medium, fontSize: 16))
                            .foregroundColor(Color.secondaryText)

                        Button(action: {
                            mode.wrappedValue.dismiss()
                        }, label: {
                            Text("Edit")
                                .font(.customfont(.regular, fontSize: 16))
                                .foregroundColor(Color.secondaryApp)
                        })
                    }
                        HStack(alignment: .center){
                            OTPTextField(otp: otp, numberOfField: 6)
                        }
                        .padding(.vertical , 10)

                    NavigationLink{
                    }label: {
                        Text("SUBMIT")
                            .font(.customfont(.medium, fontSize: 16))
                            .foregroundColor(Color.primaryText)
                    }
                    .frame(maxWidth: .infinity , minHeight: 40 , alignment: .center)
                    .background(Color.primaryApp)
                    .cornerRadius(25)
                    .padding(.vertical , 10)
                    
                    Button{
                        
                    } label: {
                        Text("Resend Code")
                            .font(.customfont(.bold, fontSize: 18))
                            .foregroundColor(Color.primaryApp)
                    }
                    .frame(maxWidth: .infinity , alignment: .trailing)
                    
                }
                .foregroundColor(Color.primaryText)
                .padding(.horizontal , 20)
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
    }
}

struct OTPView_Previews: PreviewProvider {
//    @State static var txtOTP = ""
    static var previews: some View {
        OTPView()
    }
}
