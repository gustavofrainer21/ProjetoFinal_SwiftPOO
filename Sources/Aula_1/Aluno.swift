import Foundation

class Aluno: Pessoa {
    var matricula: String
    var nivel: NivelAluno
    private(set) var plano: Plano

    init(matricula: String, nome: String, email: String, plano: Plano, nivel: NivelAluno) {
        self.matricula = matricula
        self.plano = plano
        super.init(nome: nome, email: email)
        self.nivel = .iniciante
    }

    override func getDescricao() -> String {
        return "\(super.getDescricao()) / Matricula: \(self.matricula) / Plano: \(self.plano)"
    }
}

enum NivelAluno {
    case iniciante
    case intermediario
    case avancado
}