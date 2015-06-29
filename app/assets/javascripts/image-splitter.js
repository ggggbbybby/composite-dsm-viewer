$(window).load(function() {

  var ImageMaskSlider =  function(element) {
    this.element = element;
    this.base = element.find('img.base');
    this.mask = element.find('img.mask');
    this.dimensions = {
      width: this.base.width(),
      height: this.base.height()
    };

    // Position slider in center of image + set initial mask
    // slider is 32px wide, so any ±16 is for centering purposes

    this.slider = element.find('.slider');
    this.slider.css({
      top: this.dimensions.height / 2,
      left: (this.dimensions.width / 2) - 16
    });

    this.updateMask = function() {
      this.mask.css(
        'clip',
        'rect(auto, '+ (this.slider.position().left + 16) + 'px, auto, 0px)'
      );
    };


    this.slider.draggable({
      axis: 'x',
      containment: 'parent',
      create: this.updateMask.bind(this),
      drag: this.updateMask.bind(this)
    });
  };
  new ImageMaskSlider($('#demoMaskSlider'));
});