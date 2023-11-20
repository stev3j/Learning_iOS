//
//  LoginResponse.swift
//  Learning_iOS
//
//  Created by 조승완 on 2023/11/19.
//

struct Response<T: Decodable>: Decodable {
    let statusCode: Int
    let message: String
    let data: T
}

struct LoginResponse: Decodable {
    let token, refreshToken: String
}
