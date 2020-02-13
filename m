Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7612715BBED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 10:43:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AHuXoT7rRUTiUpiDPHYh/5EapqUyYF35AlIGiHfywys=; b=iKabBYZ7mj0EQcMnNiZk4k1x5
	r8wRZqIOTS8LPvL3heXCNaephgz8vf4C/TE7GL7fw3HcAM/0238Zfk3X6ldlGtctfZVYTErlJ/7/b
	fx/+8427NFsn4GFtR64YFQ6A1fJVY069/ZmCk06R530/RZt1TXW23WQW2+r9exZ8JbHLOAoHhKbnA
	A6teMxBGSwkKCnjJZEoQAxFbZ2KuSPe/IPxBSm9oT/LzIp/CD4c6BISH+qF/kkbVZWqa6AnxZSGl4
	d6MIbnVTkrxmFj0kIgCInSW+lwlb0oxdJWylYYRM/u4kNtwNbe9LOWX0p+DfCj1M54W/KwAYQixLc
	gQHqDOkqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2B28-000807-AN; Thu, 13 Feb 2020 09:43:44 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2B1Y-0007gU-DQ
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 09:43:10 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 4EE0721F8E;
 Thu, 13 Feb 2020 04:43:07 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 13 Feb 2020 04:43:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=mraLXR1UzZtD3bIaM15nHcYWwvQ
 LOE+cfoM1QmqErKE=; b=o8B+D7eXShRldG2XErB+8R+Wmqoa06qXCcf+BnBa+AI
 LfZQQggfxmWFW2+GvwCiMvpwdgs/LQOahAJEvCP914588AkZ2QwYON0CeEvZw0b9
 ZSNvXrrTJgptXcVYe4UU9iwNX0Pwwu0JVddpUNY1Sfm2yQ5SJNTPSGQXSxvAttPN
 j4QmaFnLP1SG82MWk3PRx+SaiKvXzdgnj4+ae764VkzGA2b+ItNFBRsOnXEztnTc
 nkRhbVOdJGqUJk1B1tNOI4BavCXfPjSjnX5UYn6n+FKYLWwQ3IityLC4SL14xteK
 MA/CzvK+882O5ccKpsZh9kJxsa3HWcV0JeFvEI+esYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=mraLXR
 1UzZtD3bIaM15nHcYWwvQLOE+cfoM1QmqErKE=; b=EmmPIq3bT5Ve+6LefZTiyh
 ejdDpz0Gj/W0/zIjZyfBTR8R2I/f/WRHLVAETa9iBQCYFxtuWUrpUjJPykSpfLor
 pOop7sY58AOcNFzt2rFXI+WFExCYMflVMD90R7veW2dl8Y9oxvgaqar0e1a2pFAZ
 NOMhvAI+wLylBGRsjyJXU1/LIzed8WJNa7OUXMVh9nRgvFv8wOkNXyODC2+oujWD
 np8bGTGFbeHISNe9Sb7O6AH7k8CUrLr59iNdGvKGoNr1EBq2ux82fp/1Fv9/RcyU
 N2ttnu+pSkE6WjsWtiNDqAAmFvPgGGOlk8W87aIlEyB5Y/5o0ZA14M511vMvx/dg
 ==
X-ME-Sender: <xms:KhpFXtJtYSwlwPuc5Kr4nCDqhdgJJVJ0VrNNpNjAyv6OBKJeBtMiYA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieekgddtiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:KhpFXnaeMp-s2_3W8oVdM_ywlRLPR8QA95LPnZPSLsJRv2yJBuiTRA>
 <xmx:KhpFXu1zfEq1wI8irD8HTXkfb80zvWzZ5USE7loNaDMDkStaNrYKWg>
 <xmx:KhpFXvlzNXl5PT-Xy2KwTz5Q0BbznCtjyz6tlCkUcY2CPwh88Hvscw>
 <xmx:KxpFXpIoVcx1b4i_yvT630G23TUOI1KHxqWj0N8Rzmzj6swj-LxRTg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2C73D3280063;
 Thu, 13 Feb 2020 04:43:06 -0500 (EST)
Date: Thu, 13 Feb 2020 10:43:04 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: andrey.lebedev@gmail.com
Subject: Re: [PATCH v2 2/2] ARM: sun7i: dts: Add LVDS panel support on A20
Message-ID: <20200213094304.hf3glhgmquypxpyf@gilmour.lan>
References: <20200210195633.GA21832@kedthinkpad>
 <20200212222355.17141-2-andrey.lebedev@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200212222355.17141-2-andrey.lebedev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_014308_632840_F00369BF 
X-CRM114-Status: GOOD (  16.20  )
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
Content-Type: multipart/mixed; boundary="===============7789009675951657197=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7789009675951657197==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zztmkqxcnfnc34uw"
Content-Disposition: inline


