package characters.data;

@charList(false)
@gfList(true)
class GfPixel extends CharacterInfoBase
{

    override public function new(){

        super();

        info.name = "gf-pixel";
        info.spritePath = "week6/gfPixel";
        info.frameLoadType = sparrow;
        
        info.iconName = "gf";
        info.antialiasing = false;
        info.focusOffset.set();

		addByIndices('danceLeft', offset(), 'GF IDLE', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, loop(false));
		addByIndices('danceRight', offset(), 'GF IDLE', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, loop(false));

        info.idleSequence = ["danceLeft", "danceRight"];

        addExtraData("scale", PlayState.daPixelZoom);
    }

}