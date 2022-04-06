import UIKit
import Darwin

enum MagicPower: Int {
    case fireMagic = 1000
    case windMagic = 500
    case earthMagic = 750
    case iceMagic = 800
    case waterMagic = 600
}

struct TheMagician: Comparable {
    var name: String
    var level: Int
    var magicPower: MagicPower
    
    static func < (lhs: TheMagician, rhs: TheMagician) -> Bool {
        rhs.level < lhs.level
    }
}

var listOfWizards = [
    TheMagician(name: "Aang", level: 85, magicPower: .windMagic),
    TheMagician(name: "SubZero", level: 50, magicPower: .iceMagic),
    TheMagician(name: "Katara", level: 25, magicPower: .waterMagic),
    TheMagician(name: "Haku", level: 45, magicPower: .iceMagic),
    TheMagician(name: "Toph", level: 70, magicPower: .earthMagic),
    TheMagician(name: "Kuzan", level: 85, magicPower: .iceMagic),
    TheMagician(name: "Zuko", level: 40, magicPower: .fireMagic),
    TheMagician(name: "TreyRacer", level: 15, magicPower: .iceMagic)
]

var iceMagesGuild: [TheMagician] = []
var thePowerIceGuild: Int = 0

for iceMage in listOfWizards {
    if iceMage.magicPower == .iceMagic {
        iceMagesGuild.append(iceMage)
    }
}

// Сортируем массив по уровням в порядке убывания
let sortedIceMagesGuild = iceMagesGuild.sorted(by: <)

for power in sortedIceMagesGuild {
    thePowerIceGuild += power.magicPower.rawValue
}

print("Мощь ледяной гильдии равнятся - \(thePowerIceGuild)")


