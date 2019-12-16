Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BD0120310
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 11:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8RJ69HJZVroaOCljpDnurlqN6Biv632boLWYNeR6fzk=; b=PiFErNPOCLWMikvh+3I3GZ8CN
	vqAis3BooCygH0FKLmXOUjhAbgLD/nTRzQqbd0wZimThQD+OnbIeqTLfQITnC2uPyTQZCxyfQfwrE
	QXQZS9ANlpeJhFh/NCwalkDrRZ7NuoHFYOpezYcugnYJBAmnRk4/5CxPEuBKWTIhd7z9KstbSmjdu
	GyRKlNnXL/Wy4/CR3OAe0Ss8WfqdmkLU56J0Td+JMC/8xTfsr5YdK9xYZoliZAlM/ccbU+ddhlXos
	xTBxqU738SFoZIa1G2mveF57egvme4J/GPlyxgYOKDV09hnumt4dBTm3XaJuOVSrkxcmp3dPBlSEd
	ro+FIWDRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igo5K-0001Jd-9R; Mon, 16 Dec 2019 10:58:42 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igo59-0001J4-D9; Mon, 16 Dec 2019 10:58:32 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5EA5E7118;
 Mon, 16 Dec 2019 05:58:30 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 16 Dec 2019 05:58:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=7E2TpTwENCgP1MRD7/Eziybb/Th
 2bGLOCc12fC88q6E=; b=IMLrsBodXXXGicPZCQDlL4YhxJ8yYXkJiGeQPJQQwf4
 cvkx9X6OxYx4AIhSKnPbdJllQHaNKzzF32/qX58QgboLLpEQjhHszLxaPpdgMMqV
 5jwKe1BCnPBcTCzsnR03dumppfba/ket7EzIV/vDMcpIzk6A9IEqm5vtpgGTV0is
 zhsxVo69knhpEPIVcq8TwJ3MXG2+XWNQp+POUAs1H0De5zyyiyMRlkSCghfcP6au
 1A6KiA/ogyumRutouWKKu8dAEzQyxprg9hq1qJbuVHeCMMxACjaQnueTYxbD/Xbp
 1EaHOWLopra/MTOUFxZc/cLJR14aFWEUPkFkB2CgpAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=7E2TpT
 wENCgP1MRD7/Eziybb/Th2bGLOCc12fC88q6E=; b=q+xW6eiNUtLhXYj2T6MpV1
 DO8WdVfGXHlYR8Od+K4ZToowmTlu5f3/0IOeXhM0VokgQyeONZ1a7SFy1qvQ09sS
 RJo277PYsWoBr9JZzYUX1G8wrKf8zaGzsV3XCIqtSdwweXbLBWtRqbsDZDQyVKT8
 BBUNVnMhxMxo6H0jMMQkFW58R8n+XHpB9KIkoJH+b3JN5yZPUEtHDIGdPI5GMBV/
 YEWDRRva+BF230lJgh67fWaDUDKu+WGR40H/0ooi009xOpo+5NNKgJ0NOx8/e41Q
 pUtQwoztthAvbEQgK30HoL9BjVCTgbU5uRqaC5EzMJnejxYGnCQB2JqhHaGLlKxw
 ==
X-ME-Sender: <xms:VGP3XUY8i-9w8CG05Yj5PzjIikoPOmggk-UF_ctcBee-8Lck051Ulg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddthedgvddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggv
 rhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:VGP3Xbt6ohxrttMcaXVI6FmO7AAaqrpN7X7GqTN0Wk7tLzLIlYh-yg>
 <xmx:VGP3XRtN1Yg5tIbLqODohz6GBDmEP1smxIZbRdwPBUzowBcnBB7ffA>
 <xmx:VGP3XQe2jz2UyPBCXhDoFD1nNHKHF_HUD8nsB_jR_XrJ_cT8fDkXMA>
 <xmx:VmP3XVbpO_j_XIh2rB_1sEeclFhYceWTGR5NP61U8O2Mv5Qzxs8Stw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 690A280063;
 Mon, 16 Dec 2019 05:58:28 -0500 (EST)
Date: Mon, 16 Dec 2019 11:58:27 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 09/12] drm/rockchip: lvds: Add PX30 support
Message-ID: <20191216105827.rxkfbwemkqw446jx@gilmour.lan>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
 <20191213181051.25983-10-miquel.raynal@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20191213181051.25983-10-miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_025831_577554_F30A935B 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============3093668142488151188=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3093668142488151188==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="akf2tzjwfz7nnjic"
Content-Disposition: inline


--akf2tzjwfz7nnjic
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, Dec 13, 2019 at 07:10:48PM +0100, Miquel Raynal wrote:
> +static int px30_lvds_grf_config(struct drm_encoder *encoder,
> +				struct drm_display_mode *mode)
> +{
> +	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
> +	u8 nhsync = !(mode->flags & DRM_MODE_FLAG_PHSYNC);
> +	u8 nvsync = !(mode->flags & DRM_MODE_FLAG_PVSYNC);
> +	u8 ndclk = !(mode->flags & DRM_MODE_FLAG_PCSYNC);
> +	int ret;
> +
> +	if (lvds->output != DISPLAY_OUTPUT_LVDS) {
> +		DRM_DEV_ERROR(lvds->dev, "Unsupported display output %d\n",
> +			      lvds->output);
> +		return -EINVAL;
> +	}
> +
> +	if (nhsync ^ nvsync) {
> +		DRM_DEV_ERROR(lvds->dev, "Unsupported Hsync/Vsync polarity\n");
> +		return -EINVAL;
> +	}
> +
> +	/* Set format */
> +	ret = regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON1,
> +				 PX30_LVDS_FORMAT(lvds->format),
> +				 PX30_LVDS_FORMAT(lvds->format));
> +	if (ret)
> +		return ret;
> +
> +	/* Control Hsync/Vsync polarity */
> +	ret = regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON0,
> +				 PX30_LVDS_TIE_CLKS(1),
> +				 PX30_LVDS_TIE_CLKS(1));
> +	if (ret)
> +		return ret;
> +
> +	/* Set Hsync/Vsync polarity */
> +	ret = regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON0,
> +				 PX30_LVDS_INVERT_CLKS(1),
> +				 PX30_LVDS_INVERT_CLKS(nhsync));
> +	if (ret)
> +		return ret;

I don't know the hardware but it seems pretty weird to me. hsync and
vsync in LVDS are not clocks (or even signals), they're a bit in the
payload. Is there any explanation in the datasheet (or even a
datasheet in the first place)?

Maxime

--akf2tzjwfz7nnjic
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfdjUgAKCRDj7w1vZxhR
xRBYAP44GLCelEvFF7JRcxbERsDpTT+xk8XxtfgoWUly8jPqegD+Jrne3aLXYopK
ogFPLh6TeB2oQ1+pAWNgKDtT5Zntxwo=
=SVmk
-----END PGP SIGNATURE-----

--akf2tzjwfz7nnjic--


--===============3093668142488151188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3093668142488151188==--

