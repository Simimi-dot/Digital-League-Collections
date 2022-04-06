import UIKit

enum MagicPower: Int {
    case fireMagic = 1000
    case windMagic = 500
    case earthMagic = 750
    case iceMagic = 800
    case waterMagic = 600
}

protocol TheMagician {
    var name: String { get }
    var level: Int { get }
    var magicPower: MagicPower { get }
}

class FireMagic: TheMagician {
    var name: String
    var level: Int
    var magicPower: MagicPower
    
    init(name: String, level: Int, magicPower: MagicPower) {
        self.name = name
        self.level = level
        self.magicPower = magicPower
    }
}

class WindMagic: TheMagician {
    var name: String
    var level: Int
    var magicPower: MagicPower
    
    init(name: String, level: Int, magicPower: MagicPower) {
        self.name = name
        self.level = level
        self.magicPower = magicPower
    }
}

class EarthMagic: TheMagician {
    var name: String
    var level: Int
    var magicPower: MagicPower
    
    init(name: String, level: Int, magicPower: MagicPower) {
        self.name = name
        self.level = level
        self.magicPower = magicPower
    }
}

class IceMagic: TheMagician {
    var name: String
    var level: Int
    var magicPower: MagicPower
    
    init(name: String, level: Int, magicPower: MagicPower) {
        self.name = name
        self.level = level
        self.magicPower = magicPower
    }
}

class WaterMagic: TheMagician {
    var name: String
    var level: Int
    var magicPower: MagicPower
    
    init(name: String, level: Int, magicPower: MagicPower) {
        self.name = name
        self.level = level
        self.magicPower = magicPower
    }
}

let listOfWizard: [TheMagician] = [
    WindMagic(name: "Aang", level: 85, magicPower: .windMagic),
    IceMagic(name: "SubZero", level: 50, magicPower: .iceMagic),
    WaterMagic(name: "Katara", level: 25, magicPower: .waterMagic),
    IceMagic(name: "Haku", level: 46, magicPower: .iceMagic),
    EarthMagic(name: "Toph", level: 70, magicPower: .earthMagic),
    IceMagic(name: "Kuzan", level: 85, magicPower: .iceMagic),
    FireMagic(name: "Zuko", level: 40, magicPower: .fireMagic),
    IceMagic(name: "TreyRacer", level: 15, magicPower: .iceMagic)
]

var iceMageGuild = listOfWizard.filter { magican in
    return magican.magicPower == .iceMagic
}.sorted { (firstMagic, secondMagic) -> Bool in
    return firstMagic.level > secondMagic.level
}.reduce(0) { summOfIcePower, fullIcePower in
    return summOfIcePower + fullIcePower.magicPower.rawValue
}







