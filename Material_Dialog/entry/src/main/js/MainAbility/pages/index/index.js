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
    }
}
