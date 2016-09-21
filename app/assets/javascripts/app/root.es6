const rootComponent = {
  template: '<h1>Hello {{$ctrl.something}}! {{$ctrl.someOtherValue}}</h1>',
  controller: function() {
    this.someOtherValue = "other value";
  },
  bindings: {
    something: '='
  }
};

module.exports = { rootComponent };
