/**
 * Created by GSAR on 6/30/14.
 */
package starling.extensions {


import de.polygonal.ds.HashMap;

import plexonic.gpu.GPURepository;

import starling.textures.Texture;

public class PSTemplate {

    private static const TEMPLATE_MAP:HashMap = new HashMap();

    public static function addTemplate(name:String, configXML:XML, textureName:String):void {
        TEMPLATE_MAP.set(name, new PSTemplate(configXML, textureName));
    }

    public static function getTemplate(name:String):PSTemplate {
        return TEMPLATE_MAP.get(name) as PSTemplate;
    }

    private var _textureName:String;
    private var _configXML:XML;

    public function PSTemplate(configXML:XML, textureName:String) {
        _textureName = textureName;
        _configXML = configXML;
    }

    public function get textureName():String {
        return _textureName;
    }

    public function get texture():Texture {
        return GPURepository.getTexture(_textureName);
    }

    public function get configXML():XML {
        return _configXML;
    }

}
}
