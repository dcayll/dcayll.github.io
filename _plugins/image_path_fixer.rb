module Jekyll
  class FixAssetPaths
    def self.process(site)
      site.posts.docs.each { |doc| fix_paths(doc) }
      site.collections.each do |_name, collection|
        collection.docs.each { |doc| fix_paths(doc) }
      end
      site.pages.each { |page| fix_paths(page) }
    end

    def self.fix_paths(document)
      return unless document.respond_to?(:content) && document.content
      
      # Replace (assets/ with (/assets/
      document.content.gsub!(/\(assets\//, '(/assets/')
      # Replace src="assets/ with src="/assets/
      document.content.gsub!(/src="assets\//, 'src="/assets/')
    end
  end
end

Jekyll::Hooks.register :site, :post_read do |site|
  Jekyll::FixAssetPaths.process(site)
end
