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

let aluno3 = Aluno(
    matricula: "POO0553",
    nome: "Nicolas Guilherme",
    email: "nicolasguilherme@gmail.com",
    plano: PlanoMensal())

let aluno4 = Aluno(
    matricula: "JJT2773",
    nome: "Vitor Artese",
    email: "vitorartese@gmail.com",
    plano: PlanoMensal())

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
academia1.adicionarAula(aula: aulaColetiva1)
print("Aula Disponíveis:", academia1.aulasDisponiveis.map {$0.nome})

academia1.contratarInstrutor(instrutor: instrutor1)
academia1.contratarInstrutor(instrutor: instrutor2)
print("Instrutores:")
for (email, instrutor) in academia1.instrutoresContratados {
    print("\(email): \(instrutor.nome)")
}

print()
academia1.matricularAluno(aluno: aluno1)
print("Alunos matriculados:")
for (matricula, aluno1) in academia1.alunosMatriculados {
    print("\(matricula): \(aluno1.nome)")
}
print()
academia1.matricularAluno(aluno: aluno2)
print("Alunos matriculados:")
for (matricula, aluno2) in academia1.alunosMatriculados {
    print("\(matricula): \(aluno2.nome)")
}
print()
academia1.matricularAluno(aluno: aluno3)
print("Alunos matriculados:")
for (matricula, aluno3) in academia1.alunosMatriculados {
    print("\(matricula): \(aluno3.nome)")
}
print()
aulaColetiva1.inscrever(aluno: aluno3)
print()
academia1.matricularAluno(aluno: aluno4)
print("Alunos matriculados:")
for (matricula, aluno4) in academia1.alunosMatriculados {
    print("\(matricula): \(aluno4.nome)")
}
print()
aulaColetiva1.inscrever(aluno: aluno4)
print()
academia1.matricularAluno(nome: "Lorenzo Franco", email: "lorenzofranco@gmail.com", matricula: "KRT3874", plano: PlanoMensal())
academia1.matricularAluno(nome: "Gabriel Souza", email: "gabrielsouza@gmail.com", matricula: "OCG9967", plano: PlanoAnual())
print("Alunos matriculados:")
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