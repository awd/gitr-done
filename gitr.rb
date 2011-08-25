class Gitr
  
  def self.done!(grep_val)
    tags = `git tag | grep #{grep_val}`
    
    tags.split("\n").each do |tag|
      `git tag -d #{tag}`
      `git push origin :refs/tags/#{tag}`
    end
  end
  
end