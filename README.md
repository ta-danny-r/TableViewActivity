# TableViewActivity

<h2> An overview of how to use Table View , UITableViewDataSource, and UITableViewDelegate </h2>

<h3> UITableViewDataSource </h3>
<p> UITableViewDataSource MUST have these 2 functions  <br/> </p>
<ul>
  <p> This function is used to show how many rows we have in the table view <br/> </p>
  <li> tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int </li>  
  <p> <br/> This function provides a cell for each row <br/>
      This function has to know what content the cell with include. <br/>
      A Content can be like label or image view inside each of our cell. <br/> </p>
  <li> tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell </li>
</ul>

<h3> UITableViewDelegate </h3>
<p> UITableViewDelegate is used to respond to any row events from table view <br/>
    UITableViewDelegate is used to provide headers, footers, or height <br/>
    Examples of functions from table view delegates </br> </p>
<ul>
  <p> When a row is selected from a table view <br/> </p>
  <li> tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) </li>
</ul>

<ul>
  <p> When a row will deselect from a table view <br/> </p>
  <li> tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath? </li>
</ul>

<ul>
  <p> Tells the delegate for the height to use for a row in a specified location. </br> </p>
  <li> tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat </li>
</ul>

<ul>
  <p> Tells the delegate that the specified row was highlighted. <br/> </p>
  <li> tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) </li>
</ul>



