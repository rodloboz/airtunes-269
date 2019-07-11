import $ from 'jquery';
import 'select2';
import 'select2/dist/css/select2.css';

const initSelect2 = () => {
  $('#artist_tag_tag_id').select2();
};

export { initSelect2 };
