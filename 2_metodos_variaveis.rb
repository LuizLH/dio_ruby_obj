#Métodos e Variáveis#

class NomeDaClasse
    def imprimir_ola(nome)
        puts "Olá #{nome}"
    end
end

objeto = NomeDaClasse.new
objeto.imprimir_ola("Zé")

puts " "
puts "*** NomeDaClasse2 ***"

class NomeDaClasse2
    def imprimir_ola(nome)
        @nome = nome
        puts "Olá #{@nome}"
    end

    def nome
        @nome
    end
end

luiz = NomeDaClasse2.new
luiz.imprimir_ola("Luiz")
p luiz.nome

puts " "
puts "*** NomeDaClasse3 Testando Constructor ***"
#Método constructor de uma Classe
#initialize

class NomeDaClasse3
    attr_writer   :nome      # setter
    attr_accessor :sobre_nome # getter e setter
    
    def initialize(nome)
        @nome = nome #variável de instância
    end

    def imprimir_ola()
        puts "Olá #{@nome}"
    end
=begin Comentário em mais de uma linha
    #método Get
    def nome
        @nome
    end

    #método Set
    def nome=(novo_nome)
        @nome = novo_nome
    end
=end
end

pessoa = NomeDaClasse3.new("Luiz")
#p pessoa.nome

pessoa.nome = "Zé"
p pessoa

p pessoa.sobre_nome
pessoa.sobre_nome = "Lenhardt"
p pessoa.sobre_nome

p pessoa.instance_variable_get(:@nome)