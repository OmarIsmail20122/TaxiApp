//
//  NavigationBack.swift
//  TaxiApp
//
//  Created by MacBookPro on 16/03/2025.
//

import SwiftUI

struct NavigationBack: View {
    @Environment(\.dismiss) private var dismiss // للوصول إلى وظيفة الإغلاق

    var body: some View {
        HStack{
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "chevron.left")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color.black)
                    .frame(width: 20 , height: 20)
            })
            Spacer()
        }
        .padding(.top , .topInsets + 10)
        .padding(.bottom )
    }
}

struct NavigationBack_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBack()
    }
}
