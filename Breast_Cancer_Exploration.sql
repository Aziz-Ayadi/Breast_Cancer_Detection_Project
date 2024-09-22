/*Calculate the number of samples according to the diagnosis category*/
Select distinct(["diagnosis"]), count(*) as Number_of_samples
From data
Group By ["diagnosis"];

/*Calculate the average of radius_mean according to the diagnosis category*/
Select distinct(["diagnosis"]), Avg(Convert(float, ["radius_mean"])) as mean_r
From data
Group By ["diagnosis"];

/*Calculate the average of texture_mean according to the diagnosis category*/
Select distinct(["diagnosis"]), Avg(Convert(float, ["texture_mean"])) as mean_t
From data
Group By ["diagnosis"];

/*Calculate the average of perimeter_mean according to the diagnosis category*/
Select distinct(["diagnosis"]), Avg(Convert(float, ["perimeter_mean"])) as mean_p
From data
Group By ["diagnosis"];

/*Calculate the average of area_mean according to the diagnosis category*/
Select distinct(["diagnosis"]), Avg(Convert(float, ["area_mean"])) as mean_a
From data
Group By ["diagnosis"];

/*Calculate the average of smoothness_mean according to the diagnosis category*/
Select distinct(["diagnosis"]), Avg(Convert(float, ["smoothness_mean"])) as mean_s
From data
Group By ["diagnosis"];

/*Calculate the average of compactness_mean according to the diagnosis category*/
Select distinct(["diagnosis"]), Avg(Convert(float, ["compactness_mean"])) as mean_c
From data
Group By ["diagnosis"];

/*Calculate the average of concave points_mean according to the diagnosis category*/
Select distinct(["diagnosis"]), Avg(Convert(float, ["concave points_mean"])) as mean_co
From data
Group By ["diagnosis"];

/*Calculate the average of symmetry_mean according to the diagnosis category*/
Select distinct(["diagnosis"]), Avg(Convert(float, ["symmetry_mean"])) as mean_sy
From data
Group By ["diagnosis"];

/*Calculate the average of fractal_dimension_mean according to the diagnosis category*/
Select distinct(["diagnosis"]), Avg(Convert(float, ["fractal_dimension_mean"])) as mean_fd
From data
Group By ["diagnosis"];

/*Calculate the number of samples that have their radius_mean above or equal to the average groupped by diagnosis*/
Select distinct(["diagnosis"]), count(*) as Number_of_samples
From data
Where ["radius_mean"] >= (
      Select Avg(Convert(float, ["radius_mean"]))
	  From data
)
Group By ["diagnosis"];

/*Make a case statement to transform each category without an abbreviation*/
Select ["diagnosis"],
Case
	When ["diagnosis"] = 'M' Then 'Malignant'
	Else 'Benign'
End as diagnosis_without_abrv
From data;