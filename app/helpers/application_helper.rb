module ApplicationHelper

  def smart_link_to desc, path
    klass = if path.match(params[:action])
      'active'
    end

    content_tag(:li, class: klass) { link_to desc, public_send(path) }
  end

end
