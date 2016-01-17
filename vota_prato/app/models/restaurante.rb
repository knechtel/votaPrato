class Restaurante < ActiveRecord::Base
      has_many :qualificao
      
  
      validates_presence_of :nome, message: "deve ser preenchido"
      validates_presence_of :endereco, message: "deve ser preenchido"
      validates_presence_of :especialidade, message: "deve ser preenchido"
      validates_uniqueness_of :nome, message: "nome já cadastrado"
      validates_uniqueness_of :endereco, message: "endereço já cadastrado"
      validate :primeira_letra_deve_ser_maiuscula
      private
    
      def primeira_letra_deve_ser_maiuscula
        errors.add(:nome,
          "primeira letra deve ser maiúscula") unless nome =~ /[A-Z].*/
      end
end
