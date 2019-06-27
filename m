Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3163657D93
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 09:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gybwOPl9vq197AUrTvmuuPqsFkGbN9wwzY6rw0fnbmI=; b=qxngXogl2XFUwm
	RXlM8p0R+eB5UH4amtiRiHmc0+wWCMTEGnH0bm/nFwCHVRD/4ic8LwGppgXy9whbx1x2TFtvKJrN3
	pXVuzYKqqxSZ0U0IUABTqU1cz7jCnYwIZZIQG3I8NhoLVtIotmvlt9N8TW9e7xYbhupMuV2EK4ZyF
	zTLpJUL6cI5Q23N/RLueGn3nJJ7ckzRWb5hqNtLMYURj9BMEdfjzNZ/L9PphtHaUWksN+R8RchOrP
	nGDMm6NjUD+qivt7dYUoylWkhebvlHYnmcDwlIVNPM+SGstQNPd/BsxWzyUpBje3G/wXInhCfhNhl
	SX5isifORHMatjpllAEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgPK0-0004V9-Ho; Thu, 27 Jun 2019 07:59:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgPJj-0004Tj-8J
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 07:59:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hgPJd-0004tB-IH; Thu, 27 Jun 2019 09:59:33 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hgPJd-0002eO-0L; Thu, 27 Jun 2019 09:59:33 +0200
Date: Thu, 27 Jun 2019 09:59:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 1/2] serial: imx: remove duplicate handling of CTS change
Message-ID: <20190627075932.4bs7dckal4np7u6n@pengutronix.de>
References: <20190626101557.26299-1-s.hauer@pengutronix.de>
 <20190626101557.26299-2-s.hauer@pengutronix.de>
 <20190627061607.4ehhr6jj6vkfjorl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627061607.4ehhr6jj6vkfjorl@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:51:50 up 40 days, 14:10, 92 users,  load average: 0.08, 0.10, 0.16
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_005941_797097_8DA71F51 
X-CRM114-Status: GOOD (  18.67  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 08:16:07AM +0200, Uwe Kleine-K=F6nig wrote:
> On Wed, Jun 26, 2019 at 12:15:56PM +0200, Sascha Hauer wrote:
> > We have an interrupt for the CTS input (RTS in FSL speech). Its handler
> > calls uart_handle_cts_change(), so we shouldn't do this in
> > imx_uart_mctrl_check() again.
> > =

> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/tty/serial/imx.c | 6 ------
> >  1 file changed, 6 deletions(-)
> > =

> > diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
> > index a5e80a028e83..0419a084c0ed 100644
> > --- a/drivers/tty/serial/imx.c
> > +++ b/drivers/tty/serial/imx.c
> > @@ -805,12 +805,8 @@ static void imx_uart_clear_rx_errors(struct imx_po=
rt *sport);
> >  static unsigned int imx_uart_get_hwmctrl(struct imx_port *sport)
> >  {
> >  	unsigned int tmp =3D TIOCM_DSR;
> > -	unsigned usr1 =3D imx_uart_readl(sport, USR1);
> >  	unsigned usr2 =3D imx_uart_readl(sport, USR2);
> >  =

> > -	if (usr1 & USR1_RTSS)
> > -		tmp |=3D TIOCM_CTS;
> > -
> >  	/* in DCE mode DCDIN is always 0 */
> >  	if (!(usr2 & USR2_DCDIN))
> >  		tmp |=3D TIOCM_CAR;
> =

> Is this hunk supposed to be included in this patch? I think it's wrong.

The rationale was that when we do not evaluate the TIOCM_CTS anymore in
the return value of imx_uart_get_hwmctrl() then there's no point in
setting it in the first place. However, imx_uart_get_hwmctrl() also has
another user which needs the flag, so right, this hunk shouldn't be
here.

> =

> > @@ -843,8 +839,6 @@ static void imx_uart_mctrl_check(struct imx_port *s=
port)
> >  		sport->port.icount.dsr++;
> >  	if (changed & TIOCM_CAR)
> >  		uart_handle_dcd_change(&sport->port, status & TIOCM_CAR);
> > -	if (changed & TIOCM_CTS)
> > -		uart_handle_cts_change(&sport->port, status & TIOCM_CTS);
> =

> This doesn't hurt, does it?

With this patch the number of CTS changes is correctly counted, I have
verified this with a logic analyzer. Without it port->icount.cts has 978
changes when it should be only 968 changes.

> Also imx_uart_mctrl_check is called from
> imx_uart_timeout which is supposed to catch missed interrupts and in
> this case uart_handle_cts_change() must be called.

Beginning with 2/2 uart_handle_cts_change() is needed for nothing else
but statistic counting. There won't be any timeout due to missed
interrupts as the hardware handles CTS itself.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
