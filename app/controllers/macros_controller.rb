class MacrosController < ApplicationController
  def display_form
    render({ :template => "macro_templates/new_form" })
  end

  def do_magic
    @the_description = params.fetch("description_param")
    @the_image = params.fetch("image_param")

    @the_image_converted = DataURI.convert(@the_image)

    render({ :template => "macro_templates/results" })
  end
end
