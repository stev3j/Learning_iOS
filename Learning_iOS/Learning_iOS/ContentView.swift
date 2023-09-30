//
//  ContentView.swift
//  Learning_iOS
//
//  Created by 조승완 on 2023/09/30.
//

import SwiftUI

struct ContentView: View {
    @State var id: String = ""
    @State var pwd: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                EditText(value: id, title: "Id", description: "Enter your id", topPadding: 70)
                EditText(value: pwd, title: "Password", description: "Enter your password")
                Spacer()
                BottomButton(name: "로그인")
            }
            .padding(.horizontal, 16)
            .navigationTitle("로그인")
        }
        
    }
}

struct EditText: View {
    @State var value: String
    @State var title: String
    @State var description: String
    @State var topPadding: CGFloat = 16.0
    
    var body: some View {
        Text(title)
            .font(.headline)
            .padding(.top, topPadding)
            .padding(.leading, 10)
        TextField(description, text: $value)
            .padding()
            .background(Color(uiColor: .secondarySystemBackground))
            .cornerRadius(16)
    }
}

struct BottomButton: View {
    @State var name: String = "Button"
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text(name)
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
        })
        .background(Color(uiColor: .black))
        .cornerRadius(16)
    }
}

#Preview {
    ContentView()
}

