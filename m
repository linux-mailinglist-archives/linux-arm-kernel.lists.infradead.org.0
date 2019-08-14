Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEF28D1C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:10:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5s6c4e4boBCC+1I8/owDwcW4Fug8HOqIoCUNbfflaHc=; b=ajBBJAfEx5fGG3
	EbwJrHyQmVffkZRFwEaWFER7h1eIpyHyAR0nhs6H1GjFFFrxowVm42cNvpTCCQKAkTvD0M1VEQsnA
	LFNXQhqMjFxTZA4GCFRhRsRVQSvJ3RnFyytwE72nYWQSkJ8vB/50Ea4WyQHhla94IF5hXluYVQEXy
	JKJyBLJ8vbdohWHKQLywbHKSzECLV+TmkFpypBUWhuWtBfSyNY1RwdcMxMCqOTCt69t2e2stafoE+
	SnzMd89S/cJZ/JaeGo5pjL++3wjXCNihYzAEMKr5iQkbubBKe4LkJFBQrA5r5KDXxSTgwJzEXAThB
	+blLSCwvrNUtrf56wlvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrA8-0006SH-04; Wed, 14 Aug 2019 11:09:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxr8Z-0006KE-Pr
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:08:17 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hxr8R-0006S4-9I; Wed, 14 Aug 2019 13:08:07 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hxr8O-0000eI-EU; Wed, 14 Aug 2019 13:08:04 +0200
Date: Wed, 14 Aug 2019 13:08:04 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 1/3] serial: atmel: Don't check for mctrl_gpio_to_gpiod()
 returning error
Message-ID: <20190814110804.2ceo2upc3su7muup@pengutronix.de>
References: <20190814092757.13726-1-geert+renesas@glider.be>
 <20190814092924.13857-1-geert+renesas@glider.be>
 <20190814092924.13857-2-geert+renesas@glider.be>
 <20190814093558.xlx5ck54dw2dgb6k@pengutronix.de>
 <CAMuHMdWNj-H9B8E9=NeCgLracBuJODfPyBYJERh=vt4oNFUkGw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdWNj-H9B8E9=NeCgLracBuJODfPyBYJERh=vt4oNFUkGw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_040816_069804_7D199702 
X-CRM114-Status: GOOD (  22.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Richard Genoud <richard.genoud@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 NXP Linux Team <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 12:20:33PM +0200, Geert Uytterhoeven wrote:
> Hi Uwe,
> =

> On Wed, Aug 14, 2019 at 11:36 AM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> > On Wed, Aug 14, 2019 at 11:29:22AM +0200, Geert Uytterhoeven wrote:
> > > Since commit 1d267ea6539f2663 ("serial: mctrl-gpio: simplify init
> > > routine"), mctrl_gpio_init() returns failure if the assignment to any
> > > member of the gpio array results in an error pointer.
> > > Since commit c359522194593815 ("serial: mctrl_gpio: Avoid probe failu=
res
> > > in case of missing gpiolib"), mctrl_gpio_to_gpiod() returns NULL in t=
he
> > > !CONFIG_GPIOLIB case.
> > > Hence there is no longer a need to check for mctrl_gpio_to_gpiod()
> > > returning an error value.  A simple NULL check is sufficient.
> > >
> > > This follows the spirit of commit 445df7ff3fd1a0a9 ("serial: mctrl-gp=
io:
> > > drop usages of IS_ERR_OR_NULL") in the mctrl-gpio core.
> > >
> > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > ---
> > >  drivers/tty/serial/atmel_serial.c | 12 ++++--------
> > >  1 file changed, 4 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/tty/serial/atmel_serial.c b/drivers/tty/serial/a=
tmel_serial.c
> > > index 19a85d6fe3d20541..e9620a81166b7dc1 100644
> > > --- a/drivers/tty/serial/atmel_serial.c
> > > +++ b/drivers/tty/serial/atmel_serial.c
> > > @@ -303,32 +303,28 @@ static unsigned int atmel_get_lines_status(stru=
ct uart_port *port)
> > >
> > >       mctrl_gpio_get(atmel_port->gpios, &ret);
> > >
> > > -     if (!IS_ERR_OR_NULL(mctrl_gpio_to_gpiod(atmel_port->gpios,
> > > -                                             UART_GPIO_CTS))) {
> > > +     if (mctrl_gpio_to_gpiod(atmel_port->gpios, UART_GPIO_CTS)) {
> > >               if (ret & TIOCM_CTS)
> > >                       status &=3D ~ATMEL_US_CTS;
> > >               else
> > >                       status |=3D ATMEL_US_CTS;
> > >       }
> >
> > The change is fine, but it seems the atmel driver doesn't use mctrl_gpio
> > as expected (at least as expected by me). IMHO driving the hardware
> > function of the CTS pin shouldn't be conditional on the presence of a
> > cts-gpio. Is there a reason not to just drop the if completely?
> =

> The above code returns the hardware status if CTS is not a GPIO, and
> returns (overrides with) the GPIO status if CTS is a GPIO.
> Isn't that correct, or am I missing something?

I took a deeper look into this driver now. The task for
atmel_get_lines_status() isn't to implement the get_mctrl() callback.

Instead this is called in the irqhandler to set ATMEL_US_RI in a
"pending" value that then later in atmel_handle_status() is translated
to a "ring" event that is handled there.

So the right cleanup would be to let atmel_get_lines_status() just be

	return atmel_uart_readl(port, ATMEL_US_CSR);

. If something happend on the lines implemented as gpio the driver's irq
function isn't called anyhow.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
