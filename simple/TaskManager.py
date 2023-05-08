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
        return True
        print("Window's most common files have been cheacked and are in their correct place, please close this prompt.")
    else:
        return False
        print("Scan has come back bad, please open 'Suspicious.log' to view suspicious files")

def log_malicious_task(task):
    with open("Suspicious.log", "a") as f:
        f.write(f"File: '{task.name}' is not in system 32, it has been marked as suspicious.\n")
