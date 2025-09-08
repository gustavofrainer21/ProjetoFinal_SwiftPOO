class PlanoAnual: Plano {
    init(nome: String) {
        super.init(nome: "Plano Anual (Promocional)")
    }

    override func calcularMensalidade() -> Double {
        return ((12.0 * 120.0) * 0.2) / 12.0
    }
}