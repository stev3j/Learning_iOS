import SwiftUI

struct ContentView: View {
    
    @State var id: String = ""
    @State var pwd: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                CustomTextField("Id", "Enter your id", text: $id, topPadding: 70)
                CustomTextField("Password", "Enter your password", text: $pwd, type: .secured)
                Spacer()
                BottomButton("로그인") {
                    print("a")
                }
            }
            .padding(.horizontal, 16)
            .navigationTitle("로그인")
        }
    }
}

struct CustomTextField: View {

    let title: String
    let placeholder: String
    @Binding var text: String
    let type: Self.TextFieldType
    let topPadding: CGFloat
    
    init(_ title: String,
         _ placeholder: String,
         text: Binding<String>,
         type: Self.TextFieldType = .default,
         topPadding: CGFloat = 16) {
        self.title = title
        self.placeholder = placeholder
        self._text = text
        self.type = type
        self.topPadding = topPadding
    }
    
    enum TextFieldType {
        case `default`
        case secured
    }
    
    var body: some View {
        Text(title)
            .font(.headline)
            .padding(.top, topPadding)
            .padding(.leading, 10)
        Group {
            switch type {
            case .default:
                TextField(placeholder, text: $text)
            case .secured:
                SecureField(placeholder, text: $text)
            }
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(16)
    }
}

struct BottomButton: View {
    
    let name: String
    let action: () -> Void
    
    init(_ name: String, action: @escaping () -> Void) {
        self.name = name
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            Text(name)
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
        }
        .background(Color(uiColor: .black))
        .cornerRadius(16)
    }
}

#Preview {
    ContentView()
}

