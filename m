Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8630E456B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 09:48:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gikdCVwvhlM5iYKtc4CGM9xssni0XC0JHC8a6CYtI6w=; b=HfBd4y4f3Yl7Pa
	lCrRHQsRrgTHFUsz+MNULsa4gQ+hUTBEiNtJMDkwVNrqBug7O0z1XMuyTq+GviAS4HdgNof65ohum
	e30wqu+wol2VsIN78doFY2gQx2sLEn9FgX9lgQAliZCXUKQ23yo2xPBTZEhRqtYRm+KM6wE1jRoKg
	6ZD6tVE+Ga8P1vfTIKz+7xNiI+Vky1DF/uuDtARM8PCjRVMgBA+U8Ruw3PYbEepWmPQop+TWMqUPQ
	jIdGrTW8cQ/h/KLq/fspUR52pLviJ9HDW+fhJ600lN8YShhlztRRluWVIo1SnFwsv76Hf+mSu5T02
	cv0Ll69dV82d8mVEhY4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbgww-0001IS-Tj; Fri, 14 Jun 2019 07:48:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbgwj-0001Hk-De
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 07:48:26 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hbgwe-00041Y-Hd; Fri, 14 Jun 2019 09:48:20 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hbgwc-0006jw-0h; Fri, 14 Jun 2019 09:48:18 +0200
Date: Fri, 14 Jun 2019 09:48:17 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH] serial: imx: fix RTS/CTS setting
Message-ID: <20190614074817.vmvhvbms32i6jfqo@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614072801.3187-1-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_004825_461851_A2B5C80A 
X-CRM114-Status: GOOD (  20.85  )
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
Cc: Russell King <linux@arm.linux.org.uk>, linux-serial@vger.kernel.org,
 Sergey Organov <sorganov@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[expanded Cc: a bit]

Hello Sascha,

On Fri, Jun 14, 2019 at 09:28:01AM +0200, Sascha Hauer wrote:
> The correct setting of the RTS pin depends on the CRTSCTS termios setting:
> =

> - When CRTSCTS is disabled then RTS shall be controlled by the TIOCM_RTS
>   flag.
> - When CRTSCTS is enabled the expected behaviour of the RTS pin is:
>   - When TIOCM_RTS is set then let the receiver control RTS.
>   - When the TIOCM_RTS flag is cleared then RTS shall be deasserted (to l=
et
>     the upper layers throttle the transfer even when the FIFO in the UART=
 has
>     enough space).
> =

> This patch fixes this behaviour. Previously the RTS pin has always been
> controlled by the receiver once the TIOCM_RTS flag was set and the CRTSCTS
> setting hasn't been taken into account.
> =

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/tty/serial/imx.c | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
> index 8b752e895053..0eddca6455ad 100644
> --- a/drivers/tty/serial/imx.c
> +++ b/drivers/tty/serial/imx.c
> @@ -216,6 +216,7 @@ struct imx_port {
>  	unsigned int		dma_is_enabled:1;
>  	unsigned int		dma_is_rxing:1;
>  	unsigned int		dma_is_txing:1;
> +	unsigned int		crtscts:1;
>  	struct dma_chan		*dma_chan_rx, *dma_chan_tx;
>  	struct scatterlist	rx_sgl, tx_sgl[2];
>  	void			*rx_buf;
> @@ -967,9 +968,18 @@ static void imx_uart_set_mctrl(struct uart_port *por=
t, unsigned int mctrl)
>  		u32 ucr2;
>  =

>  		ucr2 =3D imx_uart_readl(sport, UCR2);
> +
>  		ucr2 &=3D ~(UCR2_CTS | UCR2_CTSC);
> -		if (mctrl & TIOCM_RTS)
> -			ucr2 |=3D UCR2_CTS | UCR2_CTSC;
> +
> +		if (mctrl & TIOCM_RTS) {
> +			if (sport->crtscts)
> +				/* let the receiver control RTS */
> +				ucr2 |=3D UCR2_CTSC;
> +			else
> +				/* Force RTS active */
> +				ucr2 |=3D UCR2_CTS;
> +		}
> +

Other drivers check for

	port->status & UPSTAT_AUTORTS

instead of CRTSCTS. I didn't manage to grasp all the details from the
quick look I took, but maybe you should better do the same?

>  		imx_uart_writel(sport, ucr2, UCR2);
>  	}
>  =

> @@ -1554,6 +1564,11 @@ imx_uart_set_termios(struct uart_port *port, struc=
t ktermios *termios,
>  	else
>  		ucr2 =3D UCR2_SRST | UCR2_IRTS;
>  =

> +	if (termios->c_cflag & CRTSCTS)
> +		sport->crtscts =3D true;
> +	else
> +		sport->crtscts =3D false;
> +
>  	if (termios->c_cflag & CRTSCTS) {

I'd put setting sport->crtscts in the following if block, maybe even in
the if (sport->have_rtscts) part that starts below here?

>  		if (sport->have_rtscts) {
>  			ucr2 &=3D ~UCR2_IRTS;

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
