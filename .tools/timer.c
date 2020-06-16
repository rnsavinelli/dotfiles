#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define NOTIFICATION "notify-send \"Time is up!\" \"Timer countdown finished\""
#define BELL "paplay /usr/share/sounds/freedesktop/stereo/complete.oga"

void
run_command(const char *cmd)
{
	FILE *fp;

	if (!(fp = popen(cmd, "r"))) {
		perror("popen");
		return;
	}

	if (pclose(fp) < 0) {
		perror("pclose");
		return;
	}
}

int
main (int argc, char *argv[]) {
    float time;

    if (argc == 1) {
        printf("Usage: ./timer n_minutes\n");
    }

    else {
        if ((time = atof((const char *) argv[1])*60) <= 0 ) {
            printf("timer: invalid input\n");
        }

        else {
            printf("Timer configuration: %.2f m\n\n", time/60);

            while (time > 0) {
                if((int) time % 15 == 0) {
                    printf("%.2d:%.2d\n", (int) time/60, (int) time % 60);
                }
                sleep(1);
                time--;
            }

            printf("Time is up!\n");

            run_command(NOTIFICATION);
            run_command(BELL);
        }
    }

    return 0;
}
