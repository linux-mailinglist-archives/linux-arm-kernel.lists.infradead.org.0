Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6197FE390
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 15:19:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wKege/kmdjKgeLl2tDUlt5EemP3sMCcjVuxzgMJjpKk=; b=u0MIilc070xTKe
	BWoX+YPqdFQsTWyOZf+R3rSTGk0OZyPlEeD68y90AyqQgJSQIwTfDCMTr6LDPEbP4NL84XnTmR4bl
	H0MlqhkcWKKOSYY93REx0R1qckkS/0ngxrW259X6sxZyX1IgoFcOzkyXOa8BC65gV9EYuHqSRX3mB
	vYjqv6dngVWPP9GdFObU0QKFKXGRH0MfIZVWwtfkpsgXE5vNF2cwyzYVMKg3ngTeVfKylZLklfR4b
	gYZ04+JrfWK8XBYq2jNbmLiVhcmtbxRKudibIOdAycI9x8UquB98hZ68KeAJXtOMKhaeJpljX5vAO
	he3AwA2DaV20qkh2PgpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL6Bl-0007Px-Ry; Mon, 29 Apr 2019 13:19:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL6Bd-0007PY-Ul
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 13:19:15 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hL6BZ-0008Nm-Kv; Mon, 29 Apr 2019 15:19:09 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hL6BX-0008Ne-87; Mon, 29 Apr 2019 15:19:07 +0200
Date: Mon, 29 Apr 2019 15:19:07 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v3 08/16] watchdog: imx_sc_wdt: drop warning after
 calling watchdog_init_timeout
Message-ID: <20190429131907.xpl6duf4cvtwbmud@pengutronix.de>
References: <20190419181601.7412-1-wsa+renesas@sang-engineering.com>
 <20190419181601.7412-9-wsa+renesas@sang-engineering.com>
 <20190429101558.6vyiospb6oqsstt7@pengutronix.de>
 <616a9d4e-7050-a6c2-727d-f62e08d3d98c@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <616a9d4e-7050-a6c2-727d-f62e08d3d98c@roeck-us.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_061914_177252_ECD8D475 
X-CRM114-Status: GOOD (  21.39  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-watchdog@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Mon, Apr 29, 2019 at 05:37:12AM -0700, Guenter Roeck wrote:
> On 4/29/19 3:15 AM, Uwe Kleine-K=F6nig wrote:
> > On Fri, Apr 19, 2019 at 08:15:53PM +0200, Wolfram Sang wrote:
> > > The core will print out details now.
> > > =

> > > Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> > > Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> > > ---
> > >   drivers/watchdog/imx_sc_wdt.c | 5 +----
> > >   1 file changed, 1 insertion(+), 4 deletions(-)
> > > =

> > > diff --git a/drivers/watchdog/imx_sc_wdt.c b/drivers/watchdog/imx_sc_=
wdt.c
> > > index 86c2722f2a09..6dc24ceb1b2c 100644
> > > --- a/drivers/watchdog/imx_sc_wdt.c
> > > +++ b/drivers/watchdog/imx_sc_wdt.c
> > =

> > This driver isn't in next, and I don't know where to look for it.
> > =

> =

> Branch watchdog-next of
> git://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git

Thanks, found it now.
 =

> > > @@ -117,10 +117,7 @@ static int imx_sc_wdt_probe(struct platform_devi=
ce *pdev)
> > >   	imx_sc_wdd->parent =3D &pdev->dev;
> > >   	imx_sc_wdd->timeout =3D DEFAULT_TIMEOUT;
> > > -	ret =3D watchdog_init_timeout(imx_sc_wdd, 0, &pdev->dev);
> > > -	if (ret)
> > > -		dev_warn(&pdev->dev, "Failed to set timeout value, using default\n=
");
> > > -
> > > +	watchdog_init_timeout(imx_sc_wdd, 0, &pdev->dev);
> > =

> > One side effect is however that ret isn't set any more. So I wonder if a
> > failure in watchdog_init_timeout() really makes the core print the
> > details as expected.
> > =

> =

> Sorry, I don't understand. The warning is printed in watchdog_init_timeou=
t().
> What does that have to do with setting ret here or not ?

Ah, I thought the warning is done in the caller of the modified
function. Maybe this means the commit log can be improved to for
example:

	The function watchdog_init_timeout() itself already emits a
	more informative warning on failure. So drop the driver specific
	one.

Otherwise my concerns are eliminated.

Thanks
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
