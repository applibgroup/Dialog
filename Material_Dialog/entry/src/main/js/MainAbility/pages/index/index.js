export default {
    data: {
        title: 'World'
    },
    alert: function(){
        this.$element('main_alert').show();
    },
    simple: function(){
        this.$element('main_simple').show();
    },
    Confirmation: function(){
        this.$element('main_Confirmation').show();
    },
    Full_screen:function(){
        this.$element('main_Full-screen').show();
    },
    cancel:function(){
        this.$element('main_alert').close();
        this.$element('main_Confirmation').close();
        this.$element('main_Full-screen').close();
    },
    save:function(){
        this.$element('save').show();
        this.$element('main_Full-screen').close();
    }
}
