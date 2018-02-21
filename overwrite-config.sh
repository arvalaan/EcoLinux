#!/bin/sh
set -e

# Replace Config Values
# Example: sed -i -e 's/few/asd/g' hello.txt

sed -i -e 's/"PublicServer": false,/"PublicServer": true,\n  "Description": "Testing",/g' /opt/steamcmd/steamapps/EcoServer/Configs/Network.eco
sed -i -e 's/"SkillGainMultiplier": 1.0/"SkillGainMultiplier": 2.0/g' /opt/steamcmd/steamapps/EcoServer/Configs/Difficulty.eco
sed -i -e 's/"SkillPointsPerAction": 0.0/"SkillPointsPerAction": 0.05/g' /opt/steamcmd/steamapps/EcoServer/Configs/Difficulty.eco
sed -i -e 's/"SkillPointPerCrafttime": 0.0/"SkillPointPerCrafttime": 0.02/g' /opt/steamcmd/steamapps/EcoServer/Configs/Difficulty.eco