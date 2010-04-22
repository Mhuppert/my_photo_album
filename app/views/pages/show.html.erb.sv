
<h1>  <%=h @page.title %> </h1>
<br />

<% for chapter in @page.chapters %>
  
  <% if !chapter.title2.blank? -%>
    <br /> <h2><%=h chapter.title2%></h2> <br />
  <%end -%>
  
  <% if !chapter.description.blank? -%>
    <%=h chapter.description%> <br /><br />
  <%end -%>
  

   <% def picture_url(name)
     result = "/images/castelnaud/" + name
   end -%>
   

      
    <% if !chapter.image_url.blank? -%>  
    <a href="<%=picture_url(chapter.image_url) %>" ><%=image_tag "/images/castelnaud/r_" + chapter.image_url %></a>
  <%end -%>
  
    <h2> <%=h picture_url(chapter.image_url) %> </h2>
<br />
  
<% end %>
  <h2> <%=h picture_url(chapter.image_url) %> </h2>
<br />

<%= link_to 'Edit', edit_page_path(@page) %> |
<%= link_to 'Back', pages_path %>