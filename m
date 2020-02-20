Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 511C7166497
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:26:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ewa5hL9bmjkpgiwjgranKGUxf9WgLFMBYI/3d5QNHZg=; b=L48y2WDXEV4og9j1GpiDaBokR
	YKANkJhtdv503flwGxNpN0Ez0VrkPFPDZyZYzkGpQWpa1p65fGjr4QDrXG8f8jrcdh25COdo7rWPr
	wai29K1RulfU6v2ocnapHUqqMAYrPZrQ3sBXHwwDqaLxl/38Q/mafUXgebn/nsNNiSb9e0F+HPCaD
	0urHVkSBm+422cEKoEkj9TJ8Kd4xa6zfqhY0dJzjE6n9qXvy0DSoA9Z5u3vD0aim1NdMduCeciLg+
	N4UGMJbYrWgdcUCRi6mSWsV07JYvYoCspSR+WcgcH1otEKZVrtkvcD1Lb111Vbt+S8dCdvcUrIUr5
	onLET6QFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4paP-0007Dk-PA; Thu, 20 Feb 2020 17:26:05 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pZa-0005dj-UT
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:25:18 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id CEE3522085;
 Thu, 20 Feb 2020 12:25:13 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 20 Feb 2020 12:25:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=CmeCB3EedI4a6cWfKVdd/aDqAGy
 NtRjQTLkKMzwbjVw=; b=nTKo5PKjyq1NZxjw2fBMnS1gEb72o3x2VarDP8wMIBX
 mvsSxAh0WI87NeM/0jWE7yYPXLX8b/fHWd5IzodG9Fr1iUTMCWcrrlB7POHcfczH
 00gtZTLAgXEkVjolqBjcy91vXe3w8Uvd/UE43VFaBJqiOQEVAZ1vhevBrlBXYAvD
 Mb100qku+sgsLzE+CFf3EIQP33ktZH1Sk1fOTZccL6kbpUF/ZZtWidmCZxOXimoe
 KdffWN2ZSKgNAnZjihwyYOQJ4Iy3J41rOEVgY/2DFlIfS7/yrujlzLZk8iPU3vAX
 scqQ7IOmqIXYpx/w03mWaDb+fBSbzMy6HF0Z9A95UPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=CmeCB3
 EedI4a6cWfKVdd/aDqAGyNtRjQTLkKMzwbjVw=; b=NfzWIUGidz0DyNGf8iTI9F
 MPMgfxJ+ofG7dFjM/AlLZShZWpiWNU0ncYPXnQEAKmG0gz8xhDEfYEDPhVQCMA4k
 hf2Fov4AZm0a5H6imgpc/brzbaosv24+agYlKqZ6GKgo7hN7sTHAiVZv6TaMCXZ/
 08RcpGNj/fktMc8/JFJ8v3ZWII8inDte+L0FWNJ36lEUTTDP7sA5UNAzUYSH5+2x
 mXYUzEnuI6Itu3dySNAUw4l94vw9BDVrJVzXBwI7ez6zF9NNfM+QWFPCBByDsWS4
 BncBbk+cn2eIgO43Y/rsBx9KDI9BLT8zohzl1YD04Eo1EXX5DhzT6L/+80DQdDvw
 ==
X-ME-Sender: <xms:-cBOXv88wPuMH1Llg_UxFyu9nT6vA7c8hruXgoGrhofOXkkcGY48GA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkedvgddutdefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:-cBOXjTyMwBnhd-563HYuuyq6YuTeUGkRZBwdg_dS0yJJn2HtwIiSA>
 <xmx:-cBOXkn14MXT89knvPLbxLKp85rlEfpjRmelxVRGA-tE6m1Iq8GTCg>
 <xmx:-cBOXraNplfJQ27KkI-_mkGnekuNBSawhVgc4JQ8k0xYCD-lcAl3Tw>
 <xmx:-cBOXq4xkfQBLiLS-vZCiInT5w63KndcSnrhxj6ArMMVKOl-zYn4bQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 723713280063;
 Thu, 20 Feb 2020 12:25:13 -0500 (EST)
Date: Thu, 20 Feb 2020 18:25:12 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Andrey Lebedev <andrey.lebedev@gmail.com>
Subject: Re: [PATCH 5/5] drm/sun4i: tcon: Support LVDS output on Allwinner A20
Message-ID: <20200220172512.dmjtqgyay73x3ubx@gilmour.lan>
References: <20200210195633.GA21832@kedthinkpad>
 <20200219180858.4806-1-andrey.lebedev@gmail.com>
 <20200219180858.4806-6-andrey.lebedev@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200219180858.4806-6-andrey.lebedev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_092515_158939_18A91FFB 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: multipart/mixed; boundary="===============6269425842580059793=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6269425842580059793==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qbnnqotkbijgn4ey"
Content-Disposition: inline


--qbnnqotkbijgn4ey
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 19, 2020 at 08:08:58PM +0200, Andrey Lebedev wrote:
> From: Andrey Lebedev <andrey@lebedev.lt>
>
> A20 SoC (found in Cubieboard 2 among others) requires different LVDS set
> up procedure than A33. Timing controller (tcon) driver only implements
> sun6i-style procedure, that doesn't work on A20 (sun7i).
>
> Signed-off-by: Andrey Lebedev <andrey@lebedev.lt>
> ---
>  drivers/gpu/drm/sun4i/sun4i_tcon.c | 37 +++++++++++++++++++++++++++++-
>  drivers/gpu/drm/sun4i/sun4i_tcon.h | 11 +++++++++
>  2 files changed, 47 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> index b7234eef3c7b..09ee6e8c6914 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> @@ -114,6 +114,30 @@ static void sun4i_tcon_channel_set_status(struct sun4i_tcon *tcon, int channel,
>  	}
>  }
>
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
>  static void sun6i_tcon_setup_lvds_phy(struct sun4i_tcon *tcon,
>  				      const struct drm_encoder *encoder)
>  {
> @@ -1455,7 +1479,18 @@ static const struct sun4i_tcon_quirks sun6i_a31s_quirks = {
>  	.dclk_min_div		= 1,
>  };
>
> +static const struct sun4i_tcon_quirks sun7i_a20_tcon0_quirks = {
> +	.supports_lvds		= true,
> +	.has_channel_0		= true,
> +	.has_channel_1		= true,
> +	.dclk_min_div		= 4,
> +	/* Same display pipeline structure as A10 */
> +	.set_mux		= sun4i_a10_tcon_set_mux,
> +	.setup_lvds_phy		= sun4i_tcon_setup_lvds_phy,
> +};
> +
>  static const struct sun4i_tcon_quirks sun7i_a20_quirks = {
> +	.supports_lvds		= false,

False is already the default here.

I've removed it while applying

Maxime

--qbnnqotkbijgn4ey
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXk7A+AAKCRDj7w1vZxhR
xayeAQDILhx+HqIc9ELL8w3aXArAebOzGMH9WytljuIvons+JAEA3kY2DIgA9alq
IOF7a7Q4pPKQWirbPIzwYsb2BRGiJQo=
=C6AH
-----END PGP SIGNATURE-----

--qbnnqotkbijgn4ey--


--===============6269425842580059793==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6269425842580059793==--

