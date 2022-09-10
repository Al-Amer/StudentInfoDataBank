<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Information</title>
<link href="css/style.css" rel="stylesheet" > 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
</head>
<body>


<div class='container'>
	<div class="p-2 bg-light border">		
		<!-- Nav -->
		<div class='container'>
			<nav class="navbar navbar-expand-lg bg-light">
		      <div class="container-fluid">
		        <a class="navbar-brand" href="#">Navbar scroll</a>
		        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
		          <span class="navbar-toggler-icon"></span>
		        </button>
		        <div class="collapse navbar-collapse" id="navbarScroll">
		          <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
		            <li class="nav-item">
		              <a class="nav-link active" aria-current="page" href="#">Home</a>
		            </li>
		            <li class="nav-item">
		              <a class="nav-link" href="#">Link</a>
		            </li>
		            <li class="nav-item dropdown">
		              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		                Link
		              </a>
		              <ul class="dropdown-menu">
		                <li><a class="dropdown-item" href="#">Action</a></li>
		                <li><a class="dropdown-item" href="#">Another action</a></li>
		                <li><hr class="dropdown-divider"></li>
		                <li><a class="dropdown-item" href="#">Something else here</a></li>
		              </ul>
		            </li>
		            <li class="nav-item">
		              <a class="nav-link disabled">Link</a>
		            </li>
		          </ul>
		          <form class="d-flex" role="search">
		            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
		            <button class="btn btn-outline-success" type="submit">Search</button>
		          </form>
		        </div>
		      </div>
		    </nav>
		   </div>
		<!-- End of Nav -->
		<div class="p-2 bg-light border">
			<div class='container'>
				<div>
					<span class="badge text-bg-primary">
						<h1>Student<span class="badge bg-secondary">Information</span></h1>
					</span>
					<div>
						<span class="badge text-bg-light">
							<a href='addStudentForm.jsp'>Add Student</a>
						</span>
						<span class="badge text-bg-light">
							<a href='viewStudent.jsp'>View Student</a>
						</span>
					</div>
				</div>
			</div>
		</div>
		<!--  -->

		<div class ='row'>
			<div class='col-xs-6 col-md-4'>
				<div class='container'>	
					<div class="p-2 bg-light border">		
						<div class='panel panel-default'>
							<div class='panel-heading'>
								<div class="p-2 bg-light border">		
								<h3 class='panel-title'>panel Title</h3>
								</div>
							</div>
							<div class="p-2 bg-light border">									
								<div class='panel-body'>
									<a href='addStudentForm.jsp'>
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
  											<path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
									</svg> Add Student</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class='col-xs-6 col-md-4'>
				<div class='container'>	
					<div class="p-2 bg-light border">		
						<div class='panel panel-default'>
							<div class='panel-heading'>
								<div class="p-2 bg-light border">		
								<h3 class='panel-title'>panel Title</h3>
								</div>
							</div>
							<div class="p-2 bg-light border">									
								<div class='panel-body'>
									<a href='viewStudent.jsp'>
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
  											<path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
										</svg> View Student</a>									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>	
			<div class='col-xs-6 col-md-4'>
				<div class='container'>	
					<div class="p-2 bg-light border">		
						<div class='panel panel-default'>
							<div class='panel-heading'>
								<div class="p-2 bg-light border">		
								<h3 class='panel-title'>panel Title</h3>
								</div>
							</div>
							<div class="p-2 bg-light border">									
							<div class='panel-body'>panel content</div>
							</div>
						</div>
					</div>
				</div>
			</div>			
		</div>	
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
		</div>
</div>

</body>
</html>