﻿define(function (require, exports, module) {
    //var tlp = '<div id="@id" ng-model="list.@id.dataMod" class="@css" style="@style"><div class="layout"></div></div>';
    var _self = function () { }, _base = require("base"), $ = require('jquery');
    _base.utils.inherits(_self, _base.Control);
    _self.prototype.htmlTlp = "{{list.@id.dataMod.text}}";
    module.exports = function () { return _self; }
});