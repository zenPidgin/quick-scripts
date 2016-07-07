

<!-- Kentico: Format Date Snippet for Transformations as of K9 -->
<div class="newsItem eventBox">
  <h5><a href="<%# GetDocumentUrl() %>">
      <%# Eval("EventName", true) %></a></h5>
       <p class="date"><%# FormatDateTime(Eval("EventDate"), "MMMM dd, yyyy") %></p>
       <%# Eval("EventSummary") %>
</div>

<!-- Macro Version -->
<p class="date">
  {% FormatDateTime(EventDate, "MMMM dd, yyyy") %}
</p>



