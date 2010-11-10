# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jpmobile}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yoji Shidara", "Shin-ichiro OGAWA"]
  s.date = %q{2010-09-16}
  s.description = %q{A Rails plugin for Japanese mobile-phones}
  s.email = %q{dara@shidara.net}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     ".rspec",
     "CHANGELOG",
     "Gemfile",
     "MIT-LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION.yml",
     "init.rb",
     "install.rb",
     "jpmobile.gemspec",
     "lib/jpmobile.rb",
     "lib/jpmobile/datum_conv.rb",
     "lib/jpmobile/docomo_guid.rb",
     "lib/jpmobile/email.rb",
     "lib/jpmobile/emoticon.rb",
     "lib/jpmobile/emoticon/au.rb",
     "lib/jpmobile/emoticon/conversion_table.rb",
     "lib/jpmobile/emoticon/docomo.rb",
     "lib/jpmobile/emoticon/softbank.rb",
     "lib/jpmobile/emoticon/z_combine.rb",
     "lib/jpmobile/encoding.rb",
     "lib/jpmobile/filter.rb",
     "lib/jpmobile/helpers.rb",
     "lib/jpmobile/hook_action_controller.rb",
     "lib/jpmobile/hook_action_view.rb",
     "lib/jpmobile/mobile/abstract_mobile.rb",
     "lib/jpmobile/mobile/android.rb",
     "lib/jpmobile/mobile/au.rb",
     "lib/jpmobile/mobile/ddipocket.rb",
     "lib/jpmobile/mobile/docomo.rb",
     "lib/jpmobile/mobile/emobile.rb",
     "lib/jpmobile/mobile/iphone.rb",
     "lib/jpmobile/mobile/smart_phone.rb",
     "lib/jpmobile/mobile/softbank.rb",
     "lib/jpmobile/mobile/vodafone.rb",
     "lib/jpmobile/mobile/willcom.rb",
     "lib/jpmobile/mobile/windows_phone.rb",
     "lib/jpmobile/position.rb",
     "lib/jpmobile/rack.rb",
     "lib/jpmobile/rack/filter.rb",
     "lib/jpmobile/rack/mobile_carrier.rb",
     "lib/jpmobile/rack/params_filter.rb",
     "lib/jpmobile/rails.rb",
     "lib/jpmobile/request_with_mobile.rb",
     "lib/jpmobile/trans_sid.rb",
     "lib/jpmobile/util.rb",
     "lib/tasks/jpmobile_tasks.rake",
     "spec/rack/jpmobile/android_spec.rb",
     "spec/rack/jpmobile/au_spec.rb",
     "spec/rack/jpmobile/docomo_spec.rb",
     "spec/rack/jpmobile/emoticon_spec.rb",
     "spec/rack/jpmobile/filter_spec.rb",
     "spec/rack/jpmobile/iphone_spec.rb",
     "spec/rack/jpmobile/mobile_by_ua_spec.rb",
     "spec/rack/jpmobile/params_filter_spec.rb",
     "spec/rack/jpmobile/softbank_spec.rb",
     "spec/rack/jpmobile/willcom_spec.rb",
     "spec/rack/jpmobile/windows_phone.rb",
     "spec/rack_helper.rb",
     "spec/spec_helper.rb",
     "spec/unit/detect_by_email_spec.rb",
     "spec/unit/is_carrier_spec.rb",
     "spec/unit/spec_helper.rb",
     "spec/unit/util_spec.rb",
     "spec/unit/valid_ip_spec.rb",
     "test/legacy/emoticon_test.rb",
     "test/legacy/helper.rb",
     "test/rails/.gitignore",
     "test/rails/overrides/.rspec",
     "test/rails/overrides/Gemfile",
     "test/rails/overrides/app/controllers/application_controller.rb",
     "test/rails/overrides/app/controllers/docomo_guid_always_controller.rb",
     "test/rails/overrides/app/controllers/docomo_guid_base_controller.rb",
     "test/rails/overrides/app/controllers/docomo_guid_docomo_controller.rb",
     "test/rails/overrides/app/controllers/filter_controller.rb",
     "test/rails/overrides/app/controllers/filter_controller_base.rb",
     "test/rails/overrides/app/controllers/hankaku_filter_controller.rb",
     "test/rails/overrides/app/controllers/links_controller.rb",
     "test/rails/overrides/app/controllers/mobile_spec_controller.rb",
     "test/rails/overrides/app/controllers/template_path_controller.rb",
     "test/rails/overrides/app/controllers/trans_sid_always_and_session_off_controller.rb",
     "test/rails/overrides/app/controllers/trans_sid_always_controller.rb",
     "test/rails/overrides/app/controllers/trans_sid_base_controller.rb",
     "test/rails/overrides/app/controllers/trans_sid_mobile_controller.rb",
     "test/rails/overrides/app/controllers/trans_sid_none_controller.rb",
     "test/rails/overrides/app/models/user.rb",
     "test/rails/overrides/app/views/filter/index.html.erb",
     "test/rails/overrides/app/views/hankaku_filter/index.html.erb",
     "test/rails/overrides/app/views/links/au_gps.html.erb",
     "test/rails/overrides/app/views/links/au_location.html.erb",
     "test/rails/overrides/app/views/links/docomo_foma_gps.html.erb",
     "test/rails/overrides/app/views/links/docomo_openiarea.html.erb",
     "test/rails/overrides/app/views/links/docomo_utn.html.erb",
     "test/rails/overrides/app/views/links/link.html.erb",
     "test/rails/overrides/app/views/links/show_all.html.erb",
     "test/rails/overrides/app/views/links/softbank_location.html.erb",
     "test/rails/overrides/app/views/links/willcom_location.html.erb",
     "test/rails/overrides/app/views/template_path/_partial.html.erb",
     "test/rails/overrides/app/views/template_path/_partial_mobile.html.erb",
     "test/rails/overrides/app/views/template_path/_partial_mobile_docomo.html.erb",
     "test/rails/overrides/app/views/template_path/_partial_smart_phone.html.erb",
     "test/rails/overrides/app/views/template_path/_partial_smart_phone_iphone.html.erb",
     "test/rails/overrides/app/views/template_path/index.html.erb",
     "test/rails/overrides/app/views/template_path/index_mobile.html.erb",
     "test/rails/overrides/app/views/template_path/index_mobile_docomo.html.erb",
     "test/rails/overrides/app/views/template_path/index_smart_phone.html.erb",
     "test/rails/overrides/app/views/template_path/index_smart_phone_iphone.html.erb",
     "test/rails/overrides/app/views/template_path/partial.html.erb",
     "test/rails/overrides/app/views/template_path/show_mobile.html.erb",
     "test/rails/overrides/app/views/template_path/show_mobile_docomo.html.erb",
     "test/rails/overrides/autotest/discover.rb",
     "test/rails/overrides/config/initializers/jpmobile_generator.rb",
     "test/rails/overrides/config/routes.rb",
     "test/rails/overrides/db/migrate/001_add_sessions_table.rb",
     "test/rails/overrides/db/migrate/20100824062306_create_users.rb",
     "test/rails/overrides/spec/helpers/helpers_spec.rb",
     "test/rails/overrides/spec/rcov.opts",
     "test/rails/overrides/spec/requests/docomo_guid_spec.rb",
     "test/rails/overrides/spec/requests/docomo_spec.rb",
     "test/rails/overrides/spec/requests/emobile_spec.rb",
     "test/rails/overrides/spec/requests/filter_spec.rb",
     "test/rails/overrides/spec/requests/helpers_spec.rb",
     "test/rails/overrides/spec/requests/pc_spec.rb",
     "test/rails/overrides/spec/requests/softbank_emulator_spec.rb",
     "test/rails/overrides/spec/requests/template_path_spec.rb",
     "test/rails/overrides/spec/requests/trans_sid_spec.rb",
     "test/rails/overrides/spec/spec_helper.rb",
     "test/sinatra/guestbook.rb",
     "test/sinatra/test/filter_test.rb",
     "tools/emoji/genregexp.rb",
     "tools/generate_au_emoticon_table.rb",
     "tools/generate_docomo_emoticon_table.rb",
     "tools/generate_emoticon_conversion_table.rb",
     "tools/generate_softbank_emoticon_table.rb",
     "tools/list_gps_unsupported_au.rb"
  ]
  s.homepage = %q{http://github.com/jpmobile/jpmobile}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A Rails plugin for Japanese mobile-phones}
  s.test_files = [
    "spec/rack/jpmobile/emoticon_spec.rb",
     "spec/rack/jpmobile/au_spec.rb",
     "spec/rack/jpmobile/willcom_spec.rb",
     "spec/rack/jpmobile/params_filter_spec.rb",
     "spec/rack/jpmobile/docomo_spec.rb",
     "spec/rack/jpmobile/filter_spec.rb",
     "spec/rack/jpmobile/windows_phone.rb",
     "spec/rack/jpmobile/mobile_by_ua_spec.rb",
     "spec/rack/jpmobile/iphone_spec.rb",
     "spec/rack/jpmobile/softbank_spec.rb",
     "spec/rack/jpmobile/android_spec.rb",
     "spec/unit/detect_by_email_spec.rb",
     "spec/unit/spec_helper.rb",
     "spec/unit/valid_ip_spec.rb",
     "spec/unit/util_spec.rb",
     "spec/unit/is_carrier_spec.rb",
     "spec/spec_helper.rb",
     "spec/rack_helper.rb",
     "test/legacy/emoticon_test.rb",
     "test/legacy/helper.rb",
     "test/sinatra/guestbook.rb",
     "test/sinatra/test/filter_test.rb",
     "test/rails/overrides/spec/helpers/helpers_spec.rb",
     "test/rails/overrides/spec/requests/softbank_emulator_spec.rb",
     "test/rails/overrides/spec/requests/docomo_spec.rb",
     "test/rails/overrides/spec/requests/helpers_spec.rb",
     "test/rails/overrides/spec/requests/docomo_guid_spec.rb",
     "test/rails/overrides/spec/requests/trans_sid_spec.rb",
     "test/rails/overrides/spec/requests/template_path_spec.rb",
     "test/rails/overrides/spec/requests/filter_spec.rb",
     "test/rails/overrides/spec/requests/pc_spec.rb",
     "test/rails/overrides/spec/requests/emobile_spec.rb",
     "test/rails/overrides/spec/spec_helper.rb",
     "test/rails/overrides/autotest/discover.rb",
     "test/rails/overrides/app/models/user.rb",
     "test/rails/overrides/app/controllers/trans_sid_always_controller.rb",
     "test/rails/overrides/app/controllers/hankaku_filter_controller.rb",
     "test/rails/overrides/app/controllers/filter_controller_base.rb",
     "test/rails/overrides/app/controllers/links_controller.rb",
     "test/rails/overrides/app/controllers/trans_sid_base_controller.rb",
     "test/rails/overrides/app/controllers/trans_sid_none_controller.rb",
     "test/rails/overrides/app/controllers/trans_sid_always_and_session_off_controller.rb",
     "test/rails/overrides/app/controllers/template_path_controller.rb",
     "test/rails/overrides/app/controllers/docomo_guid_docomo_controller.rb",
     "test/rails/overrides/app/controllers/filter_controller.rb",
     "test/rails/overrides/app/controllers/mobile_spec_controller.rb",
     "test/rails/overrides/app/controllers/trans_sid_mobile_controller.rb",
     "test/rails/overrides/app/controllers/application_controller.rb",
     "test/rails/overrides/app/controllers/docomo_guid_always_controller.rb",
     "test/rails/overrides/app/controllers/docomo_guid_base_controller.rb",
     "test/rails/overrides/db/migrate/20100824062306_create_users.rb",
     "test/rails/overrides/db/migrate/001_add_sessions_table.rb",
     "test/rails/overrides/config/routes.rb",
     "test/rails/overrides/config/initializers/jpmobile_generator.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["= 2.0.0.beta.17"])
      s.add_development_dependency(%q<rspec-rails>, ["= 2.0.0.beta.17"])
      s.add_development_dependency(%q<jeweler>, [">= 1.4.0"])
    else
      s.add_dependency(%q<rspec>, ["= 2.0.0.beta.17"])
      s.add_dependency(%q<rspec-rails>, ["= 2.0.0.beta.17"])
      s.add_dependency(%q<jeweler>, [">= 1.4.0"])
    end
  else
    s.add_dependency(%q<rspec>, ["= 2.0.0.beta.17"])
    s.add_dependency(%q<rspec-rails>, ["= 2.0.0.beta.17"])
    s.add_dependency(%q<jeweler>, [">= 1.4.0"])
  end
end

