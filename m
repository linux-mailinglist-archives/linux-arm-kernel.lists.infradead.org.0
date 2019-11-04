Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F27A8EE942
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 21:11:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Wmjl0RQiyo/C5aNZkgYtaqXkQkNUPH3Bp0SFzzNjmQ=; b=JGtR+i6n8vWR+p
	TtPPxFUIGiCqVkLkSaOyTvTfRoqu9rLq2HDobrreOCwXL+Maix29ZFtmE8aBIbywE0mH0Rmsh7Usw
	B7WA1Sz5bdLXgTqytDGNSbkRdeUfpkl/+iq9gciveEWiPAOh5QCi841XKWu0t9xdVskT5OOE+5Vu/
	U7U79QdaiKzEIMZteEhuk++m6QoUYRbQj424mFPhqHjXBpEO/o/kVBWGaMDVSWfdFUpJ/i/99ee/X
	datjhnlHIs3scIbK22v/KNbxuyUKtL6+XT4M0Wih7aP2Z6RYU7ysCr/KNPvfJVVl8w2sVMQ3kCMtE
	dggXyUYLzqgaWxjbnCvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRigt-0001vO-RU; Mon, 04 Nov 2019 20:11:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRigl-0001un-Eq
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 20:11:01 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iRigg-0002wy-8Q; Mon, 04 Nov 2019 21:10:54 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iRige-0006VB-Jc; Mon, 04 Nov 2019 21:10:52 +0100
Date: Mon, 4 Nov 2019 21:10:52 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 3/7] pwm: sun4i: Add an optional probe for bus clock
Message-ID: <20191104201052.bxzdues2y4aqkukd@pengutronix.de>
References: <20191103203334.10539-1-peron.clem@gmail.com>
 <20191103203334.10539-4-peron.clem@gmail.com>
 <20191104082410.qdgcnphkamlzaipf@pengutronix.de>
 <CAJiuCcdxHDwoQYBsrjK5dcOtMDie62DzJ84NH+bZzYHHv49fEQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJiuCcdxHDwoQYBsrjK5dcOtMDie62DzJ84NH+bZzYHHv49fEQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_121059_497512_36F189B6 
X-CRM114-Status: GOOD (  33.51  )
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
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Cl=E9ment,

On Mon, Nov 04, 2019 at 07:07:00PM +0100, Cl=E9ment P=E9ron wrote:
> On Mon, 4 Nov 2019 at 09:24, Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> > On Sun, Nov 03, 2019 at 09:33:30PM +0100, Cl=E9ment P=E9ron wrote:
> > > From: Jernej Skrabec <jernej.skrabec@siol.net>
> > >
> > > H6 PWM core needs bus clock to be enabled in order to work.
> > >
> > > Add an optional probe for it and a fallback for previous
> > > bindings without name on module clock.
> > >
> > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> > > ---
> > >  drivers/pwm/pwm-sun4i.c | 36 ++++++++++++++++++++++++++++++++++++
> > >  1 file changed, 36 insertions(+)
> > >
> > > diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> > > index d194b8ebdb00..b5e7ac364f59 100644
> > > --- a/drivers/pwm/pwm-sun4i.c
> > > +++ b/drivers/pwm/pwm-sun4i.c
> > > @@ -78,6 +78,7 @@ struct sun4i_pwm_data {
> > >
> > >  struct sun4i_pwm_chip {
> > >       struct pwm_chip chip;
> > > +     struct clk *bus_clk;
> > >       struct clk *clk;
> > >       struct reset_control *rst;
> > >       void __iomem *base;
> > > @@ -367,6 +368,31 @@ static int sun4i_pwm_probe(struct platform_devic=
e *pdev)
> >
> > Adding more context here:
> >
> > |       pwm->clk =3D devm_clk_get(&pdev->dev, NULL);
> > >       if (IS_ERR(pwm->clk))
> > >               return PTR_ERR(pwm->clk);
> > >
> > > +     /* Get all clocks and reset line */
> > > +     pwm->clk =3D devm_clk_get_optional(&pdev->dev, "mod");
> > > +     if (IS_ERR(pwm->clk)) {
> > > +             dev_err(&pdev->dev, "get clock failed %ld\n",
> > > +                     PTR_ERR(pwm->clk));
> > > +             return PTR_ERR(pwm->clk);
> > > +     }
> >
> > I guess you want to drop the first assignment to pwm->clk.
> =

> devm_clk_get_optional will return NULL if there is no entry, I don't
> get where I need to drop it assignment.

With your patch the code looks as follows:

	pwm->clk =3D devm_clk_get(&pdev->dev, NULL);
	if (IS_ERR(pwm->clk))
		return PTR_ERR(pwm->clk);

	/* Get all clocks and reset line */
	pwm->clk =3D devm_clk_get_optional(&pdev->dev, "mod");
	...

The assignment to pwm->clk above the comment is the one I suggested to
drop.

> > > +     /* Fallback for old dtbs with a single clock and no name */
> > > +     if (!pwm->clk) {
> > > +             pwm->clk =3D devm_clk_get(&pdev->dev, NULL);
> > > +             if (IS_ERR(pwm->clk)) {
> > > +                     dev_err(&pdev->dev, "get clock failed %ld\n",
> > > +                             PTR_ERR(pwm->clk));
> > > +                     return PTR_ERR(pwm->clk);
> > > +             }
> > > +     }
> >
> > There is a slight change of behaviour if I'm not mistaken. If you have
> > this:
> >
> >         clocks =3D <&clk1>;
> >         clock-names =3D "mod";
> >
> >         pwm {
> >                 compatible =3D "allwinner,sun4i-a10-pwm"
> >                 clocks =3D <&clk2>;
> >         }
> >
> > you now use clk1 instead of clk2 before.
> >
> > Assuming this is only a theoretical problem, at least pointing this out
> > in the commit log would be good I think.
> =

> Yes it's correct and as you said the driver don't check for a correct
> device tree, that why it's now optional probe.
> Let's assume that's the device-tree is correct, I will add a comment
> in the commit log.

If the mod clock was shared by all peripherals on the bus this would be
IMHO quite elegant. Probably it depends on what you mean by saying
"incorrect" if this snippet is incorrect. (It can be part of a valid dtb
that even complies to the binding documentation. However that's not how
any existing allwinner hardware looks like.) But let's stop arguing as
we agree it's a corner case and if you mention it in the commit log
we're both happy.

> > What is that clock used for? Is it required to access the hardware
> > registers? Or is it only required while the PWM is enabled? If so you
> > could enable the clock more finegrainded.
> =

> Regarding the datasheet it's required to access the hardware.
> page 261 : https://linux-sunxi.org/File:Allwinner_H6_V200_User_Manual_V1.=
1.pdf

So enabling the bus clock is called "open APB1 Bus gating" in that
manual? If I understand that correctly the bus clock then only need to
be on while accessing the registers and could be disabled once the
hardware is programmed and running.

Can you please describe that in a comment. Something like:

	/*
	 * We're keeping the bus clock on for the sake of simplicity.
	 * Actually it only needs to be on for hardware register
	 * accesses.
	 */
	 =

should be fine. This way it's at least obvious that the handling could
be improved.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
