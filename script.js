// script.js
document.addEventListener("DOMContentLoaded", () => {
    const projetos = [
        { nome: "Seguidor Solar", descricao: "Sistema de rastreamento solar com motores de passo e ESP32." },
        { nome: "Compilador ANTLR", descricao: "Implementação de um compilador com gramática personalizada." },
        { nome: "Web Back-end com Firebase", descricao: "Sistema de autenticação e banco de dados para aplicações web." },
        { nome: "Microprocessadores", descricao: "Desenvolvimento de sistemas embarcados utilizando ARM e PIC." },
        { nome: "Inteligência Artificial", descricao: "Implementação de modelos de Machine Learning para reconhecimento de padrões." },
        { nome: "Redes de Computadores", descricao: "Projeto de simulação de redes com protocolos TCP/IP." },
        { nome: "Sistemas Embarcados", descricao: "Desenvolvimento de um controlador para sensores IoT." }
    ];
    
    const listaProjetos = document.getElementById("lista-projetos");
    
    if (!listaProjetos) {
        console.error("Elemento #lista-projetos não encontrado!");
        return;
    }
    
    projetos.forEach(projeto => {
        const item = document.createElement("div");
        item.classList.add("projeto");
        item.innerHTML = `<h3>${projeto.nome}</h3><p>${projeto.descricao}</p>`;
        listaProjetos.appendChild(item);
    });
});
