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
    end

    private

    def fix_image_paths(document)
      return unless document.content
      
      # Fix markdown image syntax: ![](assets/ → ![](/assets/
      document.content.gsub!(/!\[\]\(assets\//, '![](/assets/')
      
      # Fix HTML img tags: src="assets/ → src="/assets/
      document.content.gsub!(/src="assets\//, 'src="/assets/')
    end
  end
end

Jekyll::Hooks.register :site, :post_read do |site|
  Jekyll::ImagePathFixer.new.transform(site)
end
