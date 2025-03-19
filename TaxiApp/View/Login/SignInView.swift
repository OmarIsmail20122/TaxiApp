//
//  SignInView.swift
//  TaxiApp
//
//  Created by MacBookPro on 16/03/2025.
//

import SwiftUI

struct SignInView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var selectedCountryCode = "+20" // الكود الافتراضي (مصر)
    @State private var phoneNumber = ""
    @State private var showNextView = false
    @State private var password = ""
    var body: some View {
        ZStack{
            ScrollView{
                NavigationBack()
                
                VStack(alignment: .leading, spacing: 0){
                    Text("Sign In")
                        .font(.customfont(.extraBold, fontSize: 24))
                        .padding(.bottom , 30)
                    
                HStack(alignment:.center){
                  
                    
                    FloatingField(title: "Phone Number", placeholder: "Phone Number", text: $phoneNumber,  selectedCountryCode: selectedCountryCode )
                   }
                   .cornerRadius(10)
                    
                    FloatingField(title: "Password", placeholder: "Password", text: $password, selectedCountryCode: "" )

                    NavigationLink{
                        OTPView()
                    }label: {
                        Text("LOGIN")
                            .font(.customfont(.medium, fontSize: 16))
                            .foregroundColor(Color.primaryText)
                    }
                    .frame(maxWidth: .infinity , minHeight: 40 , alignment: .center)
                    .background(Color.primaryApp)
                    .cornerRadius(25)
                    .padding(.top , 15)
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

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
