PostsHelper module
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm' || action_name == 'create' || action_name == 'show'
      confirm_posts_path
    else if action_name == 'edit'
      post_path
    end
  end
end
