package shaders;

import flixel.addons.display.FlxRuntimeShader;
import openfl.utils.Assets;

/**
 * Note... not actually gaussian!
 */
class GaussianBlurShader extends FlxRuntimeShader
{
  public var amount:Float;

  public function new(amount:Float = 1.0)
  {
    super(Assets.getText(Paths.getPath('shaders/gaussianBlur.frag', TEXT, null,false)));
    setAmount(amount);
  }

  public function setAmount(value:Float):Void
  {
    this.amount = value;
    this.setFloat("_amount", amount);
  }
}
