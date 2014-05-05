<?php
if (!defined('OSW_IN_SYSTEM')) {
exit;	
}

class lsl {

	var $osw;

	function lsl(&$osw) {
		$this->osw = &$osw;
	}

	function syntaxhighlighting($str) {
		// LSL Functions

		foreach ($array as $lsl => $colour){
        $str = str_replace($lsl, $colour, $str);
    	}
	}
}
?>