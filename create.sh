#!/bin/bash

read -p "Vue.js site name? " site

cp -a ./_additional-resources/. ./$site/

cd ./$site

mkdir public
cd public
cat > index.html <<DELIM
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Vue.js App</title>
	<link rel="stylesheet" href="css/styles.css" type="text/css" />
	<script src="https://unpkg.com/vue/dist/vue.js"></script>
</head>
<body>
	
	<div id="app">
		{{ message }}
	</div>
	
	
	
	<script src="js/script.js"></script>
</body>
</html>
DELIM
mkdir js
cat > js/script.js <<DELIM
/* global Vue */

var app = new Vue({
	el: '#app',
	data: {
		message: 'Hello Vue!'
	}
});
DELIM
mkdir css
cat > css/styles.css <<DELIM
/* Add CSS Styles */
DELIM
mkdir img

npm install --global gulp-cli
npm install