--zztmkqxcnfnc34uw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 13, 2020 at 12:23:57AM +0200, andrey.lebedev@gmail.com wrote:
> From: Andrey Lebedev <andrey@lebedev.lt>
>
> Define pins for LVDS channels 0 and 1, configure reset line for tcon0 and
> provide sample LVDS panel, connected to tcon0.
>
> Signed-off-by: Andrey Lebedev <andrey@lebedev.lt>

And this prefix should be ARM: dts: sun7i ;)

> ---
>  arch/arm/boot/dts/sun7i-a20.dtsi | 45 +++++++++++++++++++++++++++++---
>  1 file changed, 42 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a20.dtsi
> index 92b5be97085d..b05fdf8df32e 100644
> --- a/arch/arm/boot/dts/sun7i-a20.dtsi
> +++ b/arch/arm/boot/dts/sun7i-a20.dtsi
> @@ -47,6 +47,7 @@
>  #include <dt-bindings/dma/sun4i-a10.h>
>  #include <dt-bindings/clock/sun7i-a20-ccu.h>
>  #include <dt-bindings/reset/sun4i-a10-ccu.h>
> +#include <dt-bindings/pinctrl/sun4i-a10.h>
>
>  / {
>  	interrupt-parent = <&gic>;
> @@ -407,8 +408,8 @@
>  			compatible = "allwinner,sun7i-a20-tcon";
>  			reg = <0x01c0c000 0x1000>;
>  			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
> -			resets = <&ccu RST_TCON0>;
> -			reset-names = "lcd";
> +			resets = <&ccu RST_TCON0>, <&ccu RST_LVDS>;
> +			reset-names = "lcd", "lvds";
>  			clocks = <&ccu CLK_AHB_LCD0>,
>  				 <&ccu CLK_TCON0_CH0>,
>  				 <&ccu CLK_TCON0_CH1>;
> @@ -444,6 +445,11 @@
>  					#size-cells = <0>;
>  					reg = <1>;
>
> +					tcon0_out_lvds: endpoint@0 {
> +						reg = <0>;
> +						remote-endpoint = <&lvds_in_tcon0>;
> +						allwinner,tcon-channel = <0>;
> +					};

A new line here would be nice

>  					tcon0_out_hdmi: endpoint@1 {
>  						reg = <1>;
>  						remote-endpoint = <&hdmi_in_tcon0>;
> @@ -686,6 +692,19 @@
>  			};
>  		};
>
> +		lvds_panel: panel@1c16500 {
> +			compatible = "panel-lvds";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +
> +			port {
> +				lvds_in_tcon0: endpoint {
> +					remote-endpoint = <&tcon0_out_lvds>;
> +				};
> +			};
> +		};
> +

There's no point in creating that panel.

>  		spi2: spi@1c17000 {
>  			compatible = "allwinner,sun4i-a10-spi";
>  			reg = <0x01c17000 0x1000>;
> @@ -872,7 +891,7 @@
>  			gmac_rgmii_pins: gmac-rgmii-pins {
>  				pins = "PA0", "PA1", "PA2",
>  				       "PA3", "PA4", "PA5", "PA6",
> -				        "PA7", "PA8", "PA10",
> +					"PA7", "PA8", "PA10",
>  				       "PA11", "PA12", "PA13",
>  				       "PA15", "PA16";
>  				function = "gmac";
> @@ -1162,6 +1181,26 @@
>  				pins = "PI20", "PI21";
>  				function = "uart7";
>  			};
> +
> +			/omit-if-no-ref/
> +			lcd_lvds0_pins: lcd_lvds0_pins {

underscores in the node names will create a dtc warning at
compilation, you should use lcd-lvds0-pins instead.

> +				allwinner,pins =
> +					"PD0", "PD1", "PD2", "PD3", "PD4",
> +					"PD5", "PD6", "PD7", "PD8", "PD9";
> +				allwinner,function = "lvds0";
> +				allwinner,drive = <SUN4I_PINCTRL_10_MA>;
> +				allwinner,pull = <SUN4I_PINCTRL_NO_PULL>;

Those properties are deprecated and should be replaced by pins and
functions. allwinner,drive and allwinner,pull are at their default
values and can be dropped.

This will create a spurious warning message for TCON1, since we
adjusted the driver to tell it supports LVDS, but there's no LVDS
reset line, so we need to make it finer grained.

Maybe adding a tcon0 / tcon1 compatible? Chen-Yu, any thought?

Maxime

--zztmkqxcnfnc34uw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkUaKAAKCRDj7w1vZxhR
xWvqAQDWlCEogDZ5hH+fBXPvo6T5UizTKCW8akmEaSCXi1OH0AEAuYrejnkpB02Z
OIBbgDk1XuTQW5eT8yzabddVdXyjego=
=IugG
-----END PGP SIGNATURE-----

--zztmkqxcnfnc34uw--


--===============7789009675951657197==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7789009675951657197==--

