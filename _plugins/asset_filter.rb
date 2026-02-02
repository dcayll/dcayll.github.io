module Jekyll
  class ImagePathFixer
    def initialize(config = {})
      @config = config
    end

    def transform(site)
      # Process all posts
      site.posts.docs.each { |post| fix_image_paths(post) }
      
      # Process all collections
      site.collections.each do |name, collection|
        collection.docs.each { |doc| fix_image_paths(doc) }
      end
      
      # Also process pages
      site.pages.each { |page| fix_image_paths(page) }
    end

    private

    def fix_image_paths(document)
      return unless document.content
      
      # Fix markdown image syntax: ![](assets/ → ![](/assets/
      if document.content.include?('![](assets/')
        document.content.gsub!(/!\[\]\(assets\//, '![](/assets/')
      end
      
      # Fix HTML img tags: src="assets/ → src="/assets/
      if document.content.include?('src="assets/')
        document.content.gsub!(/src="assets\//, 'src="/assets/')
      end
    end
  end
end

Jekyll::Hooks.register :site, :post_read do |site|
  Jekyll::ImagePathFixer.new.transform(site)
end
