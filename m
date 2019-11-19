Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D2D1027A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 16:06:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wE4cEFukrEGmB/c3Z2X0ox2O0O1OeUWba0MSCmWUv2c=; b=s8hhxi/vRYr7Eq
	rRhUeK/CpH8W/KGxE1BZJEY4rkwk5mtRY+8ydATv4qtfcT6Umg6qTZHTgPDqsO3h9IqNckSorUShc
	095y9C9j6GBzFepm6omu3jXdJ9DcVax5vtOrIfTEg5KQHhFmixV775bHlf1gehHywva5gBMPv84D8
	tr15v4b0kOq9zut4QpENowKRA/hOOaaHa629oP/TmuJLsl5wjDNF6qHWaVaBw59ebZo/ziN05MuLs
	v/BklizogkornBJGQ4EapBFRjE70nl6eKCRd/3H2ww1uK+UPpGCPlhxodG+hWbzpl8VsY2GU/hOVA
	Zy9VBfe/t1k4CSWr/opg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX55e-0000zK-As; Tue, 19 Nov 2019 15:06:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX55V-0000y4-Qz
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 15:06:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iX55Q-0006wS-F5; Tue, 19 Nov 2019 16:06:36 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iX55P-0000cZ-Us; Tue, 19 Nov 2019 16:06:35 +0100
Date: Tue, 19 Nov 2019 16:06:35 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] clk: imx8m: Suppress bind attrs
Message-ID: <20191119150635.seuwmnhndo46sz3j@pengutronix.de>
References: <9f2ac65bab203a943de947465d6534980585e144.1574116045.git.leonard.crestez@nxp.com>
 <20191119070937.bcvezx5mwkqqymfo@pengutronix.de>
 <VI1PR04MB7023B7A97632610366549CA9EE4C0@VI1PR04MB7023.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB7023B7A97632610366549CA9EE4C0@VI1PR04MB7023.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_070641_873419_200FA559 
X-CRM114-Status: GOOD (  19.72  )
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 02:23:08PM +0000, Leonard Crestez wrote:
> On 2019-11-19 9:09 AM, Uwe Kleine-K=F6nig wrote:
> > On Tue, Nov 19, 2019 at 12:28:16AM +0200, Leonard Crestez wrote:
> >> The clock drivers on imx8m series are registered as platform devices a=
nd
> >> this opens the possibility of reloading the driver at runtime:
> >>
> >> This doesn't actually work: clocks are never removed and attempting to
> >> bind again results in registration errors and a crash.
> >>
> >> Fix this by explicitly suppressing bind attrs like several other
> >> drivers.
> >>
> >> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> >>
> >> ---
> >> No cc: stable because because there are likely many other opportunities
> >> to crash the system by echoing random stuff in sysfs as root.
> >>
> >>   drivers/clk/imx/clk-imx8mm.c | 1 +
> >>   drivers/clk/imx/clk-imx8mn.c | 1 +
> >>   drivers/clk/imx/clk-imx8mq.c | 1 +
> >>   3 files changed, 3 insertions(+)
> >>
> >> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm=
.c
> >> index 9246e89bb5fd..3cb75ad4270d 100644
> >> --- a/drivers/clk/imx/clk-imx8mm.c
> >> +++ b/drivers/clk/imx/clk-imx8mm.c
> >> @@ -619,9 +619,10 @@ MODULE_DEVICE_TABLE(of, imx8mm_clk_of_match);
> >>   =

> >>   static struct platform_driver imx8mm_clk_driver =3D {
> >>   	.probe =3D imx8mm_clocks_probe,
> >>   	.driver =3D {
> >>   		.name =3D "imx8mm-ccm",
> >> +		.suppress_bind_attrs =3D true,
> > =

> > Maybe add a comment similar to the motivation in the commit log here?
> > (And of course in the other files, too.)
> =

> Is it really useful to say "disable feature X because it doesn't work" =

> right before disabling the feature?

No, but something like:

	/*
	 * disable bind attributes because clocks are never removed and
	 * attempting to rebind results in errors and a crash.
	 */

would be helpful. This way someone wondering about why this is disabled
gets at least an idea what to look for when changing something in that
area or while using the imx driver as a template for the next clock
driver.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
