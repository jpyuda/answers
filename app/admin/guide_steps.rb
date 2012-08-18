ActiveAdmin.register GuideStep do
	controller.authorize_resource  

	# View 
  index do
    column :id
    column "Title", :title do |guide_step|
      link_to guide_step.title, [:admin, guide_step]
    end
    column :content
    column :step
    column "Updated", :updated_at
    default_actions # Add show, edit, delete column
  end

	show do |step|
      attributes_table do
        row :title
        row :content
        row :preview
        row :guide
        row :step
        row :updated_at
        row :created_at
      end
      active_admin_comments
    end
end
