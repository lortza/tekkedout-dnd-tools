module SpellsHelper
  def spells_page_title(params)
    return "#{params[:klass]} Spells" if params[:klass].present?
    "All Spells"
  end
end
