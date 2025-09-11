import Foundation

let plano1 = PlanoMensal()
let aluno1 = Aluno(
    matricula: "GJK3041", 
    nome: "Gustavo Braz Frainer", 
    email: "guga.frainer1@gmail.com", 
    plano: plano1)
print()
print("Aluno:", aluno1.getDescricao())

let instrutor1 = Instrutor(
    especialidade: "Treino de Superior",
    nome: "Julio Balestrin",
    email: "julio.balestrin@gmail.com")
print("Instrutor:", instrutor1.getDescricao())

let aulaPersonal1 = AulaPersonal(
    aluno: aluno1,
    nome: "Treino de Musculação",
    instrutor: instrutor1)
print(aulaPersonal1.getDescricao())
print()

//----------------------------------------------------

let plano2 = PlanoAnual()
let aluno2 = Aluno(
    matricula: "KTD3571",
    nome: "Kemuel de Matos",
    email: "kemueldematos@gmail.com",
    plano: plano2)
print("Aluno:", aluno2.getDescricao())

let instrutor2 = Instrutor(
    especialidade: "Artes Marciais",
    nome: "Charles do Bronx",
    email: "charlesdobronx@gmail.com")
print("Instrutor:", instrutor2.getDescricao())
print()

let aulaColetiva1 = AulaColetiva(nome: "Treino de Box", instrutor: instrutor2)
aulaColetiva1.inscrever(aluno: aluno2)
print(aulaColetiva1.getDescricao())
print()

//------------------------------------------------------------------------

aulaColetiva1.inscrever(aluno: aluno2)
print()
aulaColetiva1.inscrever(aluno: aluno1)
print(aulaColetiva1.getDescricao())
print()

//--------------------------------------------------------------

let aparelho1 = Aparelho(nomeItem: "Supino Reto")
aparelho1.realizarManutencao()
print()

//--------------------------------------------------------------------

let academia1 = Academia(nomeAcademia: "Iron Berg")
print(academia1.nomeAcademia)
print()

academia1.adicionarAparelho(aparelho: aparelho1)
print("Aparelhos:", academia1.aparelhos.map {$0.nomeItem})

academia1.adicionarAula(aula: aulaPersonal1)
print("Aula Disponíveis:", academia1.aulasDisponiveis.map {$0.nome})

academia1.contratarInstrutor(instrutor: instrutor1)
academia1.contratarInstrutor(instrutor: instrutor2)
print("Instrutores:")
for (email, instrutor) in academia1.instrutoresContratados {
    print("\(email): \(instrutor.nome)")
}

print()
academia1.matricularAluno(aluno: aluno1)
for (matricula, aluno1) in academia1.alunosMatriculados {
    print("Alunos matriculados: \(matricula): \(aluno1.nome)")
}
print()
academia1.matricularAluno(nome: "Lorenzo Franco", email: "lorenzofranco@gmail.com", matricula: "KRT3874", plano: PlanoMensal())
print("Alunos matriculados: ")
for matricula in academia1.alunosMatriculados.keys {
    print(matricula)
}
print()

if let aluno = academia1.buscarAluno(porMatricula: "GJK3041") {
    print("Aluno procurado: \(aluno.nome) (\(aluno.getMatricula()))")
} else {
    print("Aluno não encontrado")
}
print()

academia1.listarAlunos()
print()

academia1.listarAulas()
print()