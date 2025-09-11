import Foundation

let aluno1 = Aluno(
    matricula: "GJK3041", 
    nome: "Gustavo Braz Frainer", 
    email: "guga.frainer1@gmail.com", 
    plano: PlanoMensal())
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

let aluno2 = Aluno(
    matricula: "KTD3571",
    nome: "Kemuel de Matos",
    email: "kemueldematos@gmail.com",
    plano: PlanoAnual())
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
academia1.adicionarAparelho(aparelho: aparelho1)
print(academia1.aparelhos.map {$0.nomeItem})
academia1.adicionarAula(aula: aulaPersonal1)
print(academia1.aulasDisponiveis.map {$0.nome})
academia1.contratarInstrutor(instrutor: instrutor1)
print(academia1.instrutoresContratados)
academia1.matricularAluno(aluno: aluno1)
print(academia1.alunosMatriculados)
academia1.matricularAluno(nome: "Lorenzo Franco", email: "lorenzofranco@gmail.com", matricula: "KRT3874", plano: PlanoMensal())
print(academia1.alunosMatriculados)