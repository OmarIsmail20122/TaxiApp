//
//  ChangeLangView.swift
//  TaxiApp
//
//  Created by MacBookPro on 13/03/2025.
//

import SwiftUI

struct ChangeLangView: View {
    @State var listArr = ["Arabic", "English", "Hindi", "German"]
    @State var selectIndex = 2
    @State private var showWelcomeView = false

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 25) {
                Text("Change Language")
                    .font(.customfont(.extraBold, fontSize: 25))

                ForEach(0..<listArr.count, id: \.self) { index in
                    Button(action: {
                        selectIndex = index
                    }) {
                        HStack {
                            Text(listArr[index])
                                .font(.customfont(.regular, fontSize: 18))
                                .foregroundColor(selectIndex == index ? Color.primaryApp : Color.primaryText)
                            Spacer()
                            if selectIndex == index {
                                Image("check_tick")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25, height: 25)
                            }
                        }
                    }
                }

                Spacer()

                Button(action: {
                    showWelcomeView = true
                }) {
                    Text("Continue")
                        .font(.customfont(.bold, fontSize: 18))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.primaryApp)
                        .cornerRadius(10)
                }
                .padding(.bottom, .bottomInsets + 20)
            }
            .padding(.top, .topInsets + 46)
            .padding(.horizontal, 20)
            .foregroundColor(Color.primaryText)
            .navigationDestination(isPresented: $showWelcomeView) {
                WelcomeView()
            }
            .navigationTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden()
            .ignoresSafeArea()
        }
    }
}

struct ChangeLangView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeLangView()
    }
}
