Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8569A1643E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 13:07:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tS72sc2gNkijlafWoRNPaSK4SAciB8vG6HmfRz40RMw=; b=jqVLQ+O+CsqQ5SgmOObvsoKoN
	SBj5t1ZcncLmI0FyRctYq0L4IyjDmWOQLxMPOjDenu8YFtP2drvF5c8MVdyDeG9skbsBah5p6/nqM
	KrdF+NfdXrS4RS87AiY+64SSJlCBk7hi1GiX5TA+Pixbmie3XsAY/7rv3hp422ZG1BAD8KDhjPIEM
	RNKf56N6ISNPSsdoIaJcuHCEO+CwD4iRnfuI7hEym+Kj2MzHbHd8q2bYO4SPb/CVggbzg4chvOOw2
	GXiZEzXV1b+6eV+rxGVI761egB/EfPuTIfy24jzP3gfP+pQtr5p7TzvoN9zj3pOg4Sat2DJOIyGtt
	X8WmrEjDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4O8A-0002Qf-Ip; Wed, 19 Feb 2020 12:07:06 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4O81-0002PL-C1
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 12:06:59 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id ABBEB216C5;
 Wed, 19 Feb 2020 07:06:47 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 19 Feb 2020 07:06:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=0b7LbPDRm66st08CrUavOtRc+x1
 odA9gkGMkT5ktnmU=; b=k7kORyPNOJ4/muCan8ztd46ndp40yfqjPuYND55cXgK
 Q/LxEy7BGBvzldTzVh0xnnHyeFuwJo5PQiGFt7tA0PisvH0nCMHGcPJGPYlSaK6c
 3HcyghIqWRFT/BqR0FEkdR8C4EHwv3YNJuMWqdThnNbU2xp20s3nH1CKoY8cd0DP
 P5GO5zEAuZResXqG2ZzVwQIMJgP9Vm/SIsBQYzZB46n/CJzkdcYtSAaNichj7rPD
 /tpZoEWklRnS+jWfq0EjUYhzoVYw/zh3tEPnCTTpP0khdr8S3JBselFAGyz808hC
 euBM+DvJJxaIw7eN3x0Kv4TcPKYkZyyf1js8H/X9Uag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=0b7LbP
 DRm66st08CrUavOtRc+x1odA9gkGMkT5ktnmU=; b=p0/CFXzGVcl+eymOIW0bNu
 7G9DZWCUvkWv1zmpJ4WoSNh10axUg8wh3pmPqmfKhebJcHhmeEyOvOGZUH01Xu2R
 o2vFAC1mgTL9kSihugk4Pd9nhHs5vUa9zsSUTrZ/C8pS6h1ncaKNS7icWSMN5DWb
 5C9CyCAFKC36eK3IoWVZMcx5rLqo7T+78Yb0Bfs3BUl9W0V2h5Nd6SVaTXdS3xhx
 aHQzlFEwlnWEZCtKhC/qN6d1jPxWvW8bbc3rNBImku3RPE8Gz+JnZDnKgJgz1PBl
 LTNdipdnsGWgvpRTbXvWPoTS9NinWiWrHejfc3ATl8ecZ0y5GwHeijRQI0SWcDcQ
 ==
X-ME-Sender: <xms:1iRNXrob7Z3bWy1Tr7SqEPEogGObTqLXBw_UTg7-N28j9L4KgH0Ujg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkedtgdefiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:1iRNXkOxM9fK5R2wKUikCy6erQ1SdGUldRMwNggdz8hX9QC2q8jDSA>
 <xmx:1iRNXvyeCPTVypJrE1llUBTIasEVOn6IxEbor02W8UZ24jPhGQLd9w>
 <xmx:1iRNXju0W7FxgCJnDcB1dywqQCWoNEjnMogJk2QtTO1wEULYxv-TEA>
 <xmx:1yRNXvJPUfDjKIxCeuDe86diDXnSB6wBWymARLND8nSi4L5BrbuUJQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4C19A3280064;
 Wed, 19 Feb 2020 07:06:46 -0500 (EST)
Date: Wed, 19 Feb 2020 13:06:44 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Andrey Lebedev <andrey.lebedev@gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: sun7i: dts: Add LVDS panel support on A20
Message-ID: <20200219120644.b74jmusyf4ny7euh@gilmour.lan>
References: <20200210195633.GA21832@kedthinkpad>
 <20200212222355.17141-2-andrey.lebedev@gmail.com>
 <20200213094304.hf3glhgmquypxpyf@gilmour.lan>
 <20200213200823.GA28336@kedthinkpad>
 <20200214075218.huxdhmd4qfoakat2@gilmour.lan>
 <20200214084358.GA25266@kedthinkpad>
 <20200214085351.2whnfyulrmyex2va@gilmour.lan>
 <20200214213231.GA6583@kedthinkpad>
 <20200217175135.ldtqji4mrwz2wbn5@gilmour.lan>
 <20200218175033.GA25850@kedthinkpad>
