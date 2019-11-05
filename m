Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 432C0EF5E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 08:01:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2Q90C7ISH/P5WrAzGNSPaH+3m/W3YxXWn18HwFvaU4=; b=bf0h0poprZPP2S
	pGG39hN+B8jBjV7iheAvMhjuXjaKQ93PRCHynGw5cQR3NLHKmBFERsEQjuajfy1OMQ77RqFMO1pSl
	lXxeLYxwDooIN5Q2U9e64N5mOrMtvquDbd9hfoIwL0/klnfN3gU7BBuOd/DEmphacxpdqOWX52sa8
	HFJvtoI9m1GNu0Rl4mfqB22rDgqhVpqCgFq1Q9hosYYG9+EyJB2v+MN1lH36K4ND01dCF7c6rO8d1
	HstxnNIexOHsT+MRCgfGbvgA7CojBYfYJA9zaVYSNjr6pRDL00l1vfKnACDa4IhOUkiHUO7Otwvkn
	nK5pFo59gs0e6ewUqmvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRsqW-0000D7-OJ; Tue, 05 Nov 2019 07:01:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRsqP-0000Cf-DB
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 07:01:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1iRsqI-00057P-4n; Tue, 05 Nov 2019 08:01:30 +0100
Received: from pza by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <pza@pengutronix.de>)
 id 1iRsqG-0008UW-VW; Tue, 05 Nov 2019 08:01:28 +0100
Date: Tue, 5 Nov 2019 08:01:28 +0100
From: Philipp Zabel <pza@pengutronix.de>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2 2/7] pwm: sun4i: Add an optional probe for reset line
Message-ID: <20191105070128.ve73ha5ibiymcxnx@pengutronix.de>
References: <20191103203334.10539-1-peron.clem@gmail.com>
 <20191103203334.10539-3-peron.clem@gmail.com>
 <20191104081157.373v22atswsaktbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104081157.373v22atswsaktbe@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:50:49 up 120 days, 13:01, 112 users,  load average: 0.25, 0.17,
 0.11
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: pza@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_230137_445951_4794179A 
X-CRM114-Status: GOOD (  23.78  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 09:11:57AM +0100, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> adding Philipp Zabel (=3D reset controller maintainer) to Cc: and so I'm
> not stripping the uncommented parts of the patch.
> =

> On Sun, Nov 03, 2019 at 09:33:29PM +0100, Cl=E9ment P=E9ron wrote:
> > From: Jernej Skrabec <jernej.skrabec@siol.net>
> > =

> > H6 PWM core needs deasserted reset line in order to work.
> > =

> > Add an optional probe for it.
> > =

> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> > ---
> >  drivers/pwm/pwm-sun4i.c | 32 ++++++++++++++++++++++++++++++--
> >  1 file changed, 30 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> > index 6f5840a1a82d..d194b8ebdb00 100644
> > --- a/drivers/pwm/pwm-sun4i.c
> > +++ b/drivers/pwm/pwm-sun4i.c
> > @@ -16,6 +16,7 @@
> >  #include <linux/of_device.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/pwm.h>
> > +#include <linux/reset.h>
> >  #include <linux/slab.h>
> >  #include <linux/spinlock.h>
> >  #include <linux/time.h>
> > @@ -78,6 +79,7 @@ struct sun4i_pwm_data {
> >  struct sun4i_pwm_chip {
> >  	struct pwm_chip chip;
> >  	struct clk *clk;
> > +	struct reset_control *rst;
> >  	void __iomem *base;
> >  	spinlock_t ctrl_lock;
> >  	const struct sun4i_pwm_data *data;
> > @@ -365,6 +367,20 @@ static int sun4i_pwm_probe(struct platform_device =
*pdev)
> >  	if (IS_ERR(pwm->clk))
> >  		return PTR_ERR(pwm->clk);
> >  =

> > +	pwm->rst =3D devm_reset_control_get_optional(&pdev->dev, NULL);
> > +	if (IS_ERR(pwm->rst)) {
> > +		if (PTR_ERR(pwm->rst) =3D=3D -EPROBE_DEFER)
> > +			return PTR_ERR(pwm->rst);
> > +		dev_info(&pdev->dev, "no reset control found\n");
> =

> I would degrade this to a dev_dbg. Otherwise this spams the log for all
> unaffected machines.

The _optional variants return NULL if the reset is not specified in the
device tree, so this is not "no reset control found", but a real error
that should be returned.

> devm_reset_control_get_optional() is defined in a section that has a
> comment "These inline function calls will be removed once all
> consumers have been moved over to the new explicit API.", so I guess
> you want devm_reset_control_get_optional_exclusive or even
> devm_reset_control_get_optional_shared here.

Correct. If this driver deasserts in probe() and asserts the reset in
remove(), this can use the refcounting _shared variant.

> @Philipp: maybe a check in checkpatch that warns about introduction of
> such new instances would be good?!

Yes, that would be helpful.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
