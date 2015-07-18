class LineFormatter

  def get_line(first_column, columns)
    line = (first_column ? "%3d" % first_column : '   ') + ' |'
    line += columns.collect do |column|
      " %3d" % column
    end.join
  end

  def separator_line(n)
    '----' * n + '-'
  end

end
