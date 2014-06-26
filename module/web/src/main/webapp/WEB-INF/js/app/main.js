// Main

'use strict';

App.Tasks = new App.Collections.Tasks([], {url: '/rest/tasks'});

new App.Views.AddTask();


