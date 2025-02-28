module SharedContexts
  module Site
    extend ::RSpec::SharedContext

    let(:config) do
      Jekyll.configuration(
        YAML.safe_load(
          File.read(File.expand_path('../../../jekyll.yml', __dir__)),
          aliases: true
        ).merge(
          source: File.expand_path('../../fixtures/app', __dir__),
          destination: File.expand_path('../../fixtures/dist', __dir__),
          quiet: true,
          git_branch: 'main'
        )
      )
    end

    let(:site) do
      site = Jekyll::Site.new(config)
      site.read

      Jekyll::SiteProductData.new.generate(site)

      site
    end

    def render_page(page:)
      layouts = {
        'extension' => Jekyll::Layout.new(site, '_layouts', 'extension.html'),
        'plugins/show' => Jekyll::Layout.new(site, '_layouts', 'plugins/show.html'),
        'plugins/configuration' => Jekyll::Layout.new(site, '_layouts', 'plugins/configuration.html'),
        'plugins/configuration_examples' => Jekyll::Layout.new(site, '_layouts', 'plugins/configuration_examples.html'),
        'default' => Jekyll::Layout.new(site, '_layouts', 'default.html'),
      }
      site.layouts = layouts

      page.render(layouts, site.site_payload)
    end

    def find_page_by_url(url)
      site.instance_variable_get(:@pages).detect { |p| p.url == url }
    end

    def generate_site!
      Jekyll::GeneratorSingleSource::Generator.new.generate(site)
      PluginSingleSource::Generator.new.generate(site)
      Jekyll::Versions.new.generate(site)
      LatestVersion::Generator.new.generate(site)
      OasDefinitionPages::Generator.new.generate(site)
    end

    def markdown_content(file_path)
      Utils::FrontmatterParser.new(File.read(file_path)).content
    end
  end
end
