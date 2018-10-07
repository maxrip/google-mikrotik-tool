Простой скрипт, который через апи получает список сетей гугла, из которых формирует правила для добавления в фаервол в стиле команд микротика и добавляет в файл __list__
Для работы правил требуется наличие следующих настроек на роутере

```
/ip firewall mangle
add action=mark-routing chain=prerouting dst-address-list=VPN in-interface=bridge1 new-routing-mark=VPN passthrough=yes

/ip route
add distance=1 gateway=ovpn routing-mark=VPN
```

Где __bridge1__ это интерфейс с которого требуется перенаправлять трафик направляемые к гугло серверам через VPN, __ovpn__ интрфейс поднятного VPN

