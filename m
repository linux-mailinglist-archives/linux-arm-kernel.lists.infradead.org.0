Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9499815BBBD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 10:32:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TdQ0QH8SfO0hEqZa0WBaftm3XMZIFkDsKZtd1xGSA7I=; b=R8ifc+L1sD8exxr4QHkgYBHWn
	BlVrA1z51tCaoeadDIOfQSV3+h9zKgZ+3cHgfpQdvPr8JTgbJrIphREkiPni9KQFqh+/ulX2HrjOm
	rvN+d7AVohxVDW9CCfGglK+8cjALL9rX4Qi3C5En4L/N1qNa22rp2PlJDfG6GsItcuC7CqOC+tJ00
	AdCtdfT30RpPRZRsdlCI1Yql+pR4xo2ErkCrQTNhpg6q/amYmhV5HnxcQ652PTjyZI5KrmIM9EuKJ
	1JGf0cHoTofxmgCElmG9Wrs06e7nro4+Jzl7Z4anhpobkaSjhCnuMqRxipT/45BYCzYskpEQSAg+c
	BQHsnUf9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ArP-0003CM-9G; Thu, 13 Feb 2020 09:32:39 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ArG-0003C2-Do
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 09:32:32 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id A87D921B10;
 Thu, 13 Feb 2020 04:32:29 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 13 Feb 2020 04:32:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=Ey3EA7WUbbmeV5n7kMrMdCyyznD
 m0vTJDaAlruj1gnU=; b=i97VZd/9GNZAjtj0WAWujKBQruiZpr1fTGGLbz4a/fY
 VcI6L0ybzMktkKLNLcv3UyargfMn3461dAQQGPehyyccrTJepn3WBxYrDpCnYC4L
 0Rappd73ZbAOE40lBPG1yMxr8K+mzcnB39nEBQGTkxMgLWaAXttqiiwVA93HSm8s
 j4pnZM+gnp0xSxaNycu1vDVDep1t+T2cYb3/LiPQBnNUzwnKstOeSkoGoux2jW/G
 pP0IS7+IKgPpG2sKl5wXcpVbr9WLjPPX1J3lVA5qqbMB/Pgfxy2D9mw4Db8Bl1v/
 MfLS3aU9Lo2f2CoWF8womYpJ4Lz4A2tmXXcyMScweSQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Ey3EA7
 WUbbmeV5n7kMrMdCyyznDm0vTJDaAlruj1gnU=; b=ga73dFyEur3SUiHoZPXxEq
 ooM3ogcq2Py7YtMDoKHRBaruljpqDDA+c+6d2IN8ObstCm92Nsq84yn4hs8Qpr66
 fuah3qIkWvYaxPLX6y0C8UA9AbpYgcHKhaFnmfoKPqinczRwjw09G/dNosvv+iQi
 I2h2SQPznox/JyEdiboUeV1bBtkREPcG+VidrnT3eKLHt97TfShe2ENAH3Zh19BA
 s0ivsodWXVhwpvcYFsR/nXRq5DM3ewCTQK2TM8BCDZMUpWXDSmFPDO12zl2Y2v1R
 p45Hn7aqKLuJqduEo0Ayj5x69dqspWJead5bZshzJhAWrbcrV+ytATqi9GSC9Vbw
 ==
X-ME-Sender: <xms:qxdFXo-4l7Jkp6yPfyCoZmBNZhsX4BqulMV_9APzxAEMZloqkBxRuA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieekgddtgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:qxdFXn5--rb8WCpLWjgAi7hNbEBgCs5aP4S2UTzsdhzwhMpIl9csQw>
 <xmx:qxdFXtNvwbipmmOo5uURGeSFtcZ9DGMkPv8lfz3eogKIkAjFCsJ4NQ>
 <xmx:qxdFXp5PJG-EM99-7nSJXVckqPLfwh0jjK_-vwPfXbPtaraADyP7TA>
 <xmx:rRdFXv63GIF_XLfsRA_K-2lufdf0HVUHnLcjf2fq1RCVFJ-Ptv3A_g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A7A633280063;
 Thu, 13 Feb 2020 04:32:27 -0500 (EST)
Date: Thu, 13 Feb 2020 10:32:26 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: andrey.lebedev@gmail.com
Subject: Re: [PATCH v2 1/2] ARM: sun7i: Support LVDS output on Allwinner A20
Message-ID: <20200213093226.7zpd4wmogad7mhus@gilmour.lan>
References: <20200210195633.GA21832@kedthinkpad>
 <20200212222355.17141-1-andrey.lebedev@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200212222355.17141-1-andrey.lebedev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_013230_667340_D58F15FF 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: airlied@linux.ie, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrey Lebedev <andrey@lebedev.lt>, wens@csie.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7503928608278955380=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7503928608278955380==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ehooxt5uoooo37qf"
