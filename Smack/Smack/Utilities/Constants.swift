//
//  Constants.swift
//  Smack
//
//  Created by Mike on 1/18/18.
//  Copyright © 2018 jprsoftware. All rights reserved.
//

import Foundation
typealias CompletionHandeler = (_ Success: Bool) -> ()

// URL Constants
let BASE_URL = "https://smackchatmkp.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"

let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unWindToChannel"

//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "useremail"

//Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
