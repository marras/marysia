module ApplicationHelper

  def smart_link_to desc, path
    klass = if path.match(params[:action])
      'active'
    end

    content_tag(:li, class: klass) { link_to desc, public_send(path) }
  end

  def smart_left_link
    destination = case params[:action]
                  when 'start'
                    jajecznica_path
                  when 'co'
                    root_path
                  when 'gdzie'
                    co_path
                  when 'goscie'
                    gdzie_path
                  when 'jajecznica'
                    goscie_path
                  end

    link_to destination do
      content_tag :i, '', class: 'icon-chevron-left'
    end
  end

  def smart_right_link
    destination = case params[:action]
                  when 'goscie'
                    jajecznica_path
                  when 'jajecznica'
                    root_path
                  when 'start'
                    co_path
                  when 'co'
                    gdzie_path
                  when 'gdzie'
                    goscie_path
                  end

    link_to destination do
      content_tag :i, '', class: 'icon-chevron-right'
    end
  end
end
