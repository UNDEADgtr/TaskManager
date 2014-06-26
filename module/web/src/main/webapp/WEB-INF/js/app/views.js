//Views

'use strict';

/*
 |---------------------------------------------------
 |  Add Task
 |---------------------------------------------------
 */

App.Views.AddTask = Backbone.View.extend({
    initialize: function () {
        var that = this;

        this.input = this.$('#new-task-input');
        this.list = $('#task-list');

        App.Tasks.fetch({
            reset: true,
            wait: true,
            success: function () {
                that.addTasks();
            }
        });
    },
    el: '#tasks',
    events: {
        'click #new-task': 'createBtn',
        'keypress #new-task-input': 'createEnter'
    },
    createBtn: function (e) {
        e.preventDefault();
        if (this.input.val().trim()) {
            this.create();
        } else {
            this.input.focus();
        }
    },
    createEnter: function (e) {
        if (e.which === 13 && this.input.val().trim()) {
            this.create();
        }
    },
    create: function () {
        var that = this;

        App.Tasks.create({
                task: this.input.val().trim(),
                status: 'waiting'
            },
            {
                wait: true,
                success: function (model) {
                    that.addTask(model);
                }
            }
        );
        this.input.val('');
        this.input.focus();
    },
    addTask: function (task) {
        var taskView = new App.Views.TaskView({ model: task });
        this.list.append(taskView.render().el);
    },
    addTasks: function () {
        var that = this;
        this.list.html('');
        App.Tasks.each(that.addTask, this);
    }
});

/*
 |---------------------------------------------------
 |  Task View
 |---------------------------------------------------
 */

App.Views.TaskView = Backbone.View.extend({
    initialize: function () {

    },
    tagName: 'li',
    events: {
        'change .select-box': 'changeStatus',
        'click .remove': 'removeTask'
    },
    render: function () {
        var $el = $(this.el);
        var model = this.model;

        $el.addClass('list-group-item');
        $el.append(tpl.getTask(model.toJSON()));

        return this;
    },
    changeStatus: function (e) {
        var $el = $(this.el);
        var status = e.currentTarget.value;

        this.model.save({status: status});

        $el.find('span').attr('class', status);
    },
    removeTask: function () {
        this.model.destroy();
        this.remove();
    }
});