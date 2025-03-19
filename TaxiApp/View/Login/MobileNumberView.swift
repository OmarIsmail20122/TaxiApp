//
//  MobileNumberView.swift
//  TaxiApp
//
//  Created by MacBookPro on 13/03/2025.
//

import SwiftUI

struct MobileNumberView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var selectedCountryCode = "+20" // الكود الافتراضي (مصر)
    @State private var phoneNumber = ""
    @State private var showNextView = false
    var body: some View {
        ZStack{
            ScrollView{
                NavigationBack()
                
                VStack(alignment: .leading, spacing: 0){
                    Text("Enter mobile number")
                        .font(.customfont(.extraBold, fontSize: 24))
                        .padding(.bottom , 30)
                    
                    HStack(alignment:.center){
                   CountryPickerButton(selectedCountryCode: $selectedCountryCode)
                            .frame(maxWidth: 50 , maxHeight: 30,alignment: .centerLastTextBaseline)
                    
                    TextField("Phone Number", text: $phoneNumber)
                       .keyboardType(.numberPad)
                       .padding()
                       .background(Color.gray.opacity(0.1))
                       .cornerRadius(8)
                       .frame(maxWidth: .infinity)
                   }
                   .cornerRadius(10)
                   .padding(.bottom , 30)
                    
                    Text("By continuing, I confirm that i have read & agree to the")
                        .font(.customfont(.regular, fontSize: 14))
                        .foregroundColor(Color.secondaryText)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
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
                   .padding(.bottom, 40)
                    
                    NavigationLink{
                        OTPView()
                    }label: {
                        Text("CONTINUE")
                            .font(.customfont(.medium, fontSize: 16))
                            .foregroundColor(Color.primaryText)
                    }
                    .frame(maxWidth: .infinity , minHeight: 40 , alignment: .center)
                    .background(Color.primaryApp)
                    .cornerRadius(25)
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

struct MobileNumberView_Previews: PreviewProvider {
    static var previews: some View {
        MobileNumberView()
    }
}
