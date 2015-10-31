class Ability
  include CanCan::Ability

  def initialize(user)
    case user.has_role?
    when :gerente
      can :manager, :all
    end
    when :conta_pagar
      can :manager,[ContasPagar,Cliente]
      can :read,[Fornecedor]
    end
    when :conta_receber
      can :manager,[ContaReceber,Fornecedor]
      can :read,[Cliente]
    end


  end
end