MIME-Version: 1.0
In-Reply-To: <20200218175033.GA25850@kedthinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_040657_553897_1574B2CF 
X-CRM114-Status: GOOD (  21.88  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: multipart/mixed; boundary="===============2522770502965707868=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2522770502965707868==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pppyecrcyak66akq"
Content-Disposition: inline


--pppyecrcyak66akq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 18, 2020 at 07:50:33PM +0200, Andrey Lebedev wrote:
> On Mon, Feb 17, 2020 at 06:51:35PM +0100, Maxime Ripard wrote:
> > > diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.h b/drivers/gpu/drm/sun4i/sun4i_tcon.h
> > > index cfbf4e6c1679..bc87d28ee341 100644
> > > --- a/drivers/gpu/drm/sun4i/sun4i_tcon.h
> > > +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.h
> > > @@ -235,6 +235,8 @@ struct sun4i_tcon_quirks {
> > >  	bool	needs_de_be_mux; /* sun6i needs mux to select backend */
> > >  	bool    needs_edp_reset; /* a80 edp reset needed for tcon0 access */
> > >  	bool	supports_lvds;   /* Does the TCON support an LVDS output? */
> > > +	/* "compatible" string of TCON that exclusively supports LVDS */
> > > +	const char *lvds_compatible_tcon;
> >
> > However this is far more complicated than needed, you can simply add a
> > new quirks structure associated to the tcon0 compatible in
> > sun4i_tcon_of_table, and that will do
>
> Aha! Does this look good to you?
>
> From 4ad2978e404c63d4cca1b7890bc5bdd4d1e8965d Mon Sep 17 00:00:00 2001
> From: Andrey Lebedev <andrey@lebedev.lt>
> Date: Tue, 18 Feb 2020 19:47:33 +0200
> Subject: [PATCH] Mark tcon0 to be the only tcon capable of LVDS on sun7i-a20
>
> This allows to avoid warnings about reset line not provided for tcon1.
>
> Signed-off-by: Andrey Lebedev <andrey@lebedev.lt>
> ---
>  arch/arm/boot/dts/sun7i-a20.dtsi   |  6 ++++--
>  drivers/gpu/drm/sun4i/sun4i_tcon.c | 14 ++++++++++++--
>  2 files changed, 16 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a20.dtsi
> index dc4f3f249aee..d50263c1ca9a 100644
> --- a/arch/arm/boot/dts/sun7i-a20.dtsi
> +++ b/arch/arm/boot/dts/sun7i-a20.dtsi
> @@ -405,7 +405,8 @@
>  		};
>
>  		tcon0: lcd-controller@1c0c000 {
> -			compatible = "allwinner,sun7i-a20-tcon";
> +			compatible = "allwinner,sun7i-a20-tcon0",
> +				     "allwinner,sun7i-a20-tcon";
>  			reg = <0x01c0c000 0x1000>;
>  			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
>  			resets = <&ccu RST_TCON0>, <&ccu RST_LVDS>;
> @@ -460,7 +461,8 @@
>  		};
>
>  		tcon1: lcd-controller@1c0d000 {
> -			compatible = "allwinner,sun7i-a20-tcon";
> +			compatible = "allwinner,sun7i-a20-tcon1",
> +				     "allwinner,sun7i-a20-tcon";
>  			reg = <0x01c0d000 0x1000>;
>  			interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
>  			resets = <&ccu RST_TCON1>;

This needs to be in a separate patch

> diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> index 800a9bd86112..d9605d331010 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> @@ -1479,7 +1479,7 @@ static const struct sun4i_tcon_quirks sun6i_a31s_quirks = {
>  	.dclk_min_div		= 1,
>  };
>
> -static const struct sun4i_tcon_quirks sun7i_a20_quirks = {
> +static const struct sun4i_tcon_quirks sun7i_a20_tcon0_quirks = {
>  	.supports_lvds		= true,
>  	.has_channel_0		= true,
>  	.has_channel_1		= true,
> @@ -1489,6 +1489,15 @@ static const struct sun4i_tcon_quirks sun7i_a20_quirks = {
>  	.setup_lvds_phy		= sun4i_tcon_setup_lvds_phy,
>  };
>
> +static const struct sun4i_tcon_quirks sun7i_a20_tcon1_quirks = {
> +	.supports_lvds		= false,
> +	.has_channel_0		= true,
> +	.has_channel_1		= true,
> +	.dclk_min_div		= 4,
> +	/* Same display pipeline structure as A10 */
> +	.set_mux		= sun4i_a10_tcon_set_mux,
> +};
> +
>  static const struct sun4i_tcon_quirks sun8i_a33_quirks = {
>  	.has_channel_0		= true,
>  	.has_lvds_alt		= true,
> @@ -1534,7 +1543,8 @@ const struct of_device_id sun4i_tcon_of_table[] = {
>  	{ .compatible = "allwinner,sun5i-a13-tcon", .data = &sun5i_a13_quirks },
>  	{ .compatible = "allwinner,sun6i-a31-tcon", .data = &sun6i_a31_quirks },
>  	{ .compatible = "allwinner,sun6i-a31s-tcon", .data = &sun6i_a31s_quirks },
> -	{ .compatible = "allwinner,sun7i-a20-tcon", .data = &sun7i_a20_quirks },
> +	{ .compatible = "allwinner,sun7i-a20-tcon0", .data = &sun7i_a20_tcon0_quirks },
> +	{ .compatible = "allwinner,sun7i-a20-tcon1", .data = &sun7i_a20_tcon1_quirks },
>  	{ .compatible = "allwinner,sun8i-a23-tcon", .data = &sun8i_a33_quirks },
>  	{ .compatible = "allwinner,sun8i-a33-tcon", .data = &sun8i_a33_quirks },
>  	{ .compatible = "allwinner,sun8i-a83t-tcon-lcd", .data = &sun8i_a83t_lcd_quirks },

And we need to support older DT as well, so you shouldn't remove the
older TCON compatible and its structure. Make sure to document the new
compatibles too.

Maxime

--pppyecrcyak66akq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXk0k1AAKCRDj7w1vZxhR
xYhCAQCJoj0KSbx3DIdZ+6CIaEX2rZa7wJltBAhkCohwZJ8QqAEAotjnImKfiz/v
GGord1FEAN/NstQoI/n/crBrpv43Iww=
=Wm5B
-----END PGP SIGNATURE-----

--pppyecrcyak66akq--


--===============2522770502965707868==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2522770502965707868==--

