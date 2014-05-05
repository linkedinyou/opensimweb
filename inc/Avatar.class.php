<?php
if (!defined('OSW_IN_SYSTEM')) {
exit;	
}

class Avatar
{

var $osw;

	function Avatar(&$osw) {
		$this->osw = &$osw;
	}

	function createlook($uuid, $avi) {
		$aviq = $this->osw->SQL->query("SELECT * FROM `{$this->osw->config['robust_db']}`.Avatars WHERE PrincipalID = '$avi'");
		while($avir = $this->osw->SQL->fetch_array($aviq)) {
			$name = $avir['Name'];
			$value = $avir['Value'];
			$this->osw->SQL->query("INSERT INTO `{$this->osw->config['robust_db']}`.Avatars (PrincipalID, Name, Value) VALUES ('$uuid', '$name', '$value'");
		}
		$invfq = $this->osw->SQL->query("SELECT * FROM `{$this->osw->config['robust_db']}`.inventoryfolders WHERE agentID = '$avi' ORDER BY `parentFolderID` ASC");
		while($invfr = $this->osw->SQL->fetch_array($invfq)) {
			$folderName = $invfr['folderName'];
			$type = $invfr['type'];
			$version = $invfr['version'];
			$folderID = $invfr['folderID'];
			$parentFolderID = $invf['parentFolderID'];
			$randomuuid = $this->osw->getNewUUID();
			if ($folderName == "My Inventory") {
				$this->osw->SQL->query("INSERT INTO `{$this->osw->config['robust_db']}`.inventoryfolders (folderName, type, version, folderID, agentID, parentFolderID) VALUES ('$folderName', '$type', '$version', '$randomuuid', '$uuid', '00000000-0000-0000-0000-000000000000')");
			}else{
				$myinvq = $this->osw->SQL->query("SELECT * FROM `{$this->osw->config['robust_db']}`.inventoryfolders WHERE agentID = '$uuid' AND folderName = 'My Inventory'");
				$myinvr = $this->osw->SQL->fetch_array($myinvq);
				$myinvuuid = $myinvr['folderID'];
				$this->osw->SQL->query("INSERT INTO `{$this->osw->config['robust_db']}`.inventoryfolders (folderName, type, version, folderID, agentID, parentFolderID)) VALUES ('$folderName', '$type', '$version', '$randomuuid', '$uuid', '$myinvuuid')");
			}
		}
	}
}
?>