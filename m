Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43053EE956
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 21:19:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGWWaFL06+ZKm8GzJ+YOF7Y+hJS/EGy/LhBSFj1I19w=; b=dtp60alPvmLAa0
	1L1lwtwk+iH9or7vW9/f7FUYKSNsoPBPb9oj6u1DXH5QS+v4C0G+d1dDvSqeB0I5Y4tvj4ovnlPCC
	N7TkqG+9eG3OgIrLm5O4UU9khZrS9y0Yhcq5OvbDQBcdX5wSBCzVGaWXvF5nURF4Pv0cpJruZsa4F
	slRoZ2Vu5P9RVG8QDIC3w7Je4MwfL0PNmTXZXoy/mKav4fzOpQ/pKx8gf59FeHcFUhCUl7ks3tueg
	EYTZ2MUcib2T4GsiBRBrs0+5Nq9Bl8mh/kWD2D0edtq26NsfSNQGza6XoJatNRJtvfp6DaYHX3Yyr
	6RVZnZFKY4hqpqmvzjmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRipJ-0003k2-D7; Mon, 04 Nov 2019 20:19:49 +0000
Received: from mailoutvs29.siol.net ([185.57.226.220] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRipA-0003is-46
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 20:19:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id A7EC9525541;
 Mon,  4 Nov 2019 21:19:32 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id tO4CuHS1HBRB; Mon,  4 Nov 2019 21:19:32 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 1D1B552554F;
 Mon,  4 Nov 2019 21:19:32 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-86-58-102-7.static.triera.net
 [86.58.102.7]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id 9425D52552D;
 Mon,  4 Nov 2019 21:19:31 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2 3/7] pwm: sun4i: Add an optional probe for bus clock
Date: Mon, 04 Nov 2019 21:19:31 +0100
Message-ID: <524459750.Kvg9uK5Sr7@jernej-laptop>
In-Reply-To: <20191104201052.bxzdues2y4aqkukd@pengutronix.de>
References: <20191103203334.10539-1-peron.clem@gmail.com>
 <CAJiuCcdxHDwoQYBsrjK5dcOtMDie62DzJ84NH+bZzYHHv49fEQ@mail.gmail.com>
 <20191104201052.bxzdues2y4aqkukd@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_121940_488090_F33A40F6 
X-CRM114-Status: GOOD (  35.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.220 listed in list.dnswl.org]
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
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 =?ISO-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne ponedeljek, 04. november 2019 ob 21:10:52 CET je Uwe Kleine-K=F6nig =

napisal(a):
> Hello Cl=E9ment,
> =

> On Mon, Nov 04, 2019 at 07:07:00PM +0100, Cl=E9ment P=E9ron wrote:
> > On Mon, 4 Nov 2019 at 09:24, Uwe Kleine-K=F6nig
> > =

> > <u.kleine-koenig@pengutronix.de> wrote:
> > > On Sun, Nov 03, 2019 at 09:33:30PM +0100, Cl=E9ment P=E9ron wrote:
> > > > From: Jernej Skrabec <jernej.skrabec@siol.net>
> > > > =

> > > > H6 PWM core needs bus clock to be enabled in order to work.
> > > > =

> > > > Add an optional probe for it and a fallback for previous
> > > > bindings without name on module clock.
> > > > =

> > > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > > Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> > > > ---
> > > > =

> > > >  drivers/pwm/pwm-sun4i.c | 36 ++++++++++++++++++++++++++++++++++++
> > > >  1 file changed, 36 insertions(+)
> > > > =

> > > > diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> > > > index d194b8ebdb00..b5e7ac364f59 100644
> > > > --- a/drivers/pwm/pwm-sun4i.c
> > > > +++ b/drivers/pwm/pwm-sun4i.c
> > > > @@ -78,6 +78,7 @@ struct sun4i_pwm_data {
> > > > =

> > > >  struct sun4i_pwm_chip {
> > > >  =

> > > >       struct pwm_chip chip;
> > > > =

> > > > +     struct clk *bus_clk;
> > > > =

> > > >       struct clk *clk;
> > > >       struct reset_control *rst;
> > > >       void __iomem *base;
> > > > =

> > > > @@ -367,6 +368,31 @@ static int sun4i_pwm_probe(struct platform_dev=
ice
> > > > *pdev)> > =

> > > Adding more context here:
> > > |       pwm->clk =3D devm_clk_get(&pdev->dev, NULL);
> > > |       =

> > > >       if (IS_ERR(pwm->clk))
> > > >       =

> > > >               return PTR_ERR(pwm->clk);
> > > > =

> > > > +     /* Get all clocks and reset line */
> > > > +     pwm->clk =3D devm_clk_get_optional(&pdev->dev, "mod");
> > > > +     if (IS_ERR(pwm->clk)) {
> > > > +             dev_err(&pdev->dev, "get clock failed %ld\n",
> > > > +                     PTR_ERR(pwm->clk));
> > > > +             return PTR_ERR(pwm->clk);
> > > > +     }
> > > =

> > > I guess you want to drop the first assignment to pwm->clk.
> > =

> > devm_clk_get_optional will return NULL if there is no entry, I don't
> > get where I need to drop it assignment.
> =

> With your patch the code looks as follows:
> =

> 	pwm->clk =3D devm_clk_get(&pdev->dev, NULL);
> 	if (IS_ERR(pwm->clk))
> 		return PTR_ERR(pwm->clk);
> =

> 	/* Get all clocks and reset line */
> 	pwm->clk =3D devm_clk_get_optional(&pdev->dev, "mod");

Actually, it's the other way around, e.g. "mod" clock is checked first.

> 	...
> =

> The assignment to pwm->clk above the comment is the one I suggested to
> drop.

Neither can be dropped. DT files for other SoCs don't have clock-names =

property, so search for "mod" clock will fail and then fallback option with=
out =

name is used.

Best regards,
Jernej

> =

> > > > +     /* Fallback for old dtbs with a single clock and no name */
> > > > +     if (!pwm->clk) {
> > > > +             pwm->clk =3D devm_clk_get(&pdev->dev, NULL);
> > > > +             if (IS_ERR(pwm->clk)) {
> > > > +                     dev_err(&pdev->dev, "get clock failed %ld\n",
> > > > +                             PTR_ERR(pwm->clk));
> > > > +                     return PTR_ERR(pwm->clk);
> > > > +             }
> > > > +     }
> > > =

> > > There is a slight change of behaviour if I'm not mistaken. If you have
> > > =

> > > this:
> > >         clocks =3D <&clk1>;
> > >         clock-names =3D "mod";
> > >         =

> > >         pwm {
> > >         =

> > >                 compatible =3D "allwinner,sun4i-a10-pwm"
> > >                 clocks =3D <&clk2>;
> > >         =

> > >         }
> > > =

> > > you now use clk1 instead of clk2 before.
> > > =

> > > Assuming this is only a theoretical problem, at least pointing this o=
ut
> > > in the commit log would be good I think.
> > =

> > Yes it's correct and as you said the driver don't check for a correct
> > device tree, that why it's now optional probe.
> > Let's assume that's the device-tree is correct, I will add a comment
> > in the commit log.
> =

> If the mod clock was shared by all peripherals on the bus this would be
> IMHO quite elegant. Probably it depends on what you mean by saying
> "incorrect" if this snippet is incorrect. (It can be part of a valid dtb
> that even complies to the binding documentation. However that's not how
> any existing allwinner hardware looks like.) But let's stop arguing as
> we agree it's a corner case and if you mention it in the commit log
> we're both happy.
> =

> > > What is that clock used for? Is it required to access the hardware
> > > registers? Or is it only required while the PWM is enabled? If so you
> > > could enable the clock more finegrainded.
> > =

> > Regarding the datasheet it's required to access the hardware.
> > page 261 :
> > https://linux-sunxi.org/File:Allwinner_H6_V200_User_Manual_V1.1.pdf
> So enabling the bus clock is called "open APB1 Bus gating" in that
> manual? If I understand that correctly the bus clock then only need to
> be on while accessing the registers and could be disabled once the
> hardware is programmed and running.
> =

> Can you please describe that in a comment. Something like:
> =

> 	/*
> 	 * We're keeping the bus clock on for the sake of simplicity.
> 	 * Actually it only needs to be on for hardware register
> 	 * accesses.
> 	 */
> =

> should be fine. This way it's at least obvious that the handling could
> be improved.
> =

> Best regards
> Uwe





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
