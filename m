Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 728D0D0814
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 09:14:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGFyE4cI/6BYDNFlHDQ4c8rWg+2ke2NFK12QyFQgNTg=; b=A6niqEb1gvfbWu
	pzZ40XQpApdf001033sw8A+gWOEipHeKoragQfZroYWQJCiqIN+2e3e0OBE6/P9mYiRzWbTnX/r+7
	8PSItlQJKHDv/SwNDZ6yI0GF/cfP/gyj0qZ/H8e6UyC7Rjd9v6QhObhHc1vKxLJhy8kX3HJAV940k
	AviUrucmcE3gzMzR2Jappu0NWd4DS7rJjhyrJLjtX2tmJq8Iz1lQ8r/tuXA5CYz0dJRZbvYzI/4PD
	1lxaRfeX/Leg6KMwCI9TDRBqapU3vo738tKMCZb6eW+VkdDs0Puz2m9dIWn2EGWRAHvmGCHJMP6/R
	sjNDg+Y8+CK/+FCBISYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6Ar-0003Sw-8Y; Wed, 09 Oct 2019 07:14:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6Ak-0003SQ-At
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 07:14:11 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iI6Ag-0000w8-A7; Wed, 09 Oct 2019 09:14:06 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iI6Ad-0003la-A9; Wed, 09 Oct 2019 09:14:03 +0200
Date: Wed, 9 Oct 2019 09:14:03 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] tty: serial: imx: Only get second/third IRQ when there
 is more than one IRQ
Message-ID: <20191009071403.ugd2wuac6ue5zsd6@pengutronix.de>
References: <1570601911-9162-1-git-send-email-Anson.Huang@nxp.com>
 <20191009065315.wgdvmkv6skteyul4@pengutronix.de>
 <DB3PR0402MB39165F9CE876772F8F94F187F5950@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB39165F9CE876772F8F94F187F5950@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_001410_374606_85FCCBB3 
X-CRM114-Status: GOOD (  25.01  )
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Wed, Oct 09, 2019 at 06:58:24AM +0000, Anson Huang wrote:
> > On Wed, Oct 09, 2019 at 02:18:31PM +0800, Anson Huang wrote:
> > > All i.MX SoCs except i.MX1 have ONLY 1 IRQ, so it is better to check
> > > the IRQ count before getting second/third IRQ to avoid below error
> > > message during probe:
> > >
> > > [    0.726219] imx-uart 30860000.serial: IRQ index 1 not found
> > > [    0.731329] imx-uart 30860000.serial: IRQ index 2 not found
> > =

> > This message was introduced in commit
> > 7723f4c5ecdb8d832f049f8483beb0d1081cedf6 for 5.4-rc1. I added the
> > involved people to the recipents of this mail.
> =

> Yes, I noticed this, thanks.
> =

> > =

> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > >  drivers/tty/serial/imx.c | 13 +++++++++++--
> > >  1 file changed, 11 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c index
> > > 504d81c..081fa82 100644
> > > --- a/drivers/tty/serial/imx.c
> > > +++ b/drivers/tty/serial/imx.c
> > > @@ -2198,6 +2198,7 @@ static int imx_uart_probe(struct platform_device
> > *pdev)
> > >  	u32 ucr1;
> > >  	struct resource *res;
> > >  	int txirq, rxirq, rtsirq;
> > > +	int irq_count;
> > >
> > >  	sport =3D devm_kzalloc(&pdev->dev, sizeof(*sport), GFP_KERNEL);
> > >  	if (!sport)
> > > @@ -2220,9 +2221,17 @@ static int imx_uart_probe(struct
> > platform_device *pdev)
> > >  	if (IS_ERR(base))
> > >  		return PTR_ERR(base);
> > >
> > > +	irq_count =3D platform_irq_count(pdev);
> > > +	if (irq_count < 0)
> > > +		return irq_count;
> > > +
> > >  	rxirq =3D platform_get_irq(pdev, 0);
> > > -	txirq =3D platform_get_irq(pdev, 1);
> > > -	rtsirq =3D platform_get_irq(pdev, 2);
> > > +	if (irq_count > 1) {
> > > +		txirq =3D platform_get_irq(pdev, 1);
> > > +		rtsirq =3D platform_get_irq(pdev, 2);
> > > +	} else {
> > > +		txirq =3D rtsirq =3D -ENXIO;
> > > +	}
> > =

> > The patch is fine given the changed behaviour of platform_get_irq. I wo=
nder
> > if it is sensible to introduce a variant of platform_get_irq (say
> > platform_get_irq_nowarn) that behaves like __platform_get_irq does t
> > Then the imx driver would just call platform_get_irq_nowarn without hav=
ing
> > to check the number of available irqs first.
> =

> Agreed, it would be nice if we can fix this from the API level, this
> is to save many patches from various drivers side, let me know if
> agreement is reached and I will do the patch.

I wouldn't expect that most callers actually want an error message and
so these need a different patch (i.e. dropping the error message by the
caller). This type of patch is fine and the normal load when something
is consolidated.

Which other drivers do you have on your radar that don't want an error
message if platform_get_irq() fails?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
