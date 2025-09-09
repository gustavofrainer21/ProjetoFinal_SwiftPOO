import Foundation

class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String : Aluno]
    var capacidadeMaxima: Int = 25

    func inscrever(aluno : Aluno) -> Bool {
        if (alunosInscritos.count = capacidadeMaxima)

        for i in alunosInscritos.count {
            if (Aluno.getMatricula() == alunosInscritos.keys)
        }

    }

    override func getDescricao() -> String {
        return """
            Aula: \(self.nome) / 
            Instrutor: \(self.instrutor) / 
            Capacidade máxima: \(self.capacidadeMaxima) / 
            Vagas ocupadas: \(self.alunosInscritos)
            """
    }
}