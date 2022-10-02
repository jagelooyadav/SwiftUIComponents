//
//  ContentView.swift
//  SwiftUIComponents
//
//  Created by Jageloo Yadav on 27/12/21.
//

import SwiftUI
import ReusableComponents

struct ContentView: View {
    @State var title: String?
    @State var contentTitle: String?
    @State var submitButtonTitle: String?
    
    var body: some View {
        let view1 = CustombNavigationView(title: title,
                                          leftBarButtonTitle: "Back",
                                          rightBarButtonTitle: "Cancel") {
            VStack {
                Text(contentTitle ?? "").font(SwiftUI.Font.body)
                RoundedButton(title: "Submit", action: {
                    print("Button clicked")
                }).frame(height: 44.0).padding([Edge.Set.leading, .trailing], 20.0)
                
                CheckBoxView(title: "Checkbox1", isSelected: Binding<Bool>.constant(true))
                Spacer()
                
            }
        }.onAppear {
            updateView()
        }
        return view1
    }
    
    func submit() {
        print("Button clicked")
        var set: Set<String> = []
        var ss: [String] = []
        for element in "ABC" {
            ss.append(String(element))
        }
        if Set(ss).contains("AB") {
            print("AB found")
        }
    }
    
    func updateView() {
        title = "Jageloo Ydav"
        contentTitle = "Something else"
        submitButtonTitle = "Submit"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
