class Aula {
    var nome: String
    var instrutor: Instrutor

    init(nome: String, instrutor: Instrutor) {
        self.nome = nome
        self.instrutor = Instrutor
    }

    func getDescricao() -> String {
        return "Aula: \(self.nome) / Instrutor: \(self.instrutor)"
    }
}