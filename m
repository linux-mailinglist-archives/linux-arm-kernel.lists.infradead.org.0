Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B80516646E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:23:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qbcRWAug2W9ganPj0oWdlGhVmUEbD5h7x/V2rWqmODw=; b=rXLB/JimJ1mPcWtA+B1dHw/HQ
	lyTqqBFgOHPaYv8H+RC0czv33tJIoDU0HMXQ/N+wR4F3GJSR2g9ITGOmb2LP5jmMF/YoeTna+/ZRR
	bt4NLvURAb+lgWw7IrpJ7uOdzbMAlBPLRruIKM2am+op3XwAXvUw+rwr50KpVKWf9o2sUWYwuhKN4
	xTGrvMh+tbNx764vDnMapl1RkpOAx0Y/YLjn14DKBSGIB3rFkB5VE7m9FyCt5beap3c2RGQfBKLOP
	zu1i5grCP8dy2DqbzkohBJ4FGN2IMJY1f7SJIC4GNIDWsOcHTzetCxZm+lx5YEhB8tEg4HtyfEQjl
	lnMDtm79Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pXU-0002zB-6D; Thu, 20 Feb 2020 17:23:04 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pWV-0002IH-Oj
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:22:06 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 593AF21D6E;
 Thu, 20 Feb 2020 12:21:58 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 20 Feb 2020 12:21:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=F59Fd4S1GGUgMmZ4kteMtbJWPk0
 n14U6PXOXNH3ut34=; b=VUHxBO0zQwwgUd9v0sbrKeNgkepO9x6Mgsf07D+aXm3
 7sh5tSnnfbQduIEa0niXhJJ5PzhwSD/VJZNM1Iy22X2BVUZifuds1zoB/Yw1WfqK
 98piyQbeTHBkz9Nm3BeA83uYYfVwIgd1kqDxJRZLJG3dff4R5PvzJCFgk7LKK3gL
 P6NH8pDPpzdlaBQJcfsnfkSDBCm6eh4LD3zKyOOsrke8T55Jc409Y38bCimGuQ3l
 mXUQP6N407IkE0BT7Ro6GovOkpO03VTbRtUxXMF71lmQ0URuFWhY0OiZ7KSfPi+g
 rhI2eidcHWV+qPj/v1AOB3vajzk8iL42niuNjlhK6rg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=F59Fd4
 S1GGUgMmZ4kteMtbJWPk0n14U6PXOXNH3ut34=; b=tbv/SagDhZJx3TKjU5lu6L
 zMypsEcVI8cEuzk3Nj5rMqlQv6saXzs7QM4MbnsPXzFuKeb7ysS/G5Px2MmeTHn1
 ghedvtWLg5IINkkR3n4O1f9VNJP92F9wak2qI4A9hfwR5iBP6UdzqAv+sOAH1Ac/
 rMyAXPRpKcPiWO8NX/683vsry8LfOyRu+jyx5KYLpLqueQagi/CNvoOS9Qva7Eeq
 xMLWmRPwaIIhBVCOR8XJkYPVzyrIVEgFZAeQWZx6/lUoUQXcWhuHp/aysYOgvDCw
 C85AlMDbj/IDpJcwyOnlm+ZX04tJLcrNJLECm4fdEs+1SukHoquNuKdapMRBTbFA
 ==
X-ME-Sender: <xms:NMBOXh5gW9DW_VmHBw2G2rJbcSkCbLDB3ab3Mdk8FfMFwAGmXYJdZg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkedvgddutddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:NMBOXmewfMVZna6p87U6QqUTqxdkUT2TPDuxwOyHXJU9ZpvimFj_Jg>
 <xmx:NMBOXoGwMiiWv6LCVibC0HK3Ppdss-9frps9SgLoMTHGUraftXxyBQ>
 <xmx:NMBOXm5syPAax3Qji5RA2VsbgY0ut2rhdyQUPoU4ox94h9oucR10rw>
 <xmx:NsBOXpE_AC7_DOPIOVE5t_snJM9O6yxDIt5Wxju4LDxy0VFHvoVewA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4926D328005A;
 Thu, 20 Feb 2020 12:21:56 -0500 (EST)
Date: Thu, 20 Feb 2020 18:21:54 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Andrey Lebedev <andrey.lebedev@gmail.com>
Subject: Re: [PATCH 1/5] drm/sun4i: tcon: Introduce LVDS setup routine setting
Message-ID: <20200220172154.22gw55s2mzyr45tj@gilmour.lan>
References: <20200210195633.GA21832@kedthinkpad>
 <20200219180858.4806-1-andrey.lebedev@gmail.com>
 <20200219180858.4806-2-andrey.lebedev@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200219180858.4806-2-andrey.lebedev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_092204_206598_8D11DE10 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============1671236784987752049=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1671236784987752049==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="c624jhpfn4hat26s"
Content-Disposition: inline


--c624jhpfn4hat26s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 19, 2020 at 08:08:54PM +0200, Andrey Lebedev wrote:
> From: Andrey Lebedev <andrey@lebedev.lt>
>
> Different sunxi flavors require slightly different sequence for enabling
> LVDS output. This allows to differentiate between them.
>
> Signed-off-by: Andrey Lebedev <andrey@lebedev.lt>
> ---
>  drivers/gpu/drm/sun4i/sun4i_tcon.c | 68 ++++++++++++++++--------------
>  drivers/gpu/drm/sun4i/sun4i_tcon.h |  3 ++
>  2 files changed, 39 insertions(+), 32 deletions(-)
>
> diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> index c81cdce6ed55..cc6b05ca2c69 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> @@ -114,46 +114,48 @@ static void sun4i_tcon_channel_set_status(struct sun4i_tcon *tcon, int channel,
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

There's an extra blank line here that was reported by checkpatch. I've
fixed it up while applying.

Maxime

--c624jhpfn4hat26s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXk7AMgAKCRDj7w1vZxhR
xRPmAQCP8Snrmn5Bhh4728GFgDNTv5Vaa/Z6hDqOEA60JuEqfwEAjU5pw2xAgG6t
RZ127dNTQF3BXJ+J4Y6udTTvuGBrRwo=
=Jwt1
-----END PGP SIGNATURE-----

--c624jhpfn4hat26s--


--===============1671236784987752049==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1671236784987752049==--

