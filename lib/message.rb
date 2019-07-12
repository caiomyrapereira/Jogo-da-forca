
class Message 
   
   def initialize( tentativa  , acerto )
    @acerto = acerto;
    @move_x =  " " * 32;
    mostrar_acerto()
   end

   def resultado(tentativa ,palavrar , acerto)
      @acerto = acerto;
      mostrar_acerto()
      if tentativa == 6 
         puts "#{ @move_x } Perdeu o jogo!"
      elsif palavrar == acerto
         puts "#{ @move_x } Venceu o jogo!" 
      end      
   end
   
   def mostrar_acerto 
      puts
      puts "#{ @move_x }  #{@acerto.split("").join(" ")}"
      puts
   end

   def repetida(letra)
      mostrar_acerto()
   	puts "#{ @move_x } '#{ letra }' essa letra ja foram repetida,"
      puts "#{ @move_x } tente outro."  
   end

   def error
      mostrar_acerto()
      puts "#{ @move_x } não foram digita 1 letra!";
   end

end