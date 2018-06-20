import lib
import crontab

print("Fib(5)=%d" % lib.fib(5))

entry = crontab.CronTab('25 * * * *')
print(entry.next(default_utc=True))
