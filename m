Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7FF150612
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 13:23:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RENKztLwQfoaWbH6s0oWCPa9ZDAzWdgdHBHqq3oOKUY=; b=pSP8gG1wFxbPFAaB9NtzKGu1E
	l24QKlZ0XNoY6g7LzdwklsTA9wYVFMOXbagZ0ZiCCr9oDhNjktXgjutCneuG0VogSv8wWhSpm3mrD
	ZY/na4x6BreJjsPRGsd6OnZdGJaiyK8Fjs/bvZYLx2WTENnya/FE60/gkmKm8ZXovSpuj5WvIoAwo
	V3c67vhH9V+Vieixg5xLY04gmTV3r6Gx1D1dk4NeXhYmOQB5W6cmGIQ5q5C8WtnqS0hYVQRIZovoL
	a7rg/DGmm2bcDR/yXsIFOBT15utTWc/Wkb8sapmskRZ/RnrO2rvdQOHd+ltXmD+OI6u+ZKFmADjwC
	o6tlQWvOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyalU-0004oz-9g; Mon, 03 Feb 2020 12:23:44 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyalM-0004oO-Kq
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 12:23:38 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 5C70677F;
 Mon,  3 Feb 2020 07:23:31 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 03 Feb 2020 07:23:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=mK5GRvMA6OUDoG2czNoAx6gpqcM
 IiYNtIFDTy+GwdtA=; b=krt68/O4eS+hXbPUoQNMUGLZE0YG23MSyhZrBmCY8YH
 k+ut/AKHHKapO6RMewDROM9/XDqTjEsA9rCdtw+NRkMXVRR5iXMVj7R1r/2OZETh
 1ggYYGMpjo/LvgByLYJQmuoAOdqSRiisZk0nnHSZZvFh4NI9HkOdSm6Lbu2aZY2t
 Q9sK/V+QPbx0Vfk2K+MDPmAGKwy016w2i1i9gFne7l0fdUS6sz1NTlYWJGNnc51Z
 D4X+SmikI92MewdExBbPGZJXzYSQNQ5bbPDh3iE3Pf/slRIyHCTI4SlQfMeUapLq
 YAhIkF5obLki6wO/OHzdOg3DsLqOEbytLQhMLtPgNRw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=mK5GRv
 MA6OUDoG2czNoAx6gpqcMIiYNtIFDTy+GwdtA=; b=tXTcfqdNu5grN+uQaNB053
 DOK96ZgPPwapBCsP82XtlqVoIGkhB1KQRhpzXKX0fgLN9fEjWb7FBtiuF4i+GfIb
 WrqFo5gAWpWdW3D3g149oJPA5UOqcFWdilwrGkGcz29ud3jz327gw6HQhu6/u0Ww
 3M+5lT0wBJdSU1WyphxQ/UGK+/qjf/dc9TePaWOIhQPupkil3OaZTtxe4OFOI1p8
 b4mmlj20Se0G/NjFb/gDUlMQRLSNMOxfU50AmsBM6lMU/DLznm6ntb2fQd4ZLbEm
 /ENpshOWwCagb8SrOnElNnCXDoHzQXEGf4+Hd23zPTRGAJteSZLkye4AclUFc2DQ
 ==
X-ME-Sender: <xms:wRA4Xt27TgAGyDexAd-cK8HZF69HRne4pP5OInIOYFAEDuk3GacaQA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrgeejgdefkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epsghoohhtlhhinhdrtghomhenucfkphepledtrdekledrieekrdejieenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrh
 hnohdrthgvtghh
X-ME-Proxy: <xmx:wRA4XujZSucYxluqlAxtlUQeR4R-dWzAIQAUl8bQC5-f9brEBuZNYw>
 <xmx:wRA4XuVlru235DfEwyWpXyi4rwSgz7vcgoCxbH1U1oODHoCDzx-Tcw>
 <xmx:wRA4XtDaMZza1bdRRFSwwXQ2cx7WHjCOVl13HBqcr65LJGJ6IghKew>
 <xmx:wxA4XtCUfrxeJgghef7tzHaq9ZspKYVKe-5GpWdfGk8oZDtyvN_TwQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3087D3280060;
 Mon,  3 Feb 2020 07:23:29 -0500 (EST)
