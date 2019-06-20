Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D6C4CB0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 11:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbut4wTerKRw/4rG/w/Y2jDOIbU3juCNa9TmI7/6Kao=; b=JoQnZrXTSnFovT
	xOqtlhHINIerB9Sqbj9QQKw4ZVnKAU5eSlj0/QxgIvPmk2bwqSF+mRK6SOeVkTMFWSdlFZgQJNCwH
	/R2S80p2o/K5KcCRGlu1wbnHyV3FK4D8kt0hIny/83FCN8R804xN5Jk7cLpEqVhS6DHkp1+MChd9W
	962C6oNBlH5Rv7F4UaU3LKFrrDurOj1Ei0KIfn3qevWFlcpcKqnC9Uq6XuqIrAVmW/PaXRZ69T3ba
	oMmNOeGG/jEz0hlj+j2hn089jIu66QpPf3Zl4+GIRtLNsdNpcfPFoiR4n8BvsDdtA0VqZU0iLHMo2
	ECcj/eztYoMpUs51QmqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtW7-0001Hl-A6; Thu, 20 Jun 2019 09:38:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtVr-0001HN-Dj
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 09:37:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hdtVm-0000y0-PQ; Thu, 20 Jun 2019 11:37:42 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hdtVl-0006tP-6J; Thu, 20 Jun 2019 11:37:41 +0200
Date: Thu, 20 Jun 2019 11:37:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Sergey Organov <sorganov@gmail.com>
Subject: Re: [PATCH RFC 4/7] serial: imx: set_termios(): do not enable
 autoRTS if RTS is unset
Message-ID: <20190620093741.7wom6a475be2byob@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1560514294-29111-1-git-send-email-sorganov@gmail.com>
 <1560514294-29111-5-git-send-email-sorganov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560514294-29111-5-git-send-email-sorganov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:26:57 up 33 days, 15:45, 91 users,  load average: 0.07, 0.10, 0.12
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_023747_464323_5CEE1C40 
X-CRM114-Status: GOOD (  17.61  )
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
Cc: linux-arm-kernel@lists.infradead.org,
 Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sergey,

On Fri, Jun 14, 2019 at 03:11:31PM +0300, Sergey Organov wrote:
> set_termios() shouldn't set UCR2_CTSC bit if UCR2_CTS (=TIOCM_RTS) is
> cleared. Added corresponding check in imx_uart_rts_auto() to fix this.
> 
> Signed-off-by: Sergey Organov <sorganov@gmail.com>
> ---
>  drivers/tty/serial/imx.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
> index 17e2322..8ee910f 100644
> --- a/drivers/tty/serial/imx.c
> +++ b/drivers/tty/serial/imx.c
> @@ -405,7 +405,8 @@ static void imx_uart_rts_inactive(struct imx_port *sport, u32 *ucr2)
>  /* called with port.lock taken and irqs caller dependent */
>  static void imx_uart_rts_auto(struct imx_port *sport, u32 *ucr2)
>  {
> -	*ucr2 |= UCR2_CTSC;
> +	if (*ucr2 & UCR2_CTS)
> +		*ucr2 |= UCR2_CTSC;
>  }

*ucr2 is set like this in imx_uart_set_termios():

	ucr2 = UCR2_SRST | UCR2_IRTS;
	if ((termios->c_cflag & CSIZE) == CS8)
		ucr2 |= UCR2_WS;
	...
	imx_uart_rts_auto(sport, &ucr2);

So the UCR2_CTS bit is never set, hence UCR2_CTSC will never be set.
You meant to pass in the actual register value of the UCR2 register.

This is shifted around a bit in the following patches, as an end result
we have:

	old_ucr2 = imx_uart_readl(sport, UCR2);
	ucr2 = old_ucr2 & (UCR2_TXEN | UCR2_RXEN | UCR2_ATEN | UCR2_CTSC);
	...
	if (ucr2 & UCR2_CTS)
		ucr2 |= UCR2_CTSC;

Again the test can never be true, it should probably be if (old_ucr2 &
UCR2_CTS).

With this issue and the one Lothar has found fixed this series works for
me.

With these issues fixed I'd be happy to test this series and apply it in
favour of my patch.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
