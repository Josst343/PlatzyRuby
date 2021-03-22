class Blurb
    attr_accessor :contenido, :tiempo, :animo
  
    def initialize(animo, contenido="")
      @tiempo    = Time.now
      @contenido = contenido[0..39]
      @animo    = animo
    end
  
    def smiley_para_animo
      if    @animo == :triste
        return ":-("
      elsif @animo == :alegre
        return ":-)"
      # Añade otros animos aqui
      elsif @animo== :molesto
        return ">:V"
      end
      # Animo por defecto
      ":-|"
    end
  end
  
  class Blurbalizer
    def initialize(titulo)
      @titulo  = titulo
      @blurbs = []
    end
  
    def crear_un_blurb(animo, contenido)
      @blurbs << Blurb.new(animo, contenido)
    end
  
    def mostrar_cronologia
      puts "Blurbalizer: #{@titulo} tiene #{@blurbs.count} Blurbs"
  
      @blurbs.sort_by { |t|
        t.tiempo
      }.reverse.each { |t|
        puts "#{t.contenido.ljust(40)} emoji #{t.smiley_para_animo} #{t.tiempo} "
      }
    end
  end
  
  mi_app.crear_un_blurb :molesto, "Hola Ruby :3 "
  
  
  mi_app.mostrar_cronologia