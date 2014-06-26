window.App = {
    Models: {},
    Collections: {},
    Views: {},
    Tasks: {}
};

tpl = {
    templatesPattern: {
        'task': '<span class="{{status}}">{{task}}</span>' +
            '<button type="button" class="btn btn-danger btn-xs pull-right remove">x</button>' +
            '<select class="select-box pull-right">' +
            '<option value="waiting" {{#ifeq status "waiting"}}selected{{/ifeq}}>Ожидание</option>' +
            '<option value="during" {{#ifeq status "during"}}selected{{/ifeq}}>В процессе</option>' +
            '<option value="completed" {{#ifeq status "completed"}}selected{{/ifeq}}>Завершен</option>' +
            '</select>'
    },
    get: function (name) {
        return this.templates[name];
    },
    getTask: function (model) {
        return Handlebars.compile(this.templatesPattern.task)(model);
    }
};

Handlebars.registerHelper('ifeq', function (a, b, options) {
    if (a == b) {
        return options.fn(this);
    }
});