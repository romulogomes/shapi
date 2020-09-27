class ApplicationController < ActionController::API

  def parametros
    result = params.to_unsafe_h
    result.delete("controller")
    result.delete("action")
    result.delete("format")
    result.delete("action_path")
    result
  end

end
