<!--
- Copy of a Kentico Repeater Transition for a Newsletter
- All of the Headings were being forced into a serif font, so I used <p> tags
- Contains complete urls and in-line CSS because of limitations to Outlook
- Clarification: The important part of this code are the if statements. 
-->


<% if (DataItemIndex == 0){ %> 
<br />
<img src="http://mbakerintl.com/mbakerintl/media/images/02_newsletterSpotlight_2.jpg" alt="Spotlight Header"/>
<div class="row press-list firstItem" style="width:705px;">
  <br />
      <p style="font-family:Calibri,sans-serif;padding: 22px 0 10px;font-size:1.25em;font-weight:bold;text-transform:uppercase;">
        <a href="<%# GetDocumentUrl() %>" style="color:#002366;"><%# Eval("Title")%></a>
      </p><br />
      <p style="font-family:Calibri,sans-serif;">
        <%# LimitLength( Eval("Introduction"), 150 , "...", true) %>
      </p><br />
      <p style="font-family:Calibri,sans-serif;color: #7A8BAF;">
        <em><%# GetDateTime("ReleaseDate", "MMMM d, yyyy") %></em>
      </p><br />
        
  <a href="
      <%# IfEmpty(Eval("SourceURL"), "http://mbakerintl.com/"+GetDocumentUrl(), Eval("SourceURL")) %>" target='_blank'>
        <img src="http://mbakerintl.com/mbakerintl/media/images/04_newsLetter-learn-more2.png" style="width:150px;" />
  </a>
   
</div>
<br />
<img src="http://mbakerintl.com/mbakerintl/media/images/03_newsletterMissed_2.jpg" alt="You may have missed... header" />
<% } %>
<% if (DataItemIndex >= 1 && !IsLast()){ %>
<div class="row press-list" style="border-bottom: 1px solid #aaa;">
      <br /><p style="font-family:Calibri,sans-serif;padding: 22px 0 10px;font-size:1.25em;font-weight:bold;text-transform:uppercase;">
        <a href="<%# GetDocumentUrl() %>" style="color:#002366;"><%# Eval("Title")%></a>
      </p><br />
      <p style="font-family:Calibri,sans-serif;width:705px;">
        <%# LimitLength( Eval("Introduction"), 150 , "...", true) %>
      </p><br />
      <p style="font-family:Calibri,sans-serif;color: #7A8BAF;width:705px;">
        <em><%# GetDateTime("ReleaseDate", "MMMM d, yyyy") %></em>
      </p>
      <br />
      <a href="
      <%# IfEmpty(Eval("SourceURL"), "http://mbakerintl.com/"+GetDocumentUrl(), Eval("SourceURL")) %>" target='_blank'>
        <img src="http://mbakerintl.com/mbakerintl/media/images/04_newsLetter-learn-more2.png" style="width:150px;"/>
      </a>
     <br />

<br />
</div>

<% } %>
<% if (DataItemIndex >= 1 && IsLast()){ %>
<div class="row press-list" style="width:705px;">
      <br /><p style="font-family:Calibri,sans-serif;padding: 22px 0 10px;font-size:1.25em;font-weight:bold;text-transform:uppercase;">
        <a href="<%# GetDocumentUrl() %>" style="color:#002366;"><%# Eval("Title")%></a>
      </p><br />
      <p style="font-family:Calibri,sans-serif;width:705px;">
        <%# LimitLength( Eval("Introduction"), 150 , "...", true) %>
      </p><br />
      <p style="font-family:Calibri,sans-serif;color: #7A8BAF;width:705px;">
        <em><%# GetDateTime("ReleaseDate", "MMMM d, yyyy") %></em>
      </p>
      <br />
      <a href="
      <%# IfEmpty(Eval("SourceURL"), "http://mbakerintl.com/"+GetDocumentUrl(), Eval("SourceURL")) %>" target='_blank'>
        <img src="http://mbakerintl.com/mbakerintl/media/images/04_newsLetter-learn-more2.png" style="width:150px;"/>
      </a>
     <br /><br /><br />
</div>
<% } %>
