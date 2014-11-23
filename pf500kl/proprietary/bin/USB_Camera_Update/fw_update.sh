#!/system/bin/sh

Update_Success=1
Default_Value=0
No_Video_Node=-4
Not_Recognize_Hardware=-6


echo "$Default_Value" > /data/pfs_camera_isp_fw_update_result
echo "20" > /data/pfs_camera_isp_update_progress
chmod 666 /data/pfs_camera_isp_fw_update_result
chmod 666 /data/pfs_camera_isp_update_progress

test -e "/dev/video4" && videoNode="exist" || videoNode="Not exist"
Old_Path=${PWD}
cd /system/bin/USB_Camera_Update/

HardwareID=$(getprop "ro.product.device")

if [ "$videoNode" == "exist" ]; then
if [ "$HardwareID" == "ASUS_T00N" ]; then ./rts_usb --download /data/asusfw/USB_camera/5653_0001.rfw
elif [ "$HardwareID" == "ASUS-T00D" ]; then ./rts_usb --download /data/asusfw/USB_camera/5653_0001.rfw
else echo "$Not_Recognize_Hardware" > /data/pfs_camera_isp_fw_update_result
fi
else echo "$No_Video_Node" > /data/pfs_camera_isp_fw_update_result
fi

Result=$(cat /data/pfs_camera_isp_fw_update_result)

if [ "$Result" == "$Default_Value" ]; then echo "$Update_Success" > /data/pfs_camera_isp_fw_update_result
fi

cd $Old_Path

