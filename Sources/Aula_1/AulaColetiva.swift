import Foundation

class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String : Aluno]
    var capacidadeMaxima: Int = 25

    func inscrever(aluno : Aluno) -> Bool {
        if (alunosInscritos.count = capacidadeMaxima) {
            print("Capacidade máxima de alunos atingida.")
            break
        }

        for i in alunosInscritos.count {
            if (Aluno.getMatricula() == alunosInscritos.keys) {
                print("Aluno já registrado na aula.")
                break
            }
        }

        
    }

    override func getDescricao() -> String {
        return "\(super.getDescricao()) / Capacidade máxima: \(self.capacidadeMaxima) / Vagas ocupadas: \(self.alunosInscritos)"
    }
}