Content-Disposition: inline


--ehooxt5uoooo37qf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

The prefix of your title should be "drm/sun4i: tcon:" instead of "ARM:
sun7i:"

The latter would be if you were modifying files under arch/arm, but
you're modifying files in (drivers/gpu/)drm/sun4i :)

On Thu, Feb 13, 2020 at 12:23:55AM +0200, andrey.lebedev@gmail.com wrote:
> From: Andrey Lebedev <andrey@lebedev.lt>
>
> A20 SoC (found in Cubieboard 2 among others) requires different LVDS set
> up procedure than A33. Timing controller (tcon) driver only implements
> sun6i-style procedure, that doesn't work on A20 (sun7i).
>
> Signed-off-by: Andrey Lebedev <andrey@lebedev.lt>
> ---
>  drivers/gpu/drm/sun4i/sun4i_tcon.c | 95 ++++++++++++++++++++----------
>  drivers/gpu/drm/sun4i/sun4i_tcon.h | 14 +++++
>  2 files changed, 77 insertions(+), 32 deletions(-)
>
> diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> index c81cdce6ed55..e4c605ca685e 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> @@ -114,46 +114,73 @@ static void sun4i_tcon_channel_set_status(struct sun4i_tcon *tcon, int channel,
>  	}
>  }
>
> +static void sun6i_tcon_setup_lvds_phy(struct sun4i_tcon *tcon,
> +				      const struct drm_encoder *encoder)
> +{
> +	u8 val;
> +
> +	regmap_write(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
> +		     SUN6I_TCON0_LVDS_ANA0_C(2) |
> +		     SUN6I_TCON0_LVDS_ANA0_V(3) |
> +		     SUN6I_TCON0_LVDS_ANA0_PD(2) |
> +		     SUN6I_TCON0_LVDS_ANA0_EN_LDO);
> +	udelay(2);
> +
> +	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
> +			   SUN6I_TCON0_LVDS_ANA0_EN_MB,
> +			   SUN6I_TCON0_LVDS_ANA0_EN_MB);
> +	udelay(2);
> +
> +	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
> +			   SUN6I_TCON0_LVDS_ANA0_EN_DRVC,
> +			   SUN6I_TCON0_LVDS_ANA0_EN_DRVC);
> +
> +	if (sun4i_tcon_get_pixel_depth(encoder) == 18)
> +		val = 7;
> +	else
> +		val = 0xf;
> +
> +	regmap_write_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
> +			  SUN6I_TCON0_LVDS_ANA0_EN_DRVD(0xf),
> +			  SUN6I_TCON0_LVDS_ANA0_EN_DRVD(val));
> +
> +}
> +
> +static void sun4i_tcon_setup_lvds_phy(struct sun4i_tcon *tcon,
> +				      const struct drm_encoder *encoder)
> +{
> +	regmap_write(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
> +		     SUN4I_TCON0_LVDS_ANA0_CK_EN |
> +		     SUN4I_TCON0_LVDS_ANA0_REG_V |
> +		     SUN4I_TCON0_LVDS_ANA0_REG_C |
> +		     SUN4I_TCON0_LVDS_ANA0_EN_MB |
> +		     SUN4I_TCON0_LVDS_ANA0_PD |
> +		     SUN4I_TCON0_LVDS_ANA0_DCHS);
> +
> +	udelay(2); /* delay at least 1200 ns */
> +	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA1_REG,
> +			   SUN4I_TCON0_LVDS_ANA1_INIT,
> +			   SUN4I_TCON0_LVDS_ANA1_INIT);
> +	udelay(1); /* delay at least 120 ns */
> +	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA1_REG,
> +			   SUN4I_TCON0_LVDS_ANA1_UPDATE,
> +			   SUN4I_TCON0_LVDS_ANA1_UPDATE);
> +	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
> +			   SUN4I_TCON0_LVDS_ANA0_EN_MB,
> +			   SUN4I_TCON0_LVDS_ANA0_EN_MB);
> +}
> +
> +

Patches should contain only one logical change, so ideally this should
be two patches: one to create the function pointer and fill it for the
A31 style setup, the other one to add support for the A20.

Also, you should have only a single line between the two functions and
the second should come before the first (alphabetical ordering).

Maxime

--ehooxt5uoooo37qf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkUXqgAKCRDj7w1vZxhR
xZQGAQDUTFCN6+DkjlsVNmEY9E37DqXjqwoTNETsi+iwh7cWKAEA4Ii/GwiF0rQJ
YESBk436xBgh02h3ajh1wbBeS2l9tgM=
=VT2S
-----END PGP SIGNATURE-----

--ehooxt5uoooo37qf--


--===============7503928608278955380==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7503928608278955380==--

