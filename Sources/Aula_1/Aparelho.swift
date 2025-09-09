import Foundation

class Aparelho: Manutencao {
    var nomeItem: String
    var dataUltimaManutencao: String

    init(nomeItem: String) {
        self.nomeItem = nomeItem
    }

    func realizarManutencao() -> Bool {
        print("Realizando manutenção...")
        self.dataUltimaManutencao = "30/08/2025"
        return true
    }
}