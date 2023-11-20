//
//  LoginView.swift
//  Learning_iOS
//
//  Created by 조승완 on 2023/11/19.
//

import Alamofire
import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        Button("Dauth로 로그인") {
            Task {
                await viewModel.login()
            }
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    LoginView()
}
