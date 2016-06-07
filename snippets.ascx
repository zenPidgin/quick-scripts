<!-- Format Date Snippet -->
<div class="newsItem eventBox">
  <h5><a href="<%# GetDocumentUrl() %>">
      <%# Eval("EventName", true) %></a></h5>
       <p class="date"><%# FormatDateTime(Eval("EventDate"), "MMMM dd, yyyy") %></p>
       <%# Eval("EventSummary") %>
</div>
