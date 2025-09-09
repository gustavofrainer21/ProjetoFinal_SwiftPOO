import Foundation

class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String : Aluno]
    var capacidadeMaxima: Int = 25

    func inscrever(aluno : Aluno) -> Bool {
        if (alunosInscritos.count = capacidadeMaxima) {
            print("Erro: Capacidade máxima de alunos atingida.")
            return false
        }

        for i in alunosInscritos.count {
            if (Aluno.getMatricula() == alunosInscritos.keys) {
                print("Erro: Aluno já registrado na aula.")
                return false
            }
        }

        alunosInscritos[aluno.getMatricula()] = aluno
        print("Sucesso! Aluno adicionado")
        return true
    }

    override func getDescricao() -> String {
        return "\(super.getDescricao()) / Capacidade máxima: \(self.capacidadeMaxima) / Vagas ocupadas: \(self.alunosInscritos)"
    }
}