# Single-line step scoper
When /^(.*) within ([^:]+)$/ do |step, parent|
  with_scope(parent) { When step }
end

# Multi-line step scoper
When /^(.*) within ([^:]+):$/ do |step, parent, table_or_string|
  with_scope(parent) { When "#{step}:", table_or_string }
end
