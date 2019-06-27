Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5744E57BB6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=maoN6z4Jdz6N3FlwXG1Nd2fi6EFDl3+ELS/pBU1DXIc=; b=Q84Uu8R9N8xVmN
	GpQvs8csLVLY8sTZwTSrCsi6eNDGXU6LoyMc0R7dznP7T+EP2AcVtAEyWNPGLn/qQqm9fe7c8pkTY
	wAjy/cT6YnIrpLuE0fCVUKNQWw10JZqeXIyz/UniPU5s/v091QiFYzVIsgJk6OeE87fiEvReLHm0E
	XBeK19Ac1CkmzeyrT66TfhPGR+zAsFXCs9+wXC7YEAcuSDrFUoBLLmOECqgVHc1iHukiwrSdPfMLf
	/yCGHvegV8xw4JUWNpcng1kVE/N1CIMOHRaWUSJMLd8vS707vGfw16G9INXEhOk1zOSEWsEGfK10Q
	nYx59J1YFkXXU4vMisVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgNXe-0004yr-6h; Thu, 27 Jun 2019 06:05:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgNXS-0004yY-DB
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 06:05:43 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hgNXQ-0007w2-7l; Thu, 27 Jun 2019 08:05:40 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hgNXN-0003af-LM; Thu, 27 Jun 2019 08:05:37 +0200
Date: Thu, 27 Jun 2019 08:05:37 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sergey Organov <sorganov@gmail.com>
Subject: Re: [PATCH v2 6/7] serial: imx: set_mctrl(): correctly restore
 autoRTS state
Message-ID: <20190627060537.brmgsmoh3usr4vo6@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561558293-7683-1-git-send-email-sorganov@gmail.com>
 <1561558293-7683-7-git-send-email-sorganov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561558293-7683-7-git-send-email-sorganov@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_230542_450309_21DE95B4 
X-CRM114-Status: GOOD (  17.26  )
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

On Wed, Jun 26, 2019 at 05:11:32PM +0300, Sergey Organov wrote:
> imx_uart_set_mctrl() happened to set UCR2_CTSC bit whenever TIOCM_RTS
> was set, no matter if RTS/CTS handshake is enabled or not. Now fixed by
> turning handshake on only when CRTSCTS bit for the port is set.
> =

> Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
> Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Sergey Organov <sorganov@gmail.com>
> ---
>  drivers/tty/serial/imx.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
> index 4867f80..171347d 100644
> --- a/drivers/tty/serial/imx.c
> +++ b/drivers/tty/serial/imx.c
> @@ -970,10 +970,19 @@ static void imx_uart_set_mctrl(struct uart_port *po=
rt, unsigned int mctrl)
>  	if (!(port->rs485.flags & SER_RS485_ENABLED)) {
>  		u32 ucr2;
>  =

> +		/*
> +		 * Turn off autoRTS (UCR2_CTSC) if RTS is lowered and restore
> +		 * autoRTS setting if RTS is raised. Inverted UCR2_IRTS is set
> +		 * if and only if CRTSCTS bit is set for the port, so we use it
> +		 * to get the state to restore to.
> +		 */

The comment is quite complicated. I like the comments of Sascha's patch
that addressed the same issue better.

Are you using UCR2_IRTS as an indicator if CRTSCTS is set? If it's that
what you intend to express in the second sentence that is hard to grasp.
Something like:

	UCR2_IRTS is unset iff the port is configured for CRTSCTS

Also as the value of the CTS bit doesn't matter if CTSC is set, the
order of the checks could be swapped to result in easier code (IMHO at
least) that doesn't need a nested if.

Something like:

	ucr2 =3D imx_uart_readl(sport, UCR2);
	ucr2 &=3D ~(UCR2_CTS | UCR2_CTSC);

	/* UCR2_IRTS is unset iff the port is configured for CRTSCTS */
	crtscts =3D !(ucr2 & UCR2_IRTS);

	if (!(mctrl & TIOCM_RTS)) {
		/* Force RTS inactive, i.e. UCR2_CTS=3D0 and UCR2_CTSC=3D0 */
	} else if (crtscts) {
		/* let the receiver control RTS */
		ucr2 |=3D UCR2_CTSC;
	} else {
		/* Force RTS active */
		ucr2 |=3D UCR2_CTS;
	}

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
