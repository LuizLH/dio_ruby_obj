# Exercício Conta bancária
class ContaBancaria
  attr_accessor :nome_titular, :agencia, :conta_corrente

  def initialize(nome_titular, agencia, conta_corrente, saldo)
    self.nome_titular = nome_titular
    self.agencia = agencia
    self.conta_corrente = conta_corrente
    @saldo = saldo
  end

  def transferir_para(conta_destino, valor)
    if @saldo >= valor
      conta_destino.creditar(valor)
      debitar(valor)
    else
      raise 'Saldo Insuficiente'
    end
  end

  def imprimir_saldo
    puts "Conta titular #{nome_titular}, saldo #{@saldo}"
  end

  protected

  def creditar(valor)
    @saldo += valor
  end

  def debitar(valor)
    @saldo -= valor
  end

end

# doc ContaBancariaComTaxa
class ContaBancariaComTaxa < ContaBancaria
  TAXA = 25

  def transferir_para(conta_destino, valor)
    super
    debitar(TAXA)
  end
end

conta_origem = ContaBancariaComTaxa.new('Luiz Lenhardt', '101', '00057080', 1000)
puts conta_origem.nome_titular
puts conta_origem.agencia
puts conta_origem.conta_corrente
puts conta_origem.imprimir_saldo

puts ' '
conta_destino = ContaBancaria.new('Mara Delmondes', '102', '00057000', 1250)
puts conta_destino.nome_titular
puts conta_destino.agencia
puts conta_destino.conta_corrente
puts conta_destino.imprimir_saldo
puts ' '
puts 'Transferência'
begin
  conta_origem.transferirPara(conta_destino, 250)
rescue StandardError => e
  p "Não foi possível transferir: #{e.message}"
end
puts ' '
puts conta_origem.imprimir_saldo
puts conta_destino.imprimir_saldo
