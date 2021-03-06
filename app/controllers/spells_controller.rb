class SpellsController < ApplicationController
  active_tab "spells"

  def index
    @spells = Spell.all_for_display(params[:klass], params[:name]).order(:name)
  end
end
