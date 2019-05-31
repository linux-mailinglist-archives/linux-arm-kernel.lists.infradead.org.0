Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B6730EC8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 15:24:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UnW6B5JGFNOB++lNCKcSbLmRrYFC9IXWdr8D91X+Dk0=; b=Q94zdo9K+cihd7
	9u/WCPhfEnD/VJMt9OYQCjtMItYa1bpa/c6/lePrXJ8isSqAbGLN7MlhNdwnglqMpUEroLAz+xvxC
	3usAeSfAyUHzfUzU55cGvnrx4UDUigieb6IHOTWyntsWgcuP7vtLBX0XQohYFhkCs1NKoqA5qP+qg
	AAysGjk3un5THFMTr5A5xvbfqiJwnOUjrvyrNZgOPm/YcUusMRarGt/5oCwEGO6SayejaZKuhUn8P
	NU5vCm+a/3pbehdJixXgVO73MtFVksr3EMkbu4iaLar+0QG885xqY9N+ebSc/EZL8KETbtf6/JM8Q
	GYMVOhHAl5R5Km7thRtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWhVo-0004Nz-2V; Fri, 31 May 2019 13:24:00 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWhVg-0004NW-Rn
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 13:23:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R+/naJ1UQoGyodf+msmj2cXK4danC8BGGNx/taTC64M=; b=1tC05U25KWZMAO6FBiCQIF95t
 Bsj0t4VqFdqU8FGJLW8miG147uRy5mZPCJJz9irSWowrQjOdTGtUKux6rV9919Lk5hL2KHgynj7q1
 Gh3Qevfrfh0eTuti5hHamJstJfhMy7/8YH3e2h12I+tTCcHkkRJxztAxn/lFnTrcxNAvbbdYK18yo
 GFzDTanCozbM564kNbmcFr/lADcwMVSJhmS6MdJ2FvnJVXaGo8SlWL/AdiFVs6/Tf56ELPWWz9+OQ
 b1stbeefWRwqQhiM32TVLw0/X+WB5wMODYP0zRZZzWJDeo/EMGU3TiGL/FETaTgufhvccpRYwPA9q
 wOPFoVOSg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:38402)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hWhVb-0000yu-0V; Fri, 31 May 2019 14:23:47 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hWhVU-0006NF-7L; Fri, 31 May 2019 14:23:40 +0100
Date: Fri, 31 May 2019 14:23:40 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 1/6] serial: sa1100: add support for mctrl gpios
Message-ID: <20190531132340.bco6xpyl3aatbryl@shell.armlinux.org.uk>
References: <20190531111257.27hor6xgb3nsdghg@shell.armlinux.org.uk>
 <E1hWfTn-0003fP-Rl@rmk-PC.armlinux.org.uk>
 <20190531125013.3gkexhmbqjpdvrtf@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531125013.3gkexhmbqjpdvrtf@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_062353_324580_6D3DFB00 
X-CRM114-Status: GOOD (  23.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, May 31, 2019 at 02:50:13PM +0200, Uwe Kleine-K=F6nig wrote:
> On Fri, May 31, 2019 at 12:13:47PM +0100, Russell King wrote:
> > Add support for the generic mctrl gpio helper.  This will allow us to
> > convert several board files to use the gpiod tables to assign GPIOs to
> > serial ports, rather than needing to have private function callbacks.
> > =

> > If the generic mctrl gpio helper fails, ignore the mctrl gpios rather
> > than preventing the (possibly console) serial port from being created.
> > =

> > Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Acked-by: Linus Walleij <linus.walleij@linaro.org>
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > ---
> >  drivers/tty/serial/Kconfig  |  1 +
> >  drivers/tty/serial/sa1100.c | 42 +++++++++++++++++++++++++++++++++++++=
+----
> >  2 files changed, 39 insertions(+), 4 deletions(-)
> > =

> > diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> > index 72966bc0ac76..f4372ac1a774 100644
> > --- a/drivers/tty/serial/Kconfig
> > +++ b/drivers/tty/serial/Kconfig
> > @@ -511,6 +511,7 @@ config SERIAL_SA1100
> >  	bool "SA1100 serial port support"
> >  	depends on ARCH_SA1100
> >  	select SERIAL_CORE
> > +	select SERIAL_MCTRL_GPIO if GPIOLIB
> >  	help
> >  	  If you have a machine based on a SA1100/SA1110 StrongARM(R) CPU you
> >  	  can enable its onboard serial port by enabling this option.
> > diff --git a/drivers/tty/serial/sa1100.c b/drivers/tty/serial/sa1100.c
> > index a399772be3fc..97bdfeccbea9 100644
> > --- a/drivers/tty/serial/sa1100.c
> > +++ b/drivers/tty/serial/sa1100.c
> > @@ -28,6 +28,8 @@
> >  #include <mach/hardware.h>
> >  #include <mach/irqs.h>
> >  =

> > +#include "serial_mctrl_gpio.h"
> > +
> >  /* We've been assigned a range on the "Low-density serial ports" major=
 */
> >  #define SERIAL_SA1100_MAJOR	204
> >  #define MINOR_START		5
> > @@ -77,6 +79,7 @@ struct sa1100_port {
> >  	struct uart_port	port;
> >  	struct timer_list	timer;
> >  	unsigned int		old_status;
> > +	struct mctrl_gpios	*gpios;
> >  };
> >  =

> >  /*
> > @@ -174,6 +177,8 @@ static void sa1100_enable_ms(struct uart_port *port)
> >  		container_of(port, struct sa1100_port, port);
> >  =

> >  	mod_timer(&sport->timer, jiffies);
> > +
> > +	mctrl_gpio_enable_ms(sport->gpios);
> >  }
> >  =

> >  static void
> > @@ -322,11 +327,21 @@ static unsigned int sa1100_tx_empty(struct uart_p=
ort *port)
> >  =

> >  static unsigned int sa1100_get_mctrl(struct uart_port *port)
> >  {
> > -	return TIOCM_CTS | TIOCM_DSR | TIOCM_CAR;
> > +	struct sa1100_port *sport =3D
> > +		container_of(port, struct sa1100_port, port);
> > +	int ret =3D TIOCM_CTS | TIOCM_DSR | TIOCM_CAR;
> > +
> > +	mctrl_gpio_get(sport->gpios, &ret);
> > +
> > +	return ret;
> >  }
> >  =

> >  static void sa1100_set_mctrl(struct uart_port *port, unsigned int mctr=
l)
> >  {
> > +	struct sa1100_port *sport =3D
> > +		container_of(port, struct sa1100_port, port);
> > +
> > +	mctrl_gpio_set(sport->gpios, mctrl);
> >  }
> >  =

> >  /*
> > @@ -842,6 +857,27 @@ static int sa1100_serial_resume(struct platform_de=
vice *dev)
> >  	return 0;
> >  }
> >  =

> > +static int sa1100_serial_add_one_port(struct sa1100_port *sport, struc=
t platform_device *dev)
> > +{
> > +	sport->port.dev =3D &dev->dev;
> > +	sport->gpios =3D mctrl_gpio_init_noauto(sport->port.dev, 0);
> =

> the _noauto function was only introduced to ease a transition. I think
> the driver would benefit to use mctrl_gpio_init() instead.

In what way would the driver benefit?  mctrl_gpio_init() requires that
there are IRQs for each input GPIO.  This is not the case with most
SA11x0 platforms, where the GPIO controls are implemented using simple
latches, hence that interface is entirely unsuitable.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
