

import Vue from 'vue';
import VueToast from 'vue-toast-notification';

import 'vue-toast-notification/dist/theme-sugar.css';

Vue.use(VueToast, {
  // One of the options
  position: 'top-right',
  duration: 4000,
})


class VueToastrWrapper {

  constructor() {
    if (!VueToastrWrapper.instance) {
      VueToastrWrapper.instance = this;
    }
    return VueToastrWrapper.instance;
  }

  success(mensagens) {
    if (Array.isArray(mensagens)) {
      mensagens.forEach(m => {
        Vue.$toast.success(m);
      });
    } else {
      Vue.$toast.success(mensagens);
    }
  }

  info(mensagens) {
    if (Array.isArray(mensagens)) {
      mensagens.forEach(m => {
        Vue.$toast.info(m);
      });
    } else {
      Vue.$toast.info(mensagens);
    }
  }


  alert(mensagens) {
    if (Array.isArray(mensagens)) {
      mensagens.forEach(m => {
        Vue.$toast.warning(m);
      });
    } else {
      Vue.$toast.warning(mensagens);
    }
  }

  error(mensagens) {
    const options = { duration: 0 };
    if (Array.isArray(mensagens)) {
      mensagens.forEach(m => {
        Vue.$toast.error(m, options);
      });
    } else {
      Vue.$toast.error(mensagens, options);
    }
  }
}

export default new VueToastrWrapper();