//
//  CheckBoxView.swift
//  MultipleSelectionDemo
//
//  Created by Diamonds on 08/07/1944 Saka.
//

import Foundation
import SwiftUI

public struct CheckBoxView: View {

    private var title: String
    private  var isSelected: Binding<Bool>
    private var didChange: ((Bool) -> Void)?
    
    public init(title: String, isSelected: Binding<Bool>, didChange: ( (Bool) -> Void)? = nil) {
        self.title = title
        self.isSelected = isSelected
        self.didChange = didChange
    }

    public var body: some View {
        ZStack {
            HStack {
                Image(systemName: (isSelected.wrappedValue) ? "checkmark.square.fill" : "square")
                    .foregroundColor(Color.blue)
                Text("User \(title)")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Spacer()
            }.onTapGesture {
                isSelected.wrappedValue.toggle()
                didChange?(isSelected.wrappedValue)
            }
            .padding(.leading, 16.0)
        }
    }
}
