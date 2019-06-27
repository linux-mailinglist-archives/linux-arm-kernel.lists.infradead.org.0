Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98B257BD1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUArtctlWoOPRmKUoln2iVwPbVeQZ/QtAWr4rPYopF4=; b=rIddFsRZyIOwPK
	hQCMnJDMYXV80Osray+yrK7VBHbgZdr56ZGq/MfmU+0HCAYQCK3Kzsh/4RqGzTwYSplRbLq1hl1n9
	lOEUVOAugR/7hv1LFmdI108EXXhlP2wO8ybwj8dz/BY8vbdxIfE8eogTjuckLcrns9O7bKJcusqLU
	IlSDkVhub2cKHvmG9xcFdsx08xopwub8ThMOZfmy/NrP0fZQQ6FbyLUa0J7MzYBoRigkbinrgPBHv
	mGqGJEu2P21iyed8MCRas2JUqWs3QhGV1x8hdFdhlm4Izr0O4jlEG1eU6RewwymIqH+yPPTyRdFls
	YqPhgcvXptKKAmgILjQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgNhq-0000KZ-HS; Thu, 27 Jun 2019 06:16:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgNha-0000K5-AP
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 06:16:11 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hgNhY-0000Yp-N8; Thu, 27 Jun 2019 08:16:08 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hgNhX-0003qa-Jk; Thu, 27 Jun 2019 08:16:07 +0200
Date: Thu, 27 Jun 2019 08:16:07 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 1/2] serial: imx: remove duplicate handling of CTS change
Message-ID: <20190627061607.4ehhr6jj6vkfjorl@pengutronix.de>
References: <20190626101557.26299-1-s.hauer@pengutronix.de>
 <20190626101557.26299-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626101557.26299-2-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_231610_362498_5E959957 
X-CRM114-Status: GOOD (  14.31  )
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
 Sergey Organov <sorganov@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 12:15:56PM +0200, Sascha Hauer wrote:
> We have an interrupt for the CTS input (RTS in FSL speech). Its handler
> calls uart_handle_cts_change(), so we shouldn't do this in
> imx_uart_mctrl_check() again.
> =

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/tty/serial/imx.c | 6 ------
>  1 file changed, 6 deletions(-)
> =

> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
> index a5e80a028e83..0419a084c0ed 100644
> --- a/drivers/tty/serial/imx.c
> +++ b/drivers/tty/serial/imx.c
> @@ -805,12 +805,8 @@ static void imx_uart_clear_rx_errors(struct imx_port=
 *sport);
>  static unsigned int imx_uart_get_hwmctrl(struct imx_port *sport)
>  {
>  	unsigned int tmp =3D TIOCM_DSR;
> -	unsigned usr1 =3D imx_uart_readl(sport, USR1);
>  	unsigned usr2 =3D imx_uart_readl(sport, USR2);
>  =

> -	if (usr1 & USR1_RTSS)
> -		tmp |=3D TIOCM_CTS;
> -
>  	/* in DCE mode DCDIN is always 0 */
>  	if (!(usr2 & USR2_DCDIN))
>  		tmp |=3D TIOCM_CAR;

Is this hunk supposed to be included in this patch? I think it's wrong.

> @@ -843,8 +839,6 @@ static void imx_uart_mctrl_check(struct imx_port *spo=
rt)
>  		sport->port.icount.dsr++;
>  	if (changed & TIOCM_CAR)
>  		uart_handle_dcd_change(&sport->port, status & TIOCM_CAR);
> -	if (changed & TIOCM_CTS)
> -		uart_handle_cts_change(&sport->port, status & TIOCM_CTS);

This doesn't hurt, does it? Also imx_uart_mctrl_check is called from
imx_uart_timeout which is supposed to catch missed interrupts and in
this case uart_handle_cts_change() must be called.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
