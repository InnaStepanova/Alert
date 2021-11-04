//
//  Model.swift
//  Alert
//
//  Created by Инна Степанова on 01.11.2021.
//

struct UserInfo {
    let userName: String
    let password: String
}

extension UserInfo {
    static func getUser() -> UserInfo {
        return UserInfo(userName: "Inna", password: "Klusha")
    }
}
