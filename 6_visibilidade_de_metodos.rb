# Visibilidade de Métodos
# Tipos de métodos
# 1-Public 
#   Se não especificar será método Público
#   Podem ser acessados por qualquer método em qualquer 
#   objeto

# 2-Private
#   SubClasses podem chamar métodos privados
#   Só podem ser chamados dentro de sua própria instância.
#   não é possível acessar métodos privados de outras instâncias

# 3-Protect
#   Podem ser chamados por qualquer instância
#   se for da mesma Classe/SuperClasse
class MinhaClasse
  def m1
    puts 'Método 1'
    m2
    m3
  end

  private # Abaixo daqui métodos serão privados

  def m2
    puts 'Metodo 2'
  end

  def m3
    puts 'Metodo 3'
  end

  protected # Abaixo daqui métodos serão protegidos

  def m5
    puts 'Método Protect 5'
  end
end

# Doc
class MinhaSubClasse < MinhaClasse
  def m4
    puts 'Método m4 - subclass'
    m3
    outro_obj = MinhaClasse.new
    outro_obj.m5
  end
end

puts ' '
puts 'SubClasse Teste'
minha = MinhaClasse.new
minha.m1

puts ' '
puts 'SubClasse Teste'
minha_sub = MinhaSubClasse.new
minha_sub.m4

puts ' '
puts 'Reflexão'
minha.send(:m3)
