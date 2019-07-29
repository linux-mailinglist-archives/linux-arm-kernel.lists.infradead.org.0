Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A58078FEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 17:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HkV/iA+raDKYmqVqhmmxD+bC8fVJU/G0MqtqBy1Qu4=; b=DB6DdsVbGO65ac
	tR+r2jFK/0Dleu5XjB2VavLATPF1KZG9K01U/0XojAuUKA9vcwDvkOiaShWB6N4x0ZOtzUD/XPm7g
	QMtoNzRqKubqd4N/LpqEO5ufZC3URFc8THWq/a1mP8Asc6lt/RxgC5fru4I+gjUnSa3gqLCLWJlyZ
	jdIm4yvYkhKA+Ju1qRN2wZqSRazvIM77CScZhEYav0KbutALbu3lKJgDqq/5X3BVjERExbsVg8Ukg
	/V7U4tG7AsJvUVzJoH0SOyXTtWJaJWVSIAGdajm1eRy2kO3H7E9jq+qx7QLg7OjDuQvhvPB09DsXt
	f9IIxgGBfzHHTW+mm8FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs80Q-0000sD-DZ; Mon, 29 Jul 2019 15:56:10 +0000
Received: from mailoutvs41.siol.net ([185.57.226.232] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs80C-0000rg-Ax
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 15:55:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 8DCAD522BB3;
 Mon, 29 Jul 2019 17:55:53 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id u-_fD2Ny9KTo; Mon, 29 Jul 2019 17:55:53 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 266D5522D23;
 Mon, 29 Jul 2019 17:55:53 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-194-152-11-237.cable.triera.net
 [194.152.11.237]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id A1875522BB3;
 Mon, 29 Jul 2019 17:55:52 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 4/6] pwm: sun4i: Add support for H6 PWM
Date: Mon, 29 Jul 2019 17:55:52 +0200
Message-ID: <223488703.0I5IR7NXoI@jernej-laptop>
In-Reply-To: <20190729064030.7uenld2kbof45zti@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-5-jernej.skrabec@siol.net>
 <20190729064030.7uenld2kbof45zti@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_085556_711511_190D280D 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, robh+dt@kernel.org, thierry.reding@gmail.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Uwe,

Dne ponedeljek, 29. julij 2019 ob 08:40:30 CEST je Uwe Kleine-K=F6nig =

napisal(a):
> On Fri, Jul 26, 2019 at 08:40:43PM +0200, Jernej Skrabec wrote:
> > Now that sun4i PWM driver supports deasserting reset line and enabling
> > bus clock, support for H6 PWM can be added.
> > =

> > Note that while H6 PWM has two channels, only first one is wired to
> > output pin. Second channel is used as a clock source to companion AC200
> > chip which is bundled into same package.
> > =

> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > =

> >  drivers/pwm/pwm-sun4i.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > =

> > diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> > index 7d3ac3f2dc3f..9e0eca79ff88 100644
> > --- a/drivers/pwm/pwm-sun4i.c
> > +++ b/drivers/pwm/pwm-sun4i.c
> > @@ -331,6 +331,13 @@ static const struct sun4i_pwm_data
> > sun4i_pwm_single_bypass =3D {> =

> >  	.npwm =3D 1,
> >  =

> >  };
> > =

> > +static const struct sun4i_pwm_data sun50i_pwm_dual_bypass_clk_rst =3D {
> > +	.has_bus_clock =3D true,
> > +	.has_prescaler_bypass =3D true,
> > +	.has_reset =3D true,
> > +	.npwm =3D 2,
> > +};
> > +
> > =

> >  static const struct of_device_id sun4i_pwm_dt_ids[] =3D {
> >  =

> >  	{
> >  	=

> >  		.compatible =3D "allwinner,sun4i-a10-pwm",
> > =

> > @@ -347,6 +354,9 @@ static const struct of_device_id sun4i_pwm_dt_ids[]=
 =3D
> > {
> > =

> >  	}, {
> >  	=

> >  		.compatible =3D "allwinner,sun8i-h3-pwm",
> >  		.data =3D &sun4i_pwm_single_bypass,
> > =

> > +	}, {
> > +		.compatible =3D "allwinner,sun50i-h6-pwm",
> > +		.data =3D &sun50i_pwm_dual_bypass_clk_rst,
> =

> If you follow my suggestion for the two previous patches, you can just
> use:
> =

> 	compatible =3D "allwinner,sun50i-h6-pwm", "allwinner,sun5i-a10s-pwm";
> =

> and drop this patch.

Maxime found out that it's not compatible with A10s due to difference in by=
pass =

bit, but yes, I know what you mean.

Since H6 requires reset line and bus clock to be specified, it's not compat=
ible =

from DT binding side. New yaml based binding must somehow know that in orde=
r =

to be able to validate DT node, so it needs standalone compatible. However, =

depending on conclusions of other discussions, this new compatible can be =

associated with already available quirks structure or have it's own.

Best regards,
Jernej

> =

> Best regards
> Uwe
> =

> >  	}, {
> >  	=

> >  		/* sentinel */
> >  	=

> >  	},





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