Date: Mon, 3 Feb 2020 13:23:27 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Stefan Mavrodiev <stefan@olimex.com>
Subject: Re: [PATCH v3 1/1] drm: sun4i: hdmi: Add support for sun4i HDMI
 encoder audio
Message-ID: <20200203122327.fviddfbkfn2bgycn@gilmour.lan>
References: <20200128140642.8404-1-stefan@olimex.com>
 <20200128140642.8404-2-stefan@olimex.com>
 <20200129164321.34mornbi3xvx5dys@gilmour.lan>
 <64676a4b-e149-146c-81b4-7fd5e792efc5@olimex.com>
MIME-Version: 1.0
In-Reply-To: <64676a4b-e149-146c-81b4-7fd5e792efc5@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_042336_746927_1C748304 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1320791033648682617=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1320791033648682617==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="us6nvolmdwutyb6n"
Content-Disposition: inline


--us6nvolmdwutyb6n
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Jan 30, 2020 at 08:20:55AM +0200, Stefan Mavrodiev wrote:
> On 1/29/20 6:43 PM, Maxime Ripard wrote:
> > On Tue, Jan 28, 2020 at 04:06:42PM +0200, Stefan Mavrodiev wrote:
> > > diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> > > index 68d4644ac2dc..4cd35c97c503 100644
> > > --- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> > > +++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> > > @@ -23,6 +23,8 @@
> > >   #include <drm/drm_print.h>
> > >   #include <drm/drm_probe_helper.h>
> > >
> > > +#include <sound/soc.h>
> > > +
> > >   #include "sun4i_backend.h"
> > >   #include "sun4i_crtc.h"
> > >   #include "sun4i_drv.h"
> > > @@ -87,6 +89,10 @@ static void sun4i_hdmi_disable(struct drm_encoder *encoder)
> > >
> > >   	DRM_DEBUG_DRIVER("Disabling the HDMI Output\n");
> > >
> > > +#ifdef CONFIG_DRM_SUN4I_HDMI_AUDIO
> > > +	sun4i_hdmi_audio_destroy(hdmi);
> > > +#endif
> > > +
> > >   	val = readl(hdmi->base + SUN4I_HDMI_VID_CTRL_REG);
> > >   	val &= ~SUN4I_HDMI_VID_CTRL_ENABLE;
> > >   	writel(val, hdmi->base + SUN4I_HDMI_VID_CTRL_REG);
> > > @@ -114,6 +120,11 @@ static void sun4i_hdmi_enable(struct drm_encoder *encoder)
> > >   		val |= SUN4I_HDMI_VID_CTRL_HDMI_MODE;
> > >
> > >   	writel(val, hdmi->base + SUN4I_HDMI_VID_CTRL_REG);
> > > +
> > > +#ifdef CONFIG_DRM_SUN4I_HDMI_AUDIO
> > > +	if (hdmi->hdmi_audio && sun4i_hdmi_audio_create(hdmi))
> > > +		DRM_ERROR("Couldn't create the HDMI audio adapter\n");
> > > +#endif
> > I really don't think we should be creating / removing the audio card
> > at enable / disable time.
>
> For me it's unnatural to have sound card all the time, even when the HDMI
> is not plugged-in.

It's also a matter of being consistent: pretty much everyone else is
doing it:
  * vc4 (RaspberryPi)
    https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/vc4/vc4_hdmi.c#L1437

  * omap
    https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/omapdrm/dss/hdmi4.c#L620

  * sti
    https://elixir.bootlin.com/linux/v5.5.1/source/drivers/gpu/drm/sti/sti_hdmi.c#L1310

  * msm
    https://elixir.bootlin.com/linux/v5.5.1/source/drivers/gpu/drm/msm/hdmi/hdmi.c#L597

etc...

If we were to think about this at a more theorical level though, it's
pretty much the same case than having a sound card but no headphone
attached, or having a display engine but no display attached. In both
case, you register the driver before having a sink, you just let the
userspace know that there's nothing connected on the other end.

Maxime

--us6nvolmdwutyb6n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXjgQvwAKCRDj7w1vZxhR
xdqwAP90ShOJxBbtMrBiG8v3E0faJeHq3afqOhYkhGvBsaMulgEAiXnhh/hbOEYk
AIT/bNNWkq+0/C1clN/tSxpR02pJMwI=
=ubu/
-----END PGP SIGNATURE-----

--us6nvolmdwutyb6n--


--===============1320791033648682617==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1320791033648682617==--

