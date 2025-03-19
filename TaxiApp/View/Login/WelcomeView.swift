//
//  WelcomeView.swift
//  TaxiApp
//
//  Created by MacBookPro on 13/03/2025.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
           Image("welcome_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth , height: .screenHeight)
                .overlay{
                    Rectangle()
                        .opacity(0.8)
                }
            
            VStack(alignment: .center , spacing: 15){
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .screenWidth * 0.5 )
                
                 Spacer()
                
                NavigationLink{
                    SignInView()
                } label: {
                    Text("SIGN IN")
                        .font(.customfont(.regular, fontSize: 18))
                        .foregroundColor(Color.white)
                }
                .frame(maxWidth: .infinity , minHeight: 40 , alignment: .center)
                .background(Color.primaryApp)
                .cornerRadius(25)
                
                NavigationLink{
                    SignUpView()
                } label: {
                    Text("SIGN UP")
                        .font(.customfont(.regular, fontSize: 18))
                        .foregroundColor(Color.white)
                }
                .frame(maxWidth: .infinity , minHeight: 40 , alignment: .center)
                .background(Color.secondaryText)
                .cornerRadius(25)
            }
            .foregroundColor(Color.primaryText)
            .padding(.top , .topInsets + 46)
            .padding(.horizontal , 20)
            .padding(.bottom , .bottomInsets + 8)
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            WelcomeView()
        }
    }
}
