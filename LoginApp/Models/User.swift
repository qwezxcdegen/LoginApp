//
//  User.swift
//  LoginApp
//
//  Created by Степан Фоминцев on 04.04.2023.
//

import UIKit

struct User {
    let username: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            username: "Alexey",
            password: "12345",
            person: Person(
                image: "",
                name: "Stepan",
                surname: "Fomintsev",
                age: 20,
                status: "Student",
                brief: "Like to follow crypto",
                description: "\"Some info about me\""
            )
        )
    }
}

struct Person {
    let image: String?
    let name: String
    let surname: String
    let age: Int
    let status: String
    let brief: String
    let description: String
    
    func getPhoto() -> UIImage? {
        guard let image, image != "" else {
            return UIImage(systemName: "person")
        }
        return UIImage(named: image)
    }
}
