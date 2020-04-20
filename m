Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3C51B0AB0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:51:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hr4nQedje4hEJMidsdDVwkPldhWd6JKwBAC8jWqkB4M=; b=fyoGcfoAUMQVr2x0Uf4M8l9mx
	zNn7QwY5EgtyUqaYnUNiJ2gJjfs25s363lToYpExNvV+V+hOhbslzDW2bd1fEtBOnAIydF8grNIMu
	Fpgrgm6ZdzGZ7IgscnIMSzWpnumxJqnG7Fi/x1UBl9ASxjXMkPUjl9h6S2UmG39uPPwKB9JxRPhGG
	RO6wQHjRnicyUflKUSTmV8jXGa5VNowPUJ8tEdCpj0Xyk2OxWv565oMoxOvJLQjKEE6HW24sDNGLg
	c0G9E2u20yhsJjeaDi7Y9E+DuUvI18Ote8jeziYLWoS8iNTNdjrpYkT8gCxQ3IOg0f4atUyXDWNtI
	TbaiQrKoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVtI-0002j2-Vq; Mon, 20 Apr 2020 12:51:12 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVt6-0002hg-HX
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:51:01 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 467AB457;
 Mon, 20 Apr 2020 08:50:56 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 20 Apr 2020 08:50:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=tBOAlHqUjXoeb6fAkzGVdh0v8Dq
 4mrwbDL50ipwyYfc=; b=ZM90db3vCr9XtIH1GMdN+sK2FnPLtn3Qc0kasZSG/Px
 jF/8Y6lt9gWqPgFppBzrFwpst4InLd6Hu4NVgU7XfWgT1TfuwpQksCKHEU97NHvG
 tYzCi2Koj2eUbxYG5vpLjg5GhA7pODW4BHNK8oWSDX24sfREIzocc7E5rRv4iBWf
 cX/TcA85AMAzbf310UIJQJU5qRRcyw9AwJaTH5KOhLWVv4iX8OuYjALH+D1HlNG3
 BWgfpOhNcZ0RXbHWlna4eQkaPTIGph3GZzh1bMoGxSPxrTilg4rAW7Xeabf2UEAz
 bhqyJmM76arzp1EdmHdDwnVhEsmi1h/a/ZoKr5tx5QA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=tBOAlH
 qUjXoeb6fAkzGVdh0v8Dq4mrwbDL50ipwyYfc=; b=sDMoe/wDwHoQpIqtDFp7/0
 skscWuXgRGF7dAvgXoGqIFmrG/PkxZphE+yJjpEtIgxo8D5SUghRxdbFR//JKJcg
 MaC7gui5PSB4eJmgQ8dQKHcjtnzFmPB+GWavgJihDFEo4qmHRjhjLem+ZxEHBORo
 QPKi/2WGiVC1KJPMjhrrHUby6H0+4K6tBklri98lREwT4eWoMbFZ/RyyP6akuZ8J
 5fDYp1ufjmxRnGr9KFRhw4wUVKkB+aZOKw4T7Bhu7z4YCgWE9kuX2jlrZpiAfRRH
 pNJR2LqpNmnZIza9WB+xs/qf9JTPowMHumvBJXld6dDKhGuNe0XXKgSeAVn2JHLA
 ==
X-ME-Sender: <xms:r5qdXgkF3FOSW1pgDJ4gDRl6TgmfqU9oLai7Fx6_f33TCDMN8ezZKg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeefgdehjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:r5qdXsfdwWyT63VBq93b3u3N9Et1z9QVzfjhVhZ2zMmV7feIpRtPXA>
 <xmx:r5qdXqYlO3Dpygwd_tFB87AxvzcmDnwuDVVR9FHU8JgsInGO8zftGw>
 <xmx:r5qdXgbiqBCAqRRYx-k2Ci4KlN7WcA1WUDZU8zkJw8EoNLIJAmtn2w>
 <xmx:r5qdXgkUAlMVbC8j0r1B2GZ-c7ZFW3ZqDuOP8cptLqGFouGa93XcBA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3A3A73065C04;
 Mon, 20 Apr 2020 08:50:55 -0400 (EDT)
Date: Mon, 20 Apr 2020 14:50:54 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Priit Laes <plaes@plaes.org>
Subject: Re: [PATCH 2/4] clk: sunxi-ng: a20: export a regmap to access the
 GMAC register
Message-ID: <20200420125054.k3mnegy6mjgq2lcd@gilmour.lan>
References: <20200417221730.555954-1-plaes@plaes.org>
 <20200417221730.555954-3-plaes@plaes.org>
MIME-Version: 1.0
In-Reply-To: <20200417221730.555954-3-plaes@plaes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_055100_620096_5504A847 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6951857262101064549=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6951857262101064549==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ahl7sjwrudp4rb5o"
Content-Disposition: inline


--ahl7sjwrudp4rb5o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 18, 2020 at 01:17:28AM +0300, Priit Laes wrote:
> Only GMAC register is allowed to be written, read access to registers
> is not restricted.
>=20
> Export a regmap of the CCU.
>=20
> Signed-off-by: Priit Laes <plaes@plaes.org>
> ---
>  drivers/clk/sunxi-ng/ccu-sun4i-a10.c | 31 ++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
>=20
> diff --git a/drivers/clk/sunxi-ng/ccu-sun4i-a10.c b/drivers/clk/sunxi-ng/=
ccu-sun4i-a10.c
> index 839e9d5a1cff..cba51c2c7eba 100644
> --- a/drivers/clk/sunxi-ng/ccu-sun4i-a10.c
> +++ b/drivers/clk/sunxi-ng/ccu-sun4i-a10.c
> @@ -1426,6 +1426,30 @@ static const struct sunxi_ccu_desc sun7i_a20_ccu_d=
esc =3D {
>  	.num_resets	=3D ARRAY_SIZE(sunxi_a10_a20_ccu_resets),
>  };
> =20
> +/*
> + * Add regmap for the GMAC driver (dwmac-sun8i) to allow access to
> + * GMAC configuration register.
> + */
> +
> +#define SUN7I_A20_GMAC_CFG_REG 0x164
> +static bool sun7i_a20_ccu_regmap_accessible_reg(struct device *dev,
> +						unsigned int reg)
> +{
> +	if (reg =3D=3D SUN7I_A20_GMAC_CFG_REG)
> +		return true;
> +	return false;
> +}
> +
> +static struct regmap_config sun7i_a20_ccu_regmap_config =3D {
> +	.reg_bits	=3D 32,
> +	.val_bits	=3D 32,
> +	.reg_stride	=3D 4,
> +	.max_register	=3D 0x1f4, /* clk_out_b */

As far as I know, clk_out_b is a register that is also modified through that
clock driver. How do you handle the concurrent accesses?

Maxime

--ahl7sjwrudp4rb5o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXp2argAKCRDj7w1vZxhR
xeXVAQDmNQz5L1EFRPYLu4y1O4Nl7C6aA+PFGDx33HStDUQvbAD/SCdOUUmrs/D3
9HUgc0icssQhh/jpfcpB8M/MW4Fefg0=
=eu9x
-----END PGP SIGNATURE-----

--ahl7sjwrudp4rb5o--


--===============6951857262101064549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6951857262101064549==--

