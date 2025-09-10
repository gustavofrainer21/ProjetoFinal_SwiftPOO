import Foundation

class Academia {
    var nomeAcademia: String
    private var alunosMatriculados: [String : Aluno] = [:]
    private var instrutoresContratados: [String : Instrutor] = [:]
    private var aparelhos [Aparelho] = []
    private var aulasDisponiveis [Aula] = []

    init(nomeAcademia: String) {
        self.nomeAcademia = nomeAcademia
    }

    func adicionarAparelho(_ aparelho: Aparelho) {
        aparelhos.append(aparelho)
    }

    func adicionarAula(_ aula: Aula) {
        aulasDisponiveis.append(aula)
    }

    func contratarInstrutor(_ instrutor: Instrutor) {
        instrutoresContratados[instrutor.email] = instrutor
    }

    func matricularAluno(_ aluno: Aluno) {
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
        matricularAluno(novoAluno)
        return alunoCriado
    }

    func buscarAluno(porMatricula matricula: String) -> Aluno? {
        for matricula in alunosMatriculados.keys {
            if (aluno.getMatricula() == matricula) {
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
            let alunosA = alunosMatriculados.items()
            let alunosOrdenados = sorted(alunosA, key: {$0.key})
            for alunos in alunosOrdenados.count {
                print(alunosOrdenados[alunos].getDescricao())
            }
        }    
    }

    func listarAulas() {
        print("===Lista de Aulas===")
        for aula in aulasDisponiveis.count {
            print(aulasDisponiveis[aula].getDescricao())
        }
    }
}