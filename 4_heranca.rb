# Herança
class Sensor
  def instalar
    puts 'Estou instalando o sensor'
  end

  def iniciar
    puts 'Estou inicializando o sensor'
  end

  def coletar_metricas
    # sensor normal
    puts 'estou coletando métricas'
    puts 'estou analizando métricas'
  end
end

# Doc
class SensorTemperatura < Sensor
  def coletar_metricas
    # inicializar_componente_temperatura
    super
    puts 'Estou coletando métricas de temperatura'
  end
end

sensor = SensorTemperatura.new
sensor.instalar
sensor.iniciar
sensor.coletar_metricas
