//
//  ContentView.swift
//  SwiftUIComponents
//
//  Created by Jageloo Yadav on 27/12/21.
//

import SwiftUI

struct ContentView: View {
    @State var title: String?
    @State var contentTitle: String?
    @State var submitButtonTitle: String?
    
    var body: some View {
        let view1 = CustombNavigationView(title: title,
                                          leftBarButtonTitle: "Back", rightBarButtonTitle: "Cancel") {
            VStack {
                Text(contentTitle ?? "")
                RoundedButton.init(title: "Submit", buttonStyle: .secondary).frame(height: 44.0, alignment: .center).padding([Edge.Set.leading, .trailing], 10.0)
                Spacer()
                
            }
        }.onAppear {
            updateView()
        }
        return view1
    }
    
    func updateView() {
        title = "Jageloo"
        contentTitle = "Something else"
        submitButtonTitle = "Submit"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
