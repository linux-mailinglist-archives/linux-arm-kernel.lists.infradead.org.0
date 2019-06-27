Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7724957B75
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iEdb1/txXcZqz6kV2u1JLXqD7rnwiIDMFqNWNNkS0Vc=; b=Vh59jX/7U5jxV5
	m9atAP8GhPvE8HJ54lDYqAumgCUu5As8tvBkQar3sQECHbxKD4JFNIho0J+TEu1NHFkQXY10k4LcB
	TDLAbB59BTdt9onu33qlMvQC9AXL7JovZOPPcGrzd820wd8NvfKmOpS9v3Q5UXbFnp9jEixQdR5aS
	9KJST5S4J0k5/I5Jp7w0+J5t4KkC5mIuEdhdylafDMeHIgX5Rju9N9CN6+BS+ArabPS1zbYUlr0j2
	K4CG91wMFRfddA4gbfbVf9JfoJgXz4H57YhBEyWyL2DXaPYZSW1za1Bt+upEKX8fXY+iv6hdQso9F
	YaCGjireM3nEeNF7voYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMzL-0002KD-UM; Thu, 27 Jun 2019 05:30:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMvx-0006yb-UO
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 05:27:00 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hgMvt-0003hO-KO; Thu, 27 Jun 2019 07:26:53 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hgMvs-0001yt-UK; Thu, 27 Jun 2019 07:26:52 +0200
Date: Thu, 27 Jun 2019 07:26:52 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sergey Organov <sorganov@gmail.com>
Subject: Re: [PATCH v2 3/7] serial: imx: set_termios(): clarify RTS/CTS bits
 calculation
Message-ID: <20190627052652.ey7cmzkztylfy7k3@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561558293-7683-1-git-send-email-sorganov@gmail.com>
 <1561558293-7683-4-git-send-email-sorganov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561558293-7683-4-git-send-email-sorganov@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_222658_026431_8F2E1D93 
X-CRM114-Status: GOOD (  17.34  )
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 05:11:29PM +0300, Sergey Organov wrote:
> Avoid repeating the same code for rs485 twice.
> =

> Make it obvious we clear CRTSCTS bit in termios->c_cflag whenever
> sport->have_rtscts is false.
> =

> Make it obvious we clear UCR2_IRTS whenever CRTSCTS is set.
> =

> Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
> Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Sergey Organov <sorganov@gmail.com>
> ---
>  drivers/tty/serial/imx.c | 36 +++++++++++++-----------------------
>  1 file changed, 13 insertions(+), 23 deletions(-)
> =

> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
> index 87802fd..17e2322 100644
> --- a/drivers/tty/serial/imx.c
> +++ b/drivers/tty/serial/imx.c
> @@ -1567,35 +1567,25 @@ imx_uart_set_termios(struct uart_port *port, stru=
ct ktermios *termios,
>  	if ((termios->c_cflag & CSIZE) =3D=3D CS8)
>  		ucr2 |=3D UCR2_WS;
>  =

> -	if (termios->c_cflag & CRTSCTS) {
> -		if (sport->have_rtscts) {
> -			ucr2 &=3D ~UCR2_IRTS;
> +	if (!sport->have_rtscts)
> +		termios->c_cflag &=3D ~CRTSCTS;
>  =

> -			if (port->rs485.flags & SER_RS485_ENABLED) {
> -				/*
> -				 * RTS is mandatory for rs485 operation, so keep
> -				 * it under manual control and keep transmitter
> -				 * disabled.
> -				 */
> -				if (port->rs485.flags &
> -				    SER_RS485_RTS_AFTER_SEND)
> -					imx_uart_rts_active(sport, &ucr2);
> -				else
> -					imx_uart_rts_inactive(sport, &ucr2);
> -			} else {
> -				imx_uart_rts_auto(sport, &ucr2);
> -			}
> -		} else {
> -			termios->c_cflag &=3D ~CRTSCTS;
> -		}
> -	} else if (port->rs485.flags & SER_RS485_ENABLED) {
> -		/* disable transmitter */
> +	if (port->rs485.flags & SER_RS485_ENABLED) {
> +		/*
> +		 * RTS is mandatory for rs485 operation, so keep
> +		 * it under manual control and keep transmitter
> +		 * disabled.
> +		 */
>  		if (port->rs485.flags & SER_RS485_RTS_AFTER_SEND)
>  			imx_uart_rts_active(sport, &ucr2);
>  		else
>  			imx_uart_rts_inactive(sport, &ucr2);
> -	}
>  =

> +	} else if (termios->c_cflag & CRTSCTS)
> +		imx_uart_rts_auto(sport, &ucr2);

Here a set of braces is needed even if the body has only a single line.

> +
> +	if (termios->c_cflag & CRTSCTS)
> +		ucr2 &=3D ~UCR2_IRTS;
>  =

>  	if (termios->c_cflag & CSTOPB)
>  		ucr2 |=3D UCR2_STPB;

Is this patch intended to not change semantic? I wonder if it hides a
fix because if imx_uart_set_termios() was called with termios->c_cflag
& CRTSCTS and !sport->have_rtscts the rs485 block was not reached. Now
it is.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
