module Bucnewswidget
  class Engine < ::Rails::Engine
    NAME = 'bucnewswidget'
    include NA::EngineConfig
    config.to_prepare do
      IMPORT_EXPORT_EXTENSIONS << 'bucnewswidget'
    end
  end
end
