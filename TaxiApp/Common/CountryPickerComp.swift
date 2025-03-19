//
//  CountryPickerComp.swift
//  TaxiApp
//
//  Created by MacBookPro on 13/03/2025.
//

import CountryPickerView
import SwiftUI

struct CountryPickerButton: UIViewControllerRepresentable {
    @Binding var selectedCountryCode: String

    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = UIViewController()
        let countryPickerView = CountryPickerView()
        countryPickerView.delegate = context.coordinator
        countryPickerView.showCountryCodeInView = true
        countryPickerView.showPhoneCodeInView = true
        countryPickerView.setCountryByPhoneCode(selectedCountryCode)
        
        let button = UIButton(type: .system)
        button.setTitle("\(selectedCountryCode)", for: .normal)
        button.addTarget(context.coordinator, action: #selector(Coordinator.showPicker), for: .touchUpInside)
        
        button.frame = CGRect(x: 0, y: 0, width: 50, height: 30)
        viewController.view.addSubview(button)
        
        context.coordinator.button = button
        context.coordinator.pickerView = countryPickerView
        context.coordinator.parent = self
        
        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        context.coordinator.button?.setTitle(selectedCountryCode, for: .normal)
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, CountryPickerViewDelegate {
        var parent: CountryPickerButton
        var pickerView: CountryPickerView?
        weak var button: UIButton?

        init(_ parent: CountryPickerButton) {
            self.parent = parent
        }

        @objc func showPicker() {
            pickerView?.showCountriesList(from: button?.window?.rootViewController ?? UIViewController())
        }

        func countryPickerView(_ countryPickerView: CountryPickerView, didSelectCountry country: Country) {
            parent.selectedCountryCode = country.phoneCode
            button?.setTitle(country.phoneCode, for: .normal)
        }
    }
}
