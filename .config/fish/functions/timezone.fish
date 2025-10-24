function timezone -d "Set timezone" -a city
    echo timedatectl list-timezones | grep $city
