<!DOCTYPE html>
<html lang="de">
<head>
	<meta charset="utf-8" />
	<title>{{ settings.web_title }}</title>
	<link rel="stylesheet" href="/style.css" />
	{% include 'head.tpl' with context %}
</head>

<body>
	<header>
		{{ settings.web_title }}
	</header>

	<section id="maincontent">
		{% include 'meta_block.tpl' %}

		{% for post in posts %}
		{% include 'post.tpl' with context %}
		{% endfor %}

		{% if next %}
		<div id="prev_episodes">
			<a href="/index.{{ next }}.html">ältere Episoden</a>
		</div>
		{% endif %}
	</section>
</body>

</html>