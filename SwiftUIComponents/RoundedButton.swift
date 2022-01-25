//
//  RoundedButton.swift
//  SwiftUIComponents
//
//  Created by Jageloo Yadav on 25/01/22.
//

import Foundation
import SwiftUI
enum ButtonType {
    
    case primary
    case secondary
}

struct RoundedButton: UIViewRepresentable {
    let title: String
    let buttonStyle: ButtonType
    init(title: String, buttonStyle: ButtonType = .primary) {
        self.title = title
        self.buttonStyle = buttonStyle
    }
    
    func makeUIView(context: Context) -> UIButton {
        let button = UIButton()
        button.layer.cornerRadius = 22.0
        button.backgroundColor = .systemPink
        return button
    }
    
    func updateUIView(_ uiView: UIButton, context: Context) {
        uiView.setTitle(title, for: .normal)
        switch buttonStyle {
            case .primary:
                uiView.backgroundColor = .systemPink
                uiView.layer.borderColor = UIColor.clear.cgColor
                uiView.layer.borderWidth = 0.0
                uiView.setTitleColor(.white, for: .normal)
                break
            case .secondary:
                uiView.backgroundColor = .white
                uiView.layer.borderColor = UIColor.systemPink.cgColor
                uiView.layer.borderWidth = 1.0
                uiView.setTitleColor(.systemPink, for: .normal)
        }
    }
}
