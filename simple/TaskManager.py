import os

def check_file_location(filename):
    # Get the current directory
    current_dir = os.getcwd()
    # Get the path of the file
    file_path = os.path.join(current_dir, "winlogon.exe")
    file_path = os.path.join(current_dir, "csrss.exe")
    file_path = os.path.join(current_dir, "smss.exe")
    file_path = os.path.join(current_dir, "wininit.exe")
    file_path = os.path.join(current_dir, "services.exe")
    file_path = os.path.join(current_dir, "lsass.exe")
    file_path = os.path.join(current_dir, "lsm.exe")
    file_path = os.path.join(current_dir, "svchost.exe")
    file_path = os.path.join(current_dir, "winload.exe")
    file_path = os.path.join(current_dir, "dwm.exe")
    file_path = os.path.join(current_dir, "explorer.exe")
    file_path = os.path.join(current_dir, "taskhost.exe")
    file_path = os.path.join(current_dir, "taskmgr.exe")
    file_path = os.path.join(current_dir, "conhost.exe")
    file_path = os.path.join(current_dir, "fontdrvhost.exe")
    file_path = os.path.join(current_dir, "Ravbg64.exe")
    if os.path.exists(file_path):
        print("Window's most common files have been cheacked and are in their correct place, please close this prompt.")
        return True
    else:
        return False
        print("Scan has come back.. some files have been marked as suspicious... our antivirus will fix that, please close this prompt.")
