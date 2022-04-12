import UIKit

let NUMBER = "0123456789"
let STR = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

// 숫자 + 영어 소대문자
// 중복값 허용
func createRandomPassword(_ length:Int) -> String {
    let num = Int.random(in: 1..<length)
    
    let randomNum = (0 ..< num).map { _ in
        NUMBER.randomElement()!
    }
    let randomStr = (0 ..< (length - num)).map { _ in
        STR.randomElement()!
    }
    
    let result = (randomStr + randomNum).shuffled()
    
    return String(result)
}

createRandomPassword(8)
