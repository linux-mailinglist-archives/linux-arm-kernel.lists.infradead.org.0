Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0BF15D428
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 09:56:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y8uTfbF/UNaeuLYVbwMSQmluhhxoWvNdRTb2yMFBYS0=; b=P6NFLpYandbHZLsdo5CWfPJ/h
	Xa53EXtiimMIwRlFe2ihQRKjx1LxgQMbKlozo4h8KmrekUQXYz+Y5OByhRbJc4JE3Jo3CZGwIkWDW
	VavBCNzKA1MVHmawABcyvEV6uxjlVzxIV5TyCjgRvFpMWOIdCVtVMNs+FtQU1hMAIPCAW5V8Js1ll
	/m5pA0PVtTTNxBttzDE9itUzyRDUaTbh6KXyc6KRg8j/LrY0wIUs0d/1AIE3VII1Pm6Q9sxP6/HBv
	047dJ6FrKp3JhQZiyQ2tj1W6ClgiPVsJ6cZZ7PVHXPCICdr7QO3TK4s/ufkMMXAvFdGY2rgzW4vBw
	rrqtNiqJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2WlP-0003wV-15; Fri, 14 Feb 2020 08:55:55 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2WlF-0003w9-8V
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 08:55:46 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 6905021E50;
 Fri, 14 Feb 2020 03:55:44 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Fri, 14 Feb 2020 03:55:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=/a85ZSsJiYdegZEdtXRPQlGTMav
 avDGNTs4eYyPQzJ8=; b=tywSwr8n8QHjBlblmLU5aBpL1DvLo+5/rV8/BGgkCGm
 CP3fb82G/Ad1WsdxgE/1OtzbjhSapfFXP2/Ai032DiWXJvRYfbvu1UoYjeWC/Mz7
 ZuCIQ4ohLtmlORxknqU08LWF86QuLpJjIsa8eB/23sh7n68WqlHc1DyCFMa7gM15
 TgcGP4+uVnuNWS+HqlMh6L9uRwhVFHRxb62GUv1vZqiZG7PW+IytEE7TASOMKdJ/
 VxEvZ3R95ja5/2Vq/YLvlHeu8LIv1Vi5AgBYblbC04Bocu5qmA3i0BC8lboHJJz3
 a9TttybUoo4ak+b0EcbOxRk4zf5f0IX0FHeD6z8qDJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=/a85ZS
 sJiYdegZEdtXRPQlGTMavavDGNTs4eYyPQzJ8=; b=jwUvz1sGGhS8mq/RYpI6tk
 nHuQY2j3Q2edywj2uBKEOEznYxcF/zHLX6vCM5xpGDS0iIWbXaUd7XpYyvvS98W8
 7EgIE2+gNRDGAyFQtJGMPw7KzpJfNiMCOYfX3iaJabhfMZLE8hUvT46/w692n0Dc
 CAaXyHl2C4ptEl0Wd+6NWqs5Mq/7ygaXwQtA7zEDIuoENsxYvR1WH2Jf+F5vUyj+
 py1QA0qCJYE9+1MrUDtfPLidZq8A44pYk+WJthB/zxbp2uGbTVmn2PHKVR6StT7f
 OdjExoN5fWRXjyP0/AAXzoOZKKnpn1PmogT+r8n69uJUbFox/yw7ag/RLU05NbwQ
 ==
X-ME-Sender: <xms:j2BGXjhI5cXxGTATvjjUPdWBr9ClJNUb4DULFVErDPysoTotsSrsTg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieelgdduvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:j2BGXj9XTDMNi4XblnVWX7Nmc13cKvr0PehX93_WQe3Dm598ZNN8zw>
 <xmx:j2BGXrn_tMYDpMPfhO5wpnGRGbGMuvrr5iN9CFJnYaUOW9d3js-W-A>
 <xmx:j2BGXp0oOddO2V6SE4V3ybGjl-1XJgr02jduVIuTr56zfiUjY36eFQ>
 <xmx:kGBGXifppv6BfQHpLCpbiGe9Ydeauys2uygyhqqTwfW6UbuO37E4Kg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 15C3F3060BD1;
 Fri, 14 Feb 2020 03:55:42 -0500 (EST)
Date: Fri, 14 Feb 2020 09:55:41 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Andrey Lebedev <andrey.lebedev@gmail.com>
Subject: Re: [PATCH v3 3/3] ARM: dts: sun7i: Add LVDS panel support on A20
Message-ID: <20200214085541.mfp72rwyidfkf6wr@gilmour.lan>
References: <20200210195633.GA21832@kedthinkpad>
 <20200213201854.810-3-andrey.lebedev@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200213201854.810-3-andrey.lebedev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_005545_445751_ABEF535F 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============3224015310790303726=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3224015310790303726==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vxvbh5ewfbsbnjy5"
Content-Disposition: inline


--vxvbh5ewfbsbnjy5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 13, 2020 at 10:18:57PM +0200, Andrey Lebedev wrote:
> From: Andrey Lebedev <andrey@lebedev.lt>
>
> Define pins for LVDS channels 0 and 1, configure reset line for tcon0 and
> provide sample LVDS panel, connected to tcon0.
>
> Signed-off-by: Andrey Lebedev <andrey@lebedev.lt>
> ---
>  arch/arm/boot/dts/sun7i-a20.dtsi | 28 ++++++++++++++++++++++++++--
>  1 file changed, 26 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a20.dtsi
> index 92b5be97085d..3b3c366a2bee 100644
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
> +						allwinner,tcon-channel = <0>;
> +					};
> +
>  					tcon0_out_hdmi: endpoint@1 {
>  						reg = <1>;
>  						remote-endpoint = <&hdmi_in_tcon0>;
> @@ -1162,6 +1168,24 @@
>  				pins = "PI20", "PI21";
>  				function = "uart7";
>  			};
> +
> +			/omit-if-no-ref/
> +			lcd_lvds0_pins: lcd-lvds0-pins {

The nodes here should be ordered by alphabetical order

> +				pins =

I'm not sure why you need a new line here

> +					"PD0", "PD1", "PD2", "PD3", "PD4",
> +					"PD5", "PD6", "PD7", "PD8", "PD9";
> +				function = "lvds0";
> +				allwinner,drive = <SUN4I_PINCTRL_10_MA>;

And allwinner,drive is also deprecated and at its default value anyway

Maxime

--vxvbh5ewfbsbnjy5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkZgjQAKCRDj7w1vZxhR
xUpIAQCU4grCWDNWYH8iKUVKxI050gsFcXKfbe4o1PEEMKl+awEA0I7IdRkoWQva
VEi+atkzhqlMoosoisULNuchXIdCPgA=
=6FR0
-----END PGP SIGNATURE-----

--vxvbh5ewfbsbnjy5--


--===============3224015310790303726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3224015310790303726==--

