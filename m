Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A34A770A9B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 22:24:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+HRj8apcp0F8mjrKbTvpXyZmej1acL9p70vVyISS50=; b=hMzT9msGuy6m9C
	IrDJu439H4xOuSm+1HgnullWpUxw/apAMGyRh+3+IcW6temlwCVVmlcDtmwMjpQHqG72dRUZaRMeL
	oInWlb4XduVopdHdzA6W6basJBJIGL0Rbnuaha6gtYqAAiYY0RDn8RqdlVUKWUiAf0m4YyJChpghl
	9JLCABTxUb+EoYZV1qnfyA3yMKW/CGHUW09mqr2+VC4/hA0klNlkZoKmEvGfy2zKE9BA6xAUk5nZZ
	ITVsbwizQr3qgM7+lk8YSRKMhZTtieGgLInDS91znGFnn8Buqi35F6EinlfEX2QPqcQIgQtggvRwY
	PcEh1AcTAXSyp8ykZd/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hperE-0002EV-0l; Mon, 22 Jul 2019 20:24:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpeqw-0002Dn-UB
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 20:24:12 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hpeqt-0006Ge-S5; Mon, 22 Jul 2019 22:24:07 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hpeqs-0007Px-Ss; Mon, 22 Jul 2019 22:24:06 +0200
Date: Mon, 22 Jul 2019 22:24:06 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sergey Organov <sorganov@gmail.com>
Subject: Re: [PATCH v6 2/3] serial: imx: set_mctrl(): correctly restore
 autoRTS state
Message-ID: <20190722202406.hr74mg64sxoovah7@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563823331-5629-1-git-send-email-sorganov@gmail.com>
 <1563823331-5629-3-git-send-email-sorganov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563823331-5629-3-git-send-email-sorganov@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_132410_997951_D36C3951 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 10:22:10PM +0300, Sergey Organov wrote:
> imx_uart_set_mctrl() happened to set UCR2_CTSC bit whenever TIOCM_RTS
> was set, no matter if RTS/CTS handshake is enabled or not. Now fixed by
> turning handshake on only when CRTSCTS bit for the port is set.
> =

> Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
> Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Sergey Organov <sorganov@gmail.com>
> ---
>  drivers/tty/serial/imx.c | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
> index 32f36d8..059ba35 100644
> --- a/drivers/tty/serial/imx.c
> +++ b/drivers/tty/serial/imx.c
> @@ -974,10 +974,22 @@ static void imx_uart_set_mctrl(struct uart_port *po=
rt, unsigned int mctrl)
>  	if (!(port->rs485.flags & SER_RS485_ENABLED)) {
>  		u32 ucr2;
>  =

> +		/*
> +		 * Turn off autoRTS if RTS is lowered and restore autoRTS
> +		 * setting if RTS is raised.

"lower" and "raising" are misleading here. I recommend sticking to
"active" and "inactive".

> +		 */
>  		ucr2 =3D imx_uart_readl(sport, UCR2);
>  		ucr2 &=3D ~(UCR2_CTS | UCR2_CTSC);
> -		if (mctrl & TIOCM_RTS)
> -			ucr2 |=3D UCR2_CTS | UCR2_CTSC;
> +		if (mctrl & TIOCM_RTS) {
> +			ucr2 |=3D UCR2_CTS;
> +			/*
> +			 * UCR2_IRTS is unset if and only if the port is
> +			 * configured for CRTSCTS, so we use inverted UCR2_IRTS
> +			 * to get the state to restore to.
> +			 */
> +			if (!(ucr2 & UCR2_IRTS))
> +				ucr2 |=3D UCR2_CTSC;
> +		}

If you teach imx_uart_rts_auto about IRTS this function could be reused
here I think.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
