//
//  CustombNavigationView.swift
//  SwiftUIComponents
//
//  Created by Jageloo Yadav on 28/12/21.
//

import Foundation
import SwiftUI

public struct CustombNavigationView<Content> : View where Content : View {
    let title: String?
    var leftBarButtonTitle: String? = nil
    var rightBarButtonTitle: String? = nil
    var leftButonAction: (() -> Void)? = nil
    var rightButtonAction: (() -> Void)? = nil
    let content: () -> Content
    
    public var body: some View {
        NavigationView {
            ZStack {
                Color.clear
                    .navigationTitle(title ?? "")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            if let leftBarButtonTitle = leftBarButtonTitle {
                                Button(leftBarButtonTitle) {
                                    leftButonAction?()
                                }
                            }
                        }
                        ToolbarItem(placement: .navigationBarLeading) {
                            if let rightBarButtonTitle = rightBarButtonTitle {
                                Button(rightBarButtonTitle) {
                                    leftButonAction?()
                                }
                            }
                        }
                    }.navigationTitle("SwiftUI")
                    .navigationBarTitleDisplayMode(.inline)
                content()
            }
            
        }.navigationViewStyle(.stack)
    }
}
