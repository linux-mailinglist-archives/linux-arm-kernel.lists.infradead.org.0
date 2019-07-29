Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF37D785F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 09:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hgeIIuZ0aWVgUKzlwYFdhg/70/Xd/vWnaba+QTbVDDA=; b=gPoMwd56J/vWKX
	+/2zMuad3UydXhwlv1o5wTM+pvinLILUTx8HzkHjM6R/8fDXnxWHok5f1hs1QcWexiZkq77/VKXc+
	HcS2m2aYp6AZ16W/Cqb7LrqIIAbY9uP4D/dgBWyg/9zoCzxhsnGNqTf/pu56wLkgxx4tL8XSiBGlp
	CI1q6VCDKEmAQ9U07N+z0qpfoqqsCan/AxoCDP39GxeqFg1JjuIdWJndI92iuVl4iebwTtdjl7IPj
	xC6my7egehIfVU6AHk02oYbWAb35nAWe/VfGU7h/duIrKaWahC9Bq0xnNyDtHBBhAkaHniH2eTudW
	s8kSJ0vENSkT73/XYszw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrzqN-00043t-ON; Mon, 29 Jul 2019 07:13:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrzpa-0003x6-6v
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 07:12:27 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hrzpU-0002Xc-0g; Mon, 29 Jul 2019 09:12:20 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hrzpS-0004Zz-OL; Mon, 29 Jul 2019 09:12:18 +0200
Date: Mon, 29 Jul 2019 09:12:18 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 2/6] pwm: sun4i: Add a quirk for reset line
Message-ID: <20190729071218.bukw7vxilqy523k3@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-3-jernej.skrabec@siol.net>
 <20190729063630.rn325whatfnc3m7n@pengutronix.de>
 <CAGb2v65KOpivHQNkg+R2=D=ejCJYnPdVcyHJZW-GJCR8j0Yk0g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v65KOpivHQNkg+R2=D=ejCJYnPdVcyHJZW-GJCR8j0Yk0g@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_001226_356904_672F44BE 
X-CRM114-Status: GOOD (  15.69  )
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Mon, Jul 29, 2019 at 02:43:23PM +0800, Chen-Yu Tsai wrote:
> On Mon, Jul 29, 2019 at 2:36 PM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> > On Fri, Jul 26, 2019 at 08:40:41PM +0200, Jernej Skrabec wrote:
> > > @@ -371,6 +374,14 @@ static int sun4i_pwm_probe(struct platform_devic=
e *pdev)
> > >       if (IS_ERR(pwm->clk))
> > >               return PTR_ERR(pwm->clk);
> > >
> > > +     if (pwm->data->has_reset) {
> > > +             pwm->rst =3D devm_reset_control_get(&pdev->dev, NULL);
> > > +             if (IS_ERR(pwm->rst))
> > > +                     return PTR_ERR(pwm->rst);
> > > +
> > > +             reset_control_deassert(pwm->rst);
> > > +     }
> > > +
> >
> > I wonder why there is a need to track if a given chip needs a reset
> > line. I'd just use devm_reset_control_get_optional() and drop the
> > .has_reset member in struct sun4i_pwm_data.
> =

> Because it's not optional for this platform, i.e. it won't work if
> the reset control (or clk, in the next patch) is somehow missing from
> the device tree.

If the device tree is wrong it is considered ok that the driver doesn't
behave correctly. So this is not a problem you need (or should) care
about.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
