class App
  # Accepts the directory where the pages are, run_script produces the output per table
  #
  # options:
  #   save_to: nil -- if the path is given, the output must be written to a file provided. If not, the output is printed on console
  #
  def initialize(path_to_pages, options = {})
    @options = {
      }.merge!(options)
    @path_to_pages = path_to_pages
  end

  def run_script
    raise "Unimplemented"
  end
end
