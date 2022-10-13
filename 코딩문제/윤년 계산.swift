import Foundation

func isLeap(year: Int) {
    if year % 4 == 0 && year % 100 != 0 || year % 400 == 0 {
        print("Yes")
    } else {
        print("No")
    }
}

isLeap(year: 2100)
