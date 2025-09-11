import Foundation

class Academia {
    var nomeAcademia: String
    private var alunosMatriculados: [String : Aluno] = [:]
    private var instrutoresContratados: [String : Instrutor] = [:]
    private var aparelhos: [Aparelho] = []
    private var aulasDisponiveis: [Aula] = []

    init(nomeAcademia: String) {
        self.nomeAcademia = nomeAcademia
    }

    func adicionarAparelho(aparelho: Aparelho) {
        aparelhos.append(aparelho)
    }

    func adicionarAula(aula: Aula) {
        aulasDisponiveis.append(aula)
    }

    func contratarInstrutor(instrutor: Instrutor) {
        instrutoresContratados[instrutor.email] = instrutor
    }

    func matricularAluno(aluno: Aluno) {
        for matricula in alunosMatriculados.keys {
            if (aluno.getMatricula() == matricula) {
                print("Erro: Aluno com matricula \(matricula) já existe.")
            } else {
                alunosMatriculados[aluno.getMatricula()] = aluno
                print("Aluno matriculado na academia com sucesso!")
            }
        }
    }

    func matricularAluno(nome: String, email: String, matricula: String, plano: Plano) -> Aluno {
        let alunoCriado = Aluno(matricula: "ABC0001", 
                                nome: "André Souza", 
                                email: "andresouza@gmail.com", 
                                plano: PlanoAnual())
        matricularAluno(aluno: Aluno)
        return alunoCriado
    }

    func buscarAluno(porMatricula matricula: String) -> Aluno? {
        for (mat, aluno) in alunosMatriculados {
            if (mat == matricula) {
                return aluno
            } else {
                return nil
            }
        }
    }

    func listarAlunos() {
        print("===Lista de Alunos Matriculados===")
        if (alunosMatriculados.isEmpty) {
            print("Nenhum aluno matriculado")
        } else {
            let alunosOrdenados = alunosMatriculados.sorted{$0.key < $1.key}
            for (matricula, aluno) in alunosOrdenados {
                print(aluno.getDescricao())
            }
        }    
    }

    func listarAulas() {
        print("===Lista de Aulas===")
        for aula in aulasDisponiveis {
            print(aula.getDescricao())
        }
    }
}