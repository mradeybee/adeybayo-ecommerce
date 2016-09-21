import angular from 'angular';
import { rootComponent } from 'app/root.es6';

const app = angular.module('adebayo-ecommerce', []);

app.controller("ApplicationCtrl", function() {
  console.log("Hello World from controller!")
});

console.log(rootComponent);
app.component('root', rootComponent);


angular.element(document).ready(
  () => angular.bootstrap(document.getElementById('app'), ['adebayo-ecommerce'])
);
