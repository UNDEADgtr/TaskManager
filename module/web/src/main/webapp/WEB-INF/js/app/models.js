//Model

App.Models.Task = Backbone.Model.extend({
    defaults: {
        task: '',
        status: 'waiting'
    }
});