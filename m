Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C2B79150
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:45:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ranUqvAnrHjLCYjOyd+BaeqY66/A4Y4Gv6P5cHWhXgg=; b=MxZ0oi+fanhyay8/SpiBSVoOj
	sQrhFMPiw45R/me70Ch1UvTjPjQCvCvq2fKMtCh5Bx2yLjrtJPvQ+MULA8ABcix/1lrAU2O5FxzqR
	/7y2w7Oc6I9qFTwILyJV1mG5BdpvwM9rC/Uc/3N+vQYAuZV4T3+VaLzqQ47aWvArak+jv1coGyh1z
	ReyxDbWyMO2ntBc+B3prASQViVKhpbEhmXeHE5e5LlgtW+YXATphWuu5tA/Pf/369waFgb1T6MAXq
	kD/cdfu77ASo8rNkZuGn+rfpZ6mpTYa3Xn5B5pWzIENo7fxKk4gpg06YZN9U2uwTE+NeN9rZ4Lrnx
	ffOBdx6fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8mJ-0003YN-0A; Mon, 29 Jul 2019 16:45:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8m1-0003Y1-PW
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:45:23 +0000
Received: from localhost (lpr83-1-88-168-111-231.fbx.proxad.net
 [88.168.111.231])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A2248206A2;
 Mon, 29 Jul 2019 16:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564418721;
 bh=x+aqiC/5J6cLRqB5rlt0xIXHK2pvRJY+eBKePLiGn7c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Cmypc6YcpSic4RB5SNHXuEL2hvJ1i959kKLp5fSR2JBZ/YiIpnuaCvXPHqhKHUh+t
 e3bB7LrJRRTjCMLIrwmoPdP+ziiPNqcxnkj5iOizdBCFhO1GI+NKQX8ox9cMW3ipbK
 28ReKNhep3bbt5pMbDMTBhyNsPtjRu/hoIqjJahM=
Date: Mon, 29 Jul 2019 18:45:16 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 3/6] pwm: sun4i: Add a quirk for bus clock
Message-ID: <20190729164516.yxfgj2zd3d5ii4c4@flea.home>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-4-jernej.skrabec@siol.net>
 <20190729063825.wxfky6nswcru26g7@pengutronix.de>
 <4022372.WfP88Fa4Lu@jernej-laptop>
 <20190729161435.5bnj3ikocsyep4dd@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20190729161435.5bnj3ikocsyep4dd@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_094521_866692_4F70D5DE 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org,
 Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, robh+dt@kernel.org, thierry.reding@gmail.com,
 kernel@pengutronix.de, wens@csie.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3954433524777596950=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3954433524777596950==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="szfghxy2ac5dvf2h"
Content-Disposition: inline


--szfghxy2ac5dvf2h
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 29, 2019 at 06:14:35PM +0200, Uwe Kleine-K=C3=B6nig wrote:
> Hello Jernej,
>
> On Mon, Jul 29, 2019 at 05:48:36PM +0200, Jernej =C5=A0krabec wrote:
> > Dne ponedeljek, 29. julij 2019 ob 08:38:25 CEST je Uwe Kleine-K=C3=B6nig
> > napisal(a):
> > > Hello,
> > >
> > > On Fri, Jul 26, 2019 at 08:40:42PM +0200, Jernej Skrabec wrote:
> > > > H6 PWM core needs bus clock to be enabled in order to work.
> > > >
> > > > Add a quirk for it.
> > > >
> > > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > > ---
> > > >
> > > >  drivers/pwm/pwm-sun4i.c | 15 +++++++++++++++
> > > >  1 file changed, 15 insertions(+)
> > > >
> > > > diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> > > > index 1b7be8fbde86..7d3ac3f2dc3f 100644
> > > > --- a/drivers/pwm/pwm-sun4i.c
> > > > +++ b/drivers/pwm/pwm-sun4i.c
> > > > @@ -72,6 +72,7 @@ static const u32 prescaler_table[] =3D {
> > > >
> > > >  };
> > > >
> > > >  struct sun4i_pwm_data {
> > > >
> > > > +	bool has_bus_clock;
> > > >
> > > >  	bool has_prescaler_bypass;
> > > >  	bool has_reset;
> > > >  	unsigned int npwm;
> > > >
> > > > @@ -79,6 +80,7 @@ struct sun4i_pwm_data {
> > > >
> > > >  struct sun4i_pwm_chip {
> > > >
> > > >  	struct pwm_chip chip;
> > > >
> > > > +	struct clk *bus_clk;
> > > >
> > > >  	struct clk *clk;
> > > >  	struct reset_control *rst;
> > > >  	void __iomem *base;
> > > >
> > > > @@ -382,6 +384,16 @@ static int sun4i_pwm_probe(struct platform_dev=
ice
> > > > *pdev)>
> > > >  		reset_control_deassert(pwm->rst);
> > > >
> > > >  	}
> > > >
> > > > +	if (pwm->data->has_bus_clock) {
> > > > +		pwm->bus_clk =3D devm_clk_get(&pdev->dev, "bus");
> > >
> > > Similar to my suggestion in patch 2: I'd use devm_clk_get_optional() =
and
> > > drop struct sun4i_pwm_data::has_bus_clock.
> >
> > This one is not so simple. This patch has incorrect logic. Correct logi=
c would
> > be to use "devm_clk_get(&pdev->dev, NULL)" for variants without bus clo=
ck as
> > it is done already and "devm_clk_get(&pdev->dev, "bus")" and
> > "devm_clk_get(&pdev->dev, "mod")" for variants with bus clock.
>
> Then maybe something like the following?:
>
> 	busclk =3D devm_clk_get_optional(..., "bus");
> 	modclk =3D devm_clk_get_optional(..., "mod");
>
> 	/*
> 	 * old dtbs might have a single clock but no clock names. Fall
> 	 * back to this for compatibility reasons.
> 	 */
> 	if (!modclk) {
> 		modclk =3D devm_clk_get(..., NULL);
> 	}

Again, there's nothing optional about these clocks. You need a
particular set of clocks for a given generation, and a separate set of
them on another generation of SoCs.

It really isn't about DT validation. We're really making sure that the
device can be operational. It's as much of a validation step than
making sure we have mapped registers (reg), or an interrupt if we had
any.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--szfghxy2ac5dvf2h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXT8inAAKCRDj7w1vZxhR
xfAvAQDPD/W10siMsbxXt0TnODSzxIn/7DF49wiKOuWZz6OwFwEAnwlydOCmRVBw
8J0s2aXuCVfbyJpDqk/FcreSk6jcPQE=
=dYSs
-----END PGP SIGNATURE-----

--szfghxy2ac5dvf2h--


--===============3954433524777596950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3954433524777596950==--

