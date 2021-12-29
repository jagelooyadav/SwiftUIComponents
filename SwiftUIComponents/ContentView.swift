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
    var body: some View {
        let view1 = CustombNavigationView(title: title,
                                          leftBarButtonTitle: "Back", rightBarButtonTitle: "Cancel") {
            VStack {
                Text(contentTitle ?? "")
            }.background(.red
            )
        }.onAppear {
            updateView()
        }
        return view1
    }
    
    func updateView() {
        title = "Jageloo"
        contentTitle = "Something else"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
