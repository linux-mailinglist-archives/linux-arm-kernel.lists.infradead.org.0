Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF6F8CFC9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:36:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E2Cq88UZHPK6Z77O7PRAyiFnqDtfsTwr+4c7gTruoRI=; b=L1wrMPdycxbExa
	Yl+KxUnGQU/4w0sWEK5QO6rKT9/YnpaoQYe4DLLLOG5c2r8UZP2H58a22bhlNz64b9no8W4+FkArY
	S+GrRDI+RxiTaQLM2pl0jEfYbYmzCuuSNeCM3P5n9SUxj99mK6BuH/GAxPspn2YbCma+NiXzf3+03
	924Ml02zJVfqKEhbpe/zmCn86Ic+TbA4EzRcIL54wQjBzP3R1+ufT02fHN4g3mvtofnA7J3wJ6vlQ
	gTPiBPOVdvPKzVWFOWzda8nCjn2quS8Elnz+5ILdaFEnQuyh+3OFMgQ1rJz8Q0hW13dQ8d7wn4yqN
	aAu0bnuLz2eLT5kDst5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxphk-0000ta-AW; Wed, 14 Aug 2019 09:36:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxphT-0000sV-Qg
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:36:13 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hxphL-0003E0-91; Wed, 14 Aug 2019 11:36:03 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hxphG-0004vF-V0; Wed, 14 Aug 2019 11:35:58 +0200
Date: Wed, 14 Aug 2019 11:35:58 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH 1/3] serial: atmel: Don't check for mctrl_gpio_to_gpiod()
 returning error
Message-ID: <20190814093558.xlx5ck54dw2dgb6k@pengutronix.de>
References: <20190814092757.13726-1-geert+renesas@glider.be>
 <20190814092924.13857-1-geert+renesas@glider.be>
 <20190814092924.13857-2-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814092924.13857-2-geert+renesas@glider.be>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_023611_862277_CBFA70A5 
X-CRM114-Status: GOOD (  17.21  )
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
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-serial@vger.kernel.org,
 Richard Genoud <richard.genoud@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-renesas-soc@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 NXP Linux Team <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

[adding the Atmel guys to Cc]

On Wed, Aug 14, 2019 at 11:29:22AM +0200, Geert Uytterhoeven wrote:
> Since commit 1d267ea6539f2663 ("serial: mctrl-gpio: simplify init
> routine"), mctrl_gpio_init() returns failure if the assignment to any
> member of the gpio array results in an error pointer.
> Since commit c359522194593815 ("serial: mctrl_gpio: Avoid probe failures
> in case of missing gpiolib"), mctrl_gpio_to_gpiod() returns NULL in the
> !CONFIG_GPIOLIB case.
> Hence there is no longer a need to check for mctrl_gpio_to_gpiod()
> returning an error value.  A simple NULL check is sufficient.
> =

> This follows the spirit of commit 445df7ff3fd1a0a9 ("serial: mctrl-gpio:
> drop usages of IS_ERR_OR_NULL") in the mctrl-gpio core.
> =

> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  drivers/tty/serial/atmel_serial.c | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/tty/serial/atmel_serial.c b/drivers/tty/serial/atmel=
_serial.c
> index 19a85d6fe3d20541..e9620a81166b7dc1 100644
> --- a/drivers/tty/serial/atmel_serial.c
> +++ b/drivers/tty/serial/atmel_serial.c
> @@ -303,32 +303,28 @@ static unsigned int atmel_get_lines_status(struct u=
art_port *port)
>  =

>  	mctrl_gpio_get(atmel_port->gpios, &ret);
>  =

> -	if (!IS_ERR_OR_NULL(mctrl_gpio_to_gpiod(atmel_port->gpios,
> -						UART_GPIO_CTS))) {
> +	if (mctrl_gpio_to_gpiod(atmel_port->gpios, UART_GPIO_CTS)) {
>  		if (ret & TIOCM_CTS)
>  			status &=3D ~ATMEL_US_CTS;
>  		else
>  			status |=3D ATMEL_US_CTS;
>  	}

The change is fine, but it seems the atmel driver doesn't use mctrl_gpio
as expected (at least as expected by me). IMHO driving the hardware
function of the CTS pin shouldn't be conditional on the presence of a
cts-gpio. Is there a reason not to just drop the if completely?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
