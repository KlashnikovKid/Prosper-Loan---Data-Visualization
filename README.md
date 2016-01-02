# Prosper Loan Data Visualization

<h1>Summary</h1>

For my data visualization I chose Prosper's loan data on all the loans that they have issued since 2005. I chose this data set because I was curious about examining the U.S. economy in terms of investments being made, people's financial health, and how well certain occupations are doing as the nature of the economy has changed through out the years. The visualization is divided into two charts, the one at the top summarizes the data by the years and another that pops up when a year is selected that shows how all the money has been loaned for that year by occupation. When a year and/or occupation is selected, windows pop up with more details about that data point.<br /><br />

As you can see from the data, the 2008 financial crisis' impact on income and investments was significant. However, the data also illustrates that economic activity quickly built back up to a peak 2013.

<h1>Design</h1>

When initially exploring this data set I wasn't sure of what relationships to explore. I used R studio to build all kinds of visualizations of the data. However, the most profound one I found was when building a bar chart of the amount of money loaned by year. The total amount of money loaned and average amount of money loaned to a person starkly illustrated the repercussions of the financial crisis of 2008. Using the bar's size as a planar variable to indicate the total amount made the yearly contrast clear. Additionally, I encoded the average amount of money per loan as a retinal variable using color. With these encodings, you can see how in 2007 - 2008, not much money is being loaned and the amount of money for each loan isn't much. 2009 almost has relatively no money loaned, but then the amount and average begin to fiercely grow as the economy bounces back starting in 2010. I found this format of a yearly visualization of totals and averages very useful for displaying other facets of the data as well such as number of investors, annual income, annual loan payments, and so on.<br /><br />

Additionally, I was curious of what type of people were receiving these investments each year so I made an additional visualization that pops up when a year is a selected. The visualization divides up all of the money loaned that year by occupation using planar variables to illustrate the proportion of money loaned. It does this by representing the total amount of money loaned as the entire length of the bar along the y axis, and then divides the bar up by the amount of the occupation received. This starkly illustrates to the reader which occupations may have proportionately been loaned more money.<br /><br />

Last, I appended windows that contain other interesting data about each year or occupation selected for a real granular view of each data point.


<h3>Changes and improvements</h3>

<ul>
	<li>
		Made income data points in chart and detail text to be annual based instead of monthly.<br />
		Made loan payment data points in chart and detail text to be annual based instead of monthly.<br />
		I transformed the monthly based money data points into yearly since people are more familiar of thinking about income in terms of annual salaries.
	</li>
	
	<li>
		Added titles to the windows and graphs to further define them. 
	</li>
	
	<li>
		Made selectors for choosing year and occupation's purpose more clear by writing instruction text near them.
	</li>
	
	<li>
		Made it so the visualization maintained occupation selection when the year selection changes.<br />
		This is so the viewer can watch an occupation's data change through out the years.
	</li>
	
	<li>
		Gridded the detail window rows to help reader find/follow data as it changes. (Todo)
	</li>
	
	<li>
		Made the occupation selectors a bit easier to use by alternative their placement to avoid possible overlapping.
	</li>
</ul>

<h1>Feedback</h1>

<h1>Resources</h1>
