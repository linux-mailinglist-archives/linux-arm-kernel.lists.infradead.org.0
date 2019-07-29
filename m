Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BAA792F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 20:21:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t44tQGcnE2gG8t3bha9xnDyrl3qsE9Fc45HpR+XfaBk=; b=dTtLPtkX543vtJ
	gYYFHu7YIQi5Rz1UHOjaZxVbfc49zqerEkytPIduevw699cIdxjxKhzEJoPQYmPeXrG2+monM9bkP
	mKrl00x3X1hmMsOtt0Mk/8hIm+c23wFj9xuKz1rWyzBkFt4SLtgOjYtL3W5GSmk8Tl3udP8A6/91o
	5kNTVF6m8Nvq5OShzzlvTUU1AZQEKJTGWKHGWW3XByE0ifKa2pfZw4wwTgc0WYODdfQ2Hw+PdUlMk
	HFHi8ewSi2Aez4J2BBlMRAJGFNJg8Qh4eIUNTS9wi5jnJ7/vnESLgxmgCacKTMoBtwGbt8c7grdb6
	Zo2z2nSmME9tsGzy2Suw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsAHK-0005cV-JI; Mon, 29 Jul 2019 18:21:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsAGv-0004Nl-HI
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 18:21:32 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hsAGS-0003Im-Gu; Mon, 29 Jul 2019 20:20:52 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hsAGM-0001Qa-Ko; Mon, 29 Jul 2019 20:20:46 +0200
Date: Mon, 29 Jul 2019 20:20:46 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 2/6] pwm: sun4i: Add a quirk for reset line
Message-ID: <20190729182046.6bwrterbxoceulrx@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-3-jernej.skrabec@siol.net>
 <20190729063630.rn325whatfnc3m7n@pengutronix.de>
 <CAGb2v65KOpivHQNkg+R2=D=ejCJYnPdVcyHJZW-GJCR8j0Yk0g@mail.gmail.com>
 <20190729071218.bukw7vxilqy523k3@pengutronix.de>
 <20190729163715.vtv7lkrywewomxga@flea.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729163715.vtv7lkrywewomxga@flea.home>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_112126_931903_08A40199 
X-CRM114-Status: GOOD (  24.55  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 06:37:15PM +0200, Maxime Ripard wrote:
> On Mon, Jul 29, 2019 at 09:12:18AM +0200, Uwe Kleine-K=F6nig wrote:
> > Hello,
> >
> > On Mon, Jul 29, 2019 at 02:43:23PM +0800, Chen-Yu Tsai wrote:
> > > On Mon, Jul 29, 2019 at 2:36 PM Uwe Kleine-K=F6nig
> > > <u.kleine-koenig@pengutronix.de> wrote:
> > > > On Fri, Jul 26, 2019 at 08:40:41PM +0200, Jernej Skrabec wrote:
> > > > > @@ -371,6 +374,14 @@ static int sun4i_pwm_probe(struct platform_d=
evice *pdev)
> > > > >       if (IS_ERR(pwm->clk))
> > > > >               return PTR_ERR(pwm->clk);
> > > > >
> > > > > +     if (pwm->data->has_reset) {
> > > > > +             pwm->rst =3D devm_reset_control_get(&pdev->dev, NUL=
L);
> > > > > +             if (IS_ERR(pwm->rst))
> > > > > +                     return PTR_ERR(pwm->rst);
> > > > > +
> > > > > +             reset_control_deassert(pwm->rst);
> > > > > +     }
> > > > > +
> > > >
> > > > I wonder why there is a need to track if a given chip needs a reset
> > > > line. I'd just use devm_reset_control_get_optional() and drop the
> > > > .has_reset member in struct sun4i_pwm_data.
> > >
> > > Because it's not optional for this platform, i.e. it won't work if
> > > the reset control (or clk, in the next patch) is somehow missing from
> > > the device tree.
> >
> > If the device tree is wrong it is considered ok that the driver doesn't
> > behave correctly. So this is not a problem you need (or should) care
> > about.
> =

> To some extent that's true, but if we can make the life easier for
> everyone by reporting an error and bailing out instead of silently
> ignoring that, continuing to probe and just ending up with a
> completely broken system for no apparent reason, then why not just do
> that?
> =

> I mean, all it takes is three lines of code.

<pedantic>Actually it's more because you need to track for each variant
if it needs the clock (or reset stuff) or not.</pedantic>

It's a weighing between "simpler driver" and "catch unlikely errors".
(If the SoC's .dtsi includes the needed stuff, an error here is really
unlikely, isn't it?)

So to some degree it's subjective which one is better. I tend to prefer
"simpler driver". Also when catching this type of error you have to do
it right twice (in the .dtsi and the driver) while with my approach
there is only a single place that defines what is right, which is a good
design according to what I learned during my studies.

> It's no different than just calling clk_get, and testing the return
> code to see if it's there or not. I wouldn't call that check when you
> depend on a clock "validating the DT". It's just making sure that all
> the resources needed for you to operate properly are there, which is a
> pretty common thing to do.

This is different. As a driver author you are allowed (or even supposed)
to assume that the device tree (or ACPI or platform data ...) is right
and completely defines the stuff for the driven hardware to work
correctly. You must not assume that clk_get() succeeds unconditionally.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
