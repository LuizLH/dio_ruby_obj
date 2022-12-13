# Classes e Objetos

# Convenção do Ruby

# Nome de métodos e variáveis
# letras minusculas separadas com underline
# Exemplo: meu_nome
# Nome de classes
# padrão CamelCase

# Cada Classe é definida em um arquivo

class NomeDaClasse
end

# Criar um objeto

obj = NomeDaClasse.new # rubocop:disable Lint/UselessAssignment

meu_nome = 'Luiz'
p meu_nome.object_id

outro_nome = 'Mara'
p outro_nome.object_id

outro_nome = meu_nome
p outro_nome.object_id
