Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E2112037C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:15:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZT1gbYMPtb2+DoNkRXIUOFSEUechk/SSUF9e6TjbAcs=; b=Oxx/HxEnLygthersHXEVD9n4k
	TjDtICZwcSRabR4o1Z3ZRX0FNQU2BfxvHGQXJynZ/y2AVEIclkU7zi4a90mC02bsppknsB0Log7bO
	L3Jf9X2yD6wQ/Q0IrYkApbV8s3F3DkVb3ybuqhoGRt2yG9zvOskEqYJfPoGJPmXp3QCqWDMEEuLtR
	EKuJqtYS+wgh8IehZHeiG/RhjIYHONYzeccxTYc6yW41cdQh22wbKqEPbJ51mNUxvquMcQ2G+xNe3
	X9qCrUb57I7YNuM1yDHJxlV3XYUIz76uhmj9ziJjoZCyauXRH65WcE7rfWtt6oJJkJVyLnhmo+zDZ
	7SL6Yoj1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igoL6-0001OX-9i; Mon, 16 Dec 2019 11:15:00 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoKn-0001E0-TR; Mon, 16 Dec 2019 11:14:43 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4F5976688;
 Mon, 16 Dec 2019 06:14:40 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 16 Dec 2019 06:14:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=6wtEAOA9zEAjBqSIrctunRBYYSQ
 b5Glee85EEArhRIg=; b=QQ+dte4fenHJ/naMFXR/2rJBYhoA5yenpYglspuOyZ5
 ZE8Si4su1rjLMlbd79tR2adUzkVlDRdEnpJClo7kbjdSm/YAB47vMVK4JWR21bdU
 kol3RipmAKIqAr63myjA+j4HBg3hOynwLcmJR5aOmvvJyPC4J9ygdsfYdtxX+Mft
 IVXURlXC+RPzzfrMll02epZuDbHIbwuqZBCbg6BWH8ESJ1S3HcFVKdEfwJ3RkoxO
 UdU4wgJG7kzkpGoVgNEPpn+sho9VqV8g/t4368yv9r8epeMH5Q0xOCiR2TEbVlVv
 d8cWK9t48RnrBuve2Z690Z1NkuBUtUW+zj2oogs3i/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=6wtEAO
 A9zEAjBqSIrctunRBYYSQb5Glee85EEArhRIg=; b=D9CpUbS2MR2NrbgEKUpd3r
 3553/A7UXfd8QWqnnjZMUl8WtV7A1bKW0GnFN8ZdKkpT+jDMAufZOtxQIS4GTmHS
 FG924bw4svhU+lkZm72RQLa//k3wPYvwbCAAAf6cjjmFzS2Ea0DVigdHOFVH7s3H
 RVMDgpUTV/2ttrzk4sYdXS+sF4+ZoxbqcagpY/5JSrFt9oW8o3cwzqFHuQGL1jHB
 LMjJMDiq0PrDnysVugV/Ee5z2mlQgKtA5umwcZvKa5Veqhrt/tdmyrFmeyY+o74t
 gRQfZQkqUFCiKGvj8yHcYvaVosoDQfscfC4XTb6k1ppCORShGEGiETbGj9MXCYqg
 ==
X-ME-Sender: <xms:Hmf3XR4U0X52qKZRYc29zdmO7tX8l7uf4MII9BZSnUBdZtOHbFs8OQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddthedgvdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggv
 rhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:Hmf3XR-GNZfv0lLZ1VFQD0DMQfuxMnPt3WArhYHR06Abs9EftgFgaw>
 <xmx:Hmf3XTHN-1r0Euo-LbMyBv2L0C2BTkZ1fSJQlbrHCZ2PEUGTF5fCew>
 <xmx:Hmf3XWXbvncf3_-rzz9IlVAb3JkNcFc2xhGidGJpqrF2MkhkTSRN2Q>
 <xmx:IGf3XVOI0leesD0cM5hYoV_V3UHVuNrXFxbcFvZquKkN8sohfa0aTA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id EC21A80061;
 Mon, 16 Dec 2019 06:14:37 -0500 (EST)
Date: Mon, 16 Dec 2019 12:14:36 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 09/12] drm/rockchip: lvds: Add PX30 support
Message-ID: <20191216111436.wzoq33gvt42w6gqj@gilmour.lan>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
 <20191213181051.25983-10-miquel.raynal@bootlin.com>
 <20191216105827.rxkfbwemkqw446jx@gilmour.lan>
 <20191216120312.4aa478da@xps13>
MIME-Version: 1.0
In-Reply-To: <20191216120312.4aa478da@xps13>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_031442_145896_7E44CDC1 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4177131168762963870=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4177131168762963870==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qqehoburp6qkbata"
Content-Disposition: inline


--qqehoburp6qkbata
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 16, 2019 at 12:03:12PM +0100, Miquel Raynal wrote:
> Maxime Ripard <maxime@cerno.tech> wrote on Mon, 16 Dec 2019 11:58:27 +0100:
> > Hi,
> >
> > On Fri, Dec 13, 2019 at 07:10:48PM +0100, Miquel Raynal wrote:
> > > +static int px30_lvds_grf_config(struct drm_encoder *encoder,
> > > +				struct drm_display_mode *mode)
> > > +{
> > > +	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
> > > +	u8 nhsync = !(mode->flags & DRM_MODE_FLAG_PHSYNC);
> > > +	u8 nvsync = !(mode->flags & DRM_MODE_FLAG_PVSYNC);
> > > +	u8 ndclk = !(mode->flags & DRM_MODE_FLAG_PCSYNC);
> > > +	int ret;
> > > +
> > > +	if (lvds->output != DISPLAY_OUTPUT_LVDS) {
> > > +		DRM_DEV_ERROR(lvds->dev, "Unsupported display output %d\n",
> > > +			      lvds->output);
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	if (nhsync ^ nvsync) {
> > > +		DRM_DEV_ERROR(lvds->dev, "Unsupported Hsync/Vsync polarity\n");
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	/* Set format */
> > > +	ret = regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON1,
> > > +				 PX30_LVDS_FORMAT(lvds->format),
> > > +				 PX30_LVDS_FORMAT(lvds->format));
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	/* Control Hsync/Vsync polarity */
> > > +	ret = regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON0,
> > > +				 PX30_LVDS_TIE_CLKS(1),
> > > +				 PX30_LVDS_TIE_CLKS(1));
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	/* Set Hsync/Vsync polarity */
> > > +	ret = regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON0,
> > > +				 PX30_LVDS_INVERT_CLKS(1),
> > > +				 PX30_LVDS_INVERT_CLKS(nhsync));
> > > +	if (ret)
> > > +		return ret;
> >
> > I don't know the hardware but it seems pretty weird to me. hsync and
> > vsync in LVDS are not clocks (or even signals), they're a bit in the
> > payload. Is there any explanation in the datasheet (or even a
> > datasheet in the first place)?
>
> There is no explanation about this in the PX30 TRM part 1 (public). But
> you are right the naming is weird. Could the "tie clocks" thing above
> mean something to you/people knowing the LVDS world?

I have no idea what that could mean :)

Maxime

--qqehoburp6qkbata
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfdnHAAKCRDj7w1vZxhR
xZyOAQDhVHd0nWPr1azNDyQKN7iIgKm2Ki+H9zu+7Qomae56GgD/XQNyQoHH9Lfw
mc376rXeaH4JqVQjDhawWMIIG6U/dAw=
=keFX
-----END PGP SIGNATURE-----

--qqehoburp6qkbata--


--===============4177131168762963870==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4177131168762963870==--

