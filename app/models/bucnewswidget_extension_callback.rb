class BucnewswidgetExtensionCallback < ExtensionCallback

  def activate
  end

  def deactivate
    site_ext = SiteExtension.find(:first, :conditions => "site_id = #{site.id} AND extension_id = #{extension.id}")
    ContainedWidget.destroy_all(:site_extension_id => site_ext.id) unless site_ext.nil?
  end

  def update
  end

end
