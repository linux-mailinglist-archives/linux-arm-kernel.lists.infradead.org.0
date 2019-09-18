Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06975B661C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i2ULdGllLeUP+FyLckrUnGLV//ktoefpWZqJt3iVtqQ=; b=Hl+B85Cr2o7ufy5egjT/h1hdD
	AxcCDBPruea47sd8u+iH91QGm6VjLNx3318HDjjkdghmJ9r2RsUW1hrKOQqTONo8zo84YpcifbMce
	CqxIc6DgyHWyel5ZPmmlocUqI0QX+MhjU8rn7W/i83ROCthFhQu5/NB1dlbpIbLoZTbCqt5a3oBzL
	etDCbTyX6DY82kbWRH8HCnfe1psUxwn6lU7rg1aBEF13+LnFEUkSqQxXCZ384gPTmdLk4MWiQBHlQ
	4phvWE8kzZOiGed/50VdYS5Ht2C7VOamhyfbtKpqu1HB3UQKIfP2/fIBdob2IDiXHz+aBOrkDeDiy
	NCaREqJUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAayQ-0003VO-LP; Wed, 18 Sep 2019 14:30:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAayF-0003V4-UW
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 14:30:17 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0BD8F218AE;
 Wed, 18 Sep 2019 14:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568817015;
 bh=n7hEc4U3JFOCFiwdHi6OxEy+MNo9Uxm6c6RnEDR8WCk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u0FC0ls3vLRORjqiIUVr1q5uIM4D5c4rEUU4iQtMFK+Zkh4h99Regs1s/KZ3GBhWq
 Cl8vuE9rrla1mh+Y+QW3Vxw9p3O8xmlC2DfI34/YeRkgXBIDmStGfXKkhtIJ9zmCf2
 EZ12GpdDZk3k7CnbMblC+5hiUGtkMC/B7Ps3/BLY=
Date: Wed, 18 Sep 2019 16:30:12 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH 5/6] media: sun4i: Add H3 deinterlace driver
Message-ID: <20190918143012.4o54doeauiv3j42z@gilmour>
References: <20190912175132.411-1-jernej.skrabec@siol.net>
 <20190912175132.411-6-jernej.skrabec@siol.net>
 <20190912202647.wfcjur7yxhlelvd6@localhost.localdomain>
 <3227980.eWD6USAIP4@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <3227980.eWD6USAIP4@jernej-laptop>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_073016_029238_865F6A8A 
X-CRM114-Status: GOOD (  19.40  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4664860655692228324=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4664860655692228324==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="murlg7gnizd4neyj"
Content-Disposition: inline


--murlg7gnizd4neyj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Sep 14, 2019 at 08:42:22AM +0200, Jernej =C5=A0krabec wrote:
> Dne =C4=8Detrtek, 12. september 2019 ob 22:26:47 CEST je Maxime Ripard na=
pisal(a):
> > Hi,
> >
> > On Thu, Sep 12, 2019 at 07:51:31PM +0200, Jernej Skrabec wrote:
> > > +	dev->regmap =3D devm_regmap_init_mmio(dev->dev, dev->base,
> > > +
> &deinterlace_regmap_config);
> > > +	if (IS_ERR(dev->regmap)) {
> > > +		dev_err(dev->dev, "Couldn't create deinterlace
> regmap\n");
> > > +
> > > +		return PTR_ERR(dev->regmap);
> > > +	}
> > > +
> > > +	ret =3D clk_prepare_enable(dev->bus_clk);
> > > +	if (ret) {
> > > +		dev_err(dev->dev, "Failed to enable bus clock\n");
> > > +
> > > +		return ret;
> > > +	}
> >
> > Do you need to keep the bus clock enabled all the time? Usually, for
> > the SoCs that have a reset line, you only need it to read / write to
> > the registers, not to have the controller actually running.
> >
> > If you don't, then regmap_init_mmio_clk will take care of that for
> > you.
> >
> > > +	clk_set_rate(dev->mod_clk, 300000000);
> > > +
> > > +	ret =3D clk_prepare_enable(dev->mod_clk);
> > > +	if (ret) {
> > > +		dev_err(dev->dev, "Failed to enable mod clock\n");
> > > +
> > > +		goto err_bus_clk;
> > > +	}
> > > +
> > > +	ret =3D clk_prepare_enable(dev->ram_clk);
> > > +	if (ret) {
> > > +		dev_err(dev->dev, "Failed to enable ram clock\n");
> > > +
> > > +		goto err_mod_clk;
> > > +	}
> > > +
> > > +	ret =3D reset_control_reset(dev->rstc);
> > > +	if (ret) {
> > > +		dev_err(dev->dev, "Failed to apply reset\n");
> > > +
> > > +		goto err_ram_clk;
> > > +	}
> >
> > This could be moved to a runtime_pm hook, with get_sync called in the
> > open. That way you won't leave the device powered on if it's unused.
>
> Currently I'm looking at sun4i_csi.c as an example of runtime ops, but it
> seems a bit wrong to have suspend and resume function marked with
> __maybe_unused because they are the only functions which enable needed cl=
ocks.
> If CONFIG_PM is not enabled, then this driver simply won't work, because
> clocks will never get enabled. I guess I can implement runtime pm ops in =
the
> same way and add additional handling when CONFIG_PM is not enabled, right?

Ah, right. I guess you can either add a depends on PM, or you can call
the function directly and use set_active like we're doing in the SPI
driver.

> BTW, which callback is get_sync? I don't see it in dev_pm_ops. I suppose I
> need only runtime_suspend and runtime_resume.

get_sync is the user facing API, ie what you call when you want the
device to be powered up. This will call runtime_resume if needed
(there were no users, and you become the first one), and on the parent
devices if needed too (even though it's not our case).

> Off topic: sun6i_csi.c includes linux/pm_runtime.h but it doesn't have an=
y kind
> of power management as far as I can see.

That's probably something we can remove then

Thanks!
Maxime

--murlg7gnizd4neyj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXYI/dAAKCRDj7w1vZxhR
xevqAQCkxjBKYVgA/AYg52M5egxPmCw9EbU+dTVOFOS3HnL94wD8C/1DfMGYclzH
K2NXT3v5e5dek4yjiUUAdMyPuzrn4gU=
=xZgs
-----END PGP SIGNATURE-----

--murlg7gnizd4neyj--


--===============4664860655692228324==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4664860655692228324==--

