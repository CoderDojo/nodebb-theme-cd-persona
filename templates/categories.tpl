<!-- IMPORT partials/breadcrumbs.tpl -->
<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>
<div class="row">
<<<<<<< HEAD
	<div class="<!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length -->">
=======
	<div class="col-lg-12 col-sm-12" no-widget-class="col-lg-12 col-sm-12" no-widget-target="sidebar">
>>>>>>> Changes to support nodeBB 1.3.0
		<h1 class="categories-title">[[pages:categories]]</h1>
		<ul class="categories" itemscope itemtype="http://www.schema.org/ItemList">
			<!-- BEGIN categories -->
			<!-- IMPORT partials/categories/item.tpl -->
			<!-- END categories -->
		</ul>
	</div>
<<<<<<< HEAD
	<div widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
		<!-- BEGIN widgets.sidebar -->
		{{widgets.sidebar.html}}
		<!-- END widgets.sidebar -->
	</div>
</div>
<div widget-area="footer">
	<!-- BEGIN widgets.footer -->
	{{widgets.footer.html}}
	<!-- END widgets.footer -->
=======
	<div widget-area="sidebar" class="col-lg-3 col-sm-12 hidden"></div>
>>>>>>> Changes to support nodeBB 1.3.0
</div>
