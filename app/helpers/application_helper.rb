module ApplicationHelper
    def title
    base_title = "Seth's Crypt"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end

  def var_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end


    link_to_function(name, h("add_fields(this, \"#{association}\", \"#{addslashes(fields)}\")"))
  end


  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end


    link_to_function("Gimme more fields darnit!!!", nil, :id =>"MYLINKID")
    javascript_tag "$(document).ready(function() { $('#MYLINKID').click(function(){$.get('link to that fields file', function(data){
                    add_fields(this, 'authors', data);
                },
            'html');
        });
    });
    "
  end

end
