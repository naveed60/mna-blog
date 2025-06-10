# mna-blog
Blog application in rails 7.1.1
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
The tech space can be daunting to get into. Not only is it a fast-moving world, but newcomers also have trouble understanding technical specifications across a range of products. Tech blogs aim to help with this. They post breaking news, product reviews, how-tos, and more, all while appealing to newbies and enthusiasts alike. 

TechCrunch is a leading blog in this space. It is known for its in-depth coverage on emerging startups and major tech company announcements.

The blog has become a go-to resource for tech lovers and professionals. Their commitment to posting the latest developments as they happen and covering a wide range of interests plays a major role in their popularity today.
* ...


NoMethodError in LsdDecisions#decisionsummary

Showing /home/naveed60/workspace/lsd-new/app/views/lsd_decisions/decisionsummary.html.erb where line #774 raised:

undefined method `[]' for nil

Extracted source (around line #775):

773
774
775
776
777
778
              

<%# Pre-compute the top-three alternative IDs %>
<% max_id    = @min_to_max&.last&.[](0) %>
<% second_id = @min_to_max&.size.to_i >= 2 ? @min_to_max[-2][0] : nil %>
<% third_id  = @min_to_max&.size.to_i >= 3 ? @min_to_max[-3][0] : nil %>

<% @factors.each_with_index do |factor, idx| %>
  <tr>
    <td align="center" bgcolor="#FFFFFF"><%= idx + 1 %></td>
    <td bgcolor="#FFFFFF"><%= factor.df_name %></td>

    <% [max_id, second_id, third_id].compact.each do |alt_id| %>
      <% score     = @factorsSort.fetch("#{alt_id}_#{factor.id}", 0) %>
      <% bar_width = ((score * @max_bar_size) / 75).round %>
      <td align="left" width="100" bgcolor="#FFFFFF">
        <%= image_tag "Line_table.jpg", width: "#{bar_width}%", height: 15 %>
      </td>
      <td align="center" bgcolor="#FFFFFF"><%= score %></td>
    <% end %>
  </tr>
<% end %>	



           max_id    = @min_to_max.last[0] 
           second_id = @min_to_max[-2][0] 
           third_id  = @min_to_max.size >= 3 ? @min_to_max[-3][0] : nil 
 @output_buffer.safe_append='
'.freeze;           @factors.each_with_index do |factor, idx| 



<%# Pre-compute the top-three alternative IDs %>
          <% max_id    = @min_to_max.last[0] %>
          <% second_id = @min_to_max[-2][0] %>
          <% third_id  = @min_to_max.size >= 3 ? @min_to_max[-3][0] : nil %>

          <% @factors.each_with_index do |factor, idx| %>
            <tr>
              <td align="center" bgcolor="#FFFFFF"><%= idx + 1 %></td>
              <td bgcolor="#FFFFFF"><%= factor.df_name %></td>

              <% [max_id, second_id, third_id].compact.each do |alt_id| %>
                <% score     = @factorsSort.fetch("#{alt_id}_#{factor.id}", 0) %>
                <% bar_width = ((score * @max_bar_size) / 75).round %>
                <td align="left" width="100" bgcolor="#FFFFFF">
                  <%= image_tag "Line_table.jpg", width: "#{bar_width}%", height: 15 %>
                </td>
                <td align="center" bgcolor="#FFFFFF"><%= score %></td>
              <% end %>
            </tr>
          <% end %>
