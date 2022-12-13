# Métodos e variáveis de Classe#
# Equivalente a Static Methods and variables

# Definindo método de classe (Static Methods)
class Teste
  def self.gerar
    puts 'estou gerando uma nova pessoa'
  end
end

# Definindo variável de classe
class Pessoa
  @@numero_de_pessoas = 0 

  def self.gerar
    @@numero_de_pessoas += 1
    puts 'Vou gerar pessoa'
    Pessoa.new
  end

  def self.numero_de_pessoas
    @@numero_de_pessoas
  end
end

pessoa = Pessoa.gerar
pessoa = Pessoa.gerar
pessoa = Pessoa.gerar

p Pessoa.numero_de_pessoas
