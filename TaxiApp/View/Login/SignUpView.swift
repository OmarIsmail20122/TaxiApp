//
//  SignUpView.swift
//  TaxiApp
//
//  Created by MacBookPro on 16/03/2025.
//

import SwiftUI

struct SignUpView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var selectedCountryCode = "+20" // الكود الافتراضي (مصر)
    @State private var phoneNumber = ""
    @State private var showNextView = false
    @State private var password = ""
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var homeAddr = ""
    var body: some View {
        ZStack{
            ScrollView{
                NavigationBack()
                
                VStack(alignment: .leading, spacing: 0){
                    Text("Create Profile")
                        .font(.customfont(.extraBold, fontSize: 24))
                        .padding(.bottom , 30)
                    FloatingField(title: "FirstName", placeholder: "FirstName", text: $firstName, selectedCountryCode: "" )
                    FloatingField(title: "LastName", placeholder: "LastName", text: $lastName, selectedCountryCode: "" )
                HStack(alignment:.center){
                    FloatingField(title: "Phone Number", placeholder: "Phone Number", text: $phoneNumber,  selectedCountryCode: selectedCountryCode )
                   }
                   .cornerRadius(10)
                    FloatingField(title: "Home Address", placeholder: "Home addr", text: $homeAddr, selectedCountryCode: "" )
                    FloatingField(title: "Password", placeholder: "Password", text: $password, selectedCountryCode: "" )
                    
                    Text("By continuing, I confirm that i have read & agree to the")
                        .font(.customfont(.regular, fontSize: 14))
                        .foregroundColor(Color.secondaryText)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.top  , 10)
                    HStack(spacing: 5){
                       Text("Terms & conditions")
                           .font(.customfont(.regular, fontSize: 13))
                           .foregroundColor(Color.primaryText)
                       
                       Text("and")
                           .font(.customfont(.regular, fontSize: 13))
                           .foregroundColor(Color.secondaryText)
                       
                       Text("Privacy policy")
                           .font(.customfont(.regular, fontSize: 13))
                           .foregroundColor(Color.primaryText)
                   }
                   .frame(maxWidth: .infinity, alignment: .center)
                   .padding(.bottom, 30)
                    
                    NavigationLink{
                        OTPView()
                    }label: {
                        Text("REGISTER")
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

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
