import Foundation

class Academia {
    let nomeAcademia: String
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
        matricularAluno(novoAluno: Aluno)
        return alunoCriado
    }

    
}