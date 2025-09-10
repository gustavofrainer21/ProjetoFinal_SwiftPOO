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

    
}