Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A7157BB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSviNZOZq/rtgMIcaSKpfHnfZ6tOHeJu0Opuxuxykn8=; b=bEGAVTw0ZtsD58
	cZbl8iGWbcCNadG9KUkrPrE1hOty4FNEnMA3vWsvx4QUTG+j0pUDzXqM1nY/mf0YZQ5ydqZF5UlMP
	T299P5h8jc+isTYV6b0mGrBMyWhzdJvxBZ3EYBdA2YBN46YBgfPit5mq2sCFzaMm1AsM0FC8LTEMp
	3UV7DdoYKkjXcccpJSE9xSHS5UF00+buVEi63uc/GFOK+/rtZit3Nhpr4hxiLC3LSZlkHPzbyDGeg
	69AI1H2U8v3pDaJ82GmX0NDkXqscZB598yaPkRlhkjmPzwSA/DYX4tgU2JeqmvTsOuZYI5BGDRVoz
	u1DiFXM0QIdw45gqLr8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgNaZ-0005I3-Nm; Thu, 27 Jun 2019 06:08:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgNaK-0005Hb-Kw
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 06:08:42 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hgNaI-0008C4-FZ; Thu, 27 Jun 2019 08:08:38 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hgNaI-0003bZ-35; Thu, 27 Jun 2019 08:08:38 +0200
Date: Thu, 27 Jun 2019 08:08:38 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sergey Organov <sorganov@gmail.com>
Subject: Re: [PATCH v2 7/7] serial: imx: get rid of imx_uart_rts_auto()
Message-ID: <20190627060838.ls5ghzngkoiczqex@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561558293-7683-1-git-send-email-sorganov@gmail.com>
 <1561558293-7683-8-git-send-email-sorganov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561558293-7683-8-git-send-email-sorganov@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_230840_688694_C80C0A99 
X-CRM114-Status: GOOD (  14.75  )
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

On Wed, Jun 26, 2019 at 05:11:33PM +0300, Sergey Organov wrote:
> Called in only one place, for RS232, it only obscures things, as it
> doesn't go well with 2 similar named functions,
> imx_uart_rts_inactive() and imx_uart_rts_active(), that both are
> RS485-specific.
> =

> Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
> Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Sergey Organov <sorganov@gmail.com>
> ---
>  drivers/tty/serial/imx.c | 13 ++++---------
>  1 file changed, 4 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
> index 171347d..a5e80a0 100644
> --- a/drivers/tty/serial/imx.c
> +++ b/drivers/tty/serial/imx.c
> @@ -402,13 +402,6 @@ static void imx_uart_rts_inactive(struct imx_port *s=
port, u32 *ucr2)
>  	mctrl_gpio_set(sport->gpios, sport->port.mctrl);
>  }
>  =

> -/* called with port.lock taken and irqs caller dependent */
> -static void imx_uart_rts_auto(struct imx_port *sport, u32 *ucr2)
> -{
> -	if (*ucr2 & UCR2_CTS)
> -		*ucr2 |=3D UCR2_CTSC;
> -}
> -
>  /* called with port.lock taken and irqs off */
>  static void imx_uart_start_rx(struct uart_port *port)
>  {
> @@ -1598,8 +1591,10 @@ imx_uart_set_termios(struct uart_port *port, struc=
t ktermios *termios,
>  		else
>  			imx_uart_rts_inactive(sport, &ucr2);
>  =

> -	} else if (termios->c_cflag & CRTSCTS)
> -		imx_uart_rts_auto(sport, &ucr2);
> +	} else if (termios->c_cflag & CRTSCTS) {
> +		if (ucr2 & UCR2_CTS)
> +			ucr2 |=3D UCR2_CTSC;
> +	}

At least before it was (somewhat) clear that this is about RTS and it
is about something automatic. So I don't like the patch.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
