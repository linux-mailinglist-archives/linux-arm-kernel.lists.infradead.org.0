Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CA830E5E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 14:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tn6jDf0WGo672/zK2Q8Dy8XgkOFC6BZKGDTvazI/Sp4=; b=Z5R6tAkGrLcr2s
	wDYyHHX4uD0l902bW0ojfWe+iWotxeszxYqFqsVcQGyyjKPwrJmLJ/T7txoasZBlzf6NBEfsgpcDB
	CQ7nqS1l3p9aJ3erGJcx0cUYjWTBBQy1+iGLTm4IDFv8n9QxX18vtuSEiCrGflICHlngjOwGBPTYE
	4TSzFH1jLG4LcCEWkjBY2DQpSsOzU4z+1Xh+pn2H6xUWUQvrWt6kz/eA8dwbgO8jIsSFQbWWgTTWh
	clqaTVozbCzmO5IcJVmJZq+z/G5M1Pnunqqvzax/ucSslytwfanyS2LJN4769X1Mb2NU7nMgZJSuo
	ab9uxfWhaF7DzOmidf+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWgzK-0002iN-PK; Fri, 31 May 2019 12:50:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWgzC-0002hH-TM
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 12:50:20 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hWgz9-00020A-Fo; Fri, 31 May 2019 14:50:15 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hWgz7-00078v-KN; Fri, 31 May 2019 14:50:13 +0200
Date: Fri, 31 May 2019 14:50:13 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH 1/6] serial: sa1100: add support for mctrl gpios
Message-ID: <20190531125013.3gkexhmbqjpdvrtf@pengutronix.de>
References: <20190531111257.27hor6xgb3nsdghg@shell.armlinux.org.uk>
 <E1hWfTn-0003fP-Rl@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1hWfTn-0003fP-Rl@rmk-PC.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_055019_109122_88DE6411 
X-CRM114-Status: GOOD (  21.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 12:13:47PM +0100, Russell King wrote:
> Add support for the generic mctrl gpio helper.  This will allow us to
> convert several board files to use the gpiod tables to assign GPIOs to
> serial ports, rather than needing to have private function callbacks.
> =

> If the generic mctrl gpio helper fails, ignore the mctrl gpios rather
> than preventing the (possibly console) serial port from being created.
> =

> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
>  drivers/tty/serial/Kconfig  |  1 +
>  drivers/tty/serial/sa1100.c | 42 ++++++++++++++++++++++++++++++++++++++-=
---
>  2 files changed, 39 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> index 72966bc0ac76..f4372ac1a774 100644
> --- a/drivers/tty/serial/Kconfig
> +++ b/drivers/tty/serial/Kconfig
> @@ -511,6 +511,7 @@ config SERIAL_SA1100
>  	bool "SA1100 serial port support"
>  	depends on ARCH_SA1100
>  	select SERIAL_CORE
> +	select SERIAL_MCTRL_GPIO if GPIOLIB
>  	help
>  	  If you have a machine based on a SA1100/SA1110 StrongARM(R) CPU you
>  	  can enable its onboard serial port by enabling this option.
> diff --git a/drivers/tty/serial/sa1100.c b/drivers/tty/serial/sa1100.c
> index a399772be3fc..97bdfeccbea9 100644
> --- a/drivers/tty/serial/sa1100.c
> +++ b/drivers/tty/serial/sa1100.c
> @@ -28,6 +28,8 @@
>  #include <mach/hardware.h>
>  #include <mach/irqs.h>
>  =

> +#include "serial_mctrl_gpio.h"
> +
>  /* We've been assigned a range on the "Low-density serial ports" major */
>  #define SERIAL_SA1100_MAJOR	204
>  #define MINOR_START		5
> @@ -77,6 +79,7 @@ struct sa1100_port {
>  	struct uart_port	port;
>  	struct timer_list	timer;
>  	unsigned int		old_status;
> +	struct mctrl_gpios	*gpios;
>  };
>  =

>  /*
> @@ -174,6 +177,8 @@ static void sa1100_enable_ms(struct uart_port *port)
>  		container_of(port, struct sa1100_port, port);
>  =

>  	mod_timer(&sport->timer, jiffies);
> +
> +	mctrl_gpio_enable_ms(sport->gpios);
>  }
>  =

>  static void
> @@ -322,11 +327,21 @@ static unsigned int sa1100_tx_empty(struct uart_por=
t *port)
>  =

>  static unsigned int sa1100_get_mctrl(struct uart_port *port)
>  {
> -	return TIOCM_CTS | TIOCM_DSR | TIOCM_CAR;
> +	struct sa1100_port *sport =3D
> +		container_of(port, struct sa1100_port, port);
> +	int ret =3D TIOCM_CTS | TIOCM_DSR | TIOCM_CAR;
> +
> +	mctrl_gpio_get(sport->gpios, &ret);
> +
> +	return ret;
>  }
>  =

>  static void sa1100_set_mctrl(struct uart_port *port, unsigned int mctrl)
>  {
> +	struct sa1100_port *sport =3D
> +		container_of(port, struct sa1100_port, port);
> +
> +	mctrl_gpio_set(sport->gpios, mctrl);
>  }
>  =

>  /*
> @@ -842,6 +857,27 @@ static int sa1100_serial_resume(struct platform_devi=
ce *dev)
>  	return 0;
>  }
>  =

> +static int sa1100_serial_add_one_port(struct sa1100_port *sport, struct =
platform_device *dev)
> +{
> +	sport->port.dev =3D &dev->dev;
> +	sport->gpios =3D mctrl_gpio_init_noauto(sport->port.dev, 0);

the _noauto function was only introduced to ease a transition. I think
the driver would benefit to use mctrl_gpio_init() instead.

Getting rid of mctrl_gpio_init_noauto() was on my todo list for some
time, but it was pushed down too far :-|

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
