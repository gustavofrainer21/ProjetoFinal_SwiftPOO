import Foundation

class AulaPersonal: Aula {
    var aluno: Aluno

    init(aluno: Aluno, nome: String, instrutor: Instrutor) {
        self.aluno = Aluno
        super.init(nome: nome, instrutor: instrutor)
    }

    override func getDescricao() -> String {
        return "Aluno: \(self.aluno) / Aula: \(self.nome) / Instrutor: \(self.instrutor)"
    }
}