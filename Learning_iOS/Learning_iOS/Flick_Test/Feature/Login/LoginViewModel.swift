//
//  LoginViewModel.swift
//  Learning_iOS
//
//  Created by 조승완 on 2023/11/19.
//

import SwiftUI
import Alamofire

class LoginViewModel: ObservableObject {
    
    @Published var id: String = ""
    @Published var password: String = ""
    
    func login() async {
        let response = await AF.request("\(Constants.ENDPOINT)/v1/api/auth/login",
                                        method: .post,
                                        parameters: ["userId": id, "password": password],
                                        encoding: JSONEncoding.default,
                                        headers: ["Content-Type": "application/json"]
        ) { $0.timeoutInterval = 5 }
            .validate()
            .serializingDecodable(Response<LoginResponse>.self)
            .response
        switch response.result {
        case .success(let data):
            print("성공")
        case .failure(let error):
            print(error.localizedDescription)
            print("실패")
        }
    }
}
