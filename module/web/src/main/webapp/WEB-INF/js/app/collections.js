//Collection

App.Collections.Tasks = Backbone.Collection.extend({
    initialize: function (models, options) {
        if (options.url) {
            this.url = options.url;
        }
    },
    model: App.Models.Task,
    url: '/rest/tasks'
});
