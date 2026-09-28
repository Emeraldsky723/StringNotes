//
//  ContentView.swift
//  StringNotes
//
//  Created by SCOTT LOZOYA on 9/17/26.
//

import SwiftUI

struct ContentView: View {
    @State var name = "nilly"
    @State var ee = true
    @State var age = ""
    @State var ages: [Int] = []
    var body: some View {
        VStack {
            Button(name){
                if ee{
                    name = name.uppercased()
                    ee.toggle()
                }
                else{
                    name = name.lowercased()
                    ee.toggle()
                }
            }
            Button(name + "2"){
                name = name.replacingOccurrences(of: "l", with: "SurajIsCool")
            }
            TextField("age?", text: $age)
            Button("Submit"){
               age = age.trimmingCharacters(in: .whitespacesAndNewlines)
                if let a = Int(age){
                    ages.append(a)
                    print(ages)
                    age = ""
                }
            }
            Text(age)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
