//
//  RoundedButton.swift
//  SwiftUIComponents
//
//  Created by Jageloo Yadav on 25/01/22.
//

import Foundation
import SwiftUI

public enum ButtonType {
    case primary
    case secondary
}

public struct RoundedButton: UIViewRepresentable {
    public let title: String
    public let buttonStyle: ButtonType
    public var action: (() -> Void)?
    public let button = UIButton()
    
    public init(title: String,
         buttonStyle: ButtonType = .primary,
         action: (() -> Void)?) {
        self.title = title
        self.buttonStyle = buttonStyle
        self.action = action
    }
    
    public func makeUIView(context: Context) -> UIButton {
        button.layer.cornerRadius = 22.0
        button.backgroundColor = .systemPink
        let action = UIAction { _ in
            self.action?()
        }
        button.addAction(action, for: UIControl.Event.touchUpInside)
        button.isUserInteractionEnabled = true
        return button
    }
    
    public func updateUIView(_ uiView: UIButton, context: Context) {
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
