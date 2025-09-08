class Aluno: Pessoa {
    var matricula: String
    var nivel: NivelAluno
    private(set) plano: Plano

    init(matricula: String, nome: String, email: String, plano: Plano, nivel: NivelAluno) {
        self.matricula = matricula
        self.plano = plano
        super.init(nome: nome, email: email)
        self.nivel = .iniciante
    }

    override getDescricao() -> String {
        return "\(super.getDescricao()) / Matricula: \(self.matricula) / Plano: \(self.plano)"
    }
}