Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC62D166488
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:25:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vwOiEJo1fdLjjkgr2h6Wa6VLkfyZUHJ6FRydeYS1FK0=; b=caWZwLI/A5BQJ21qOkSO3R/C1
	8skZmu9ABveLP5zZU8I5ZTzavpn1NBYxPwhUmjvxTGLcp1RZphzf/i2UONjA/SVOnN6piMQ9ov6vz
	BsFRA1dCafYVd//uE+TJVsAjAFDJvQOC9sWgwc5JcYKEE0PB3OH0sAoDGAizpTifBdhjVIL2izwjp
	XHYpgFkRKxP0Qm/RcswEhcmJ2JM9N/zYy4s5G30ccOQHYsfZvIlNS86LHl3bTRcT+5x4ZL5aA0u8f
	9so8zFIXuWvEv/mqr0kSydCn0atuePrshq0Zfga2PHfxqyx3m4w+sCUnAekTBEnI8POT4Z5vaMAkS
	KVZkdxupw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pZQ-0005ET-20; Thu, 20 Feb 2020 17:25:04 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pXu-0003VD-QS
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:23:33 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id BBB4021E29;
 Thu, 20 Feb 2020 12:23:25 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 20 Feb 2020 12:23:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=vbvI29EQ0v8H6J4KfL2LWXgZy9K
 YsqNtddfsF3hvK68=; b=ajY+f6+oQcGeRKarwVpE9Yi1OOem4Ka7HuzwJqJwqyn
 nRWtiEhP6XHwd0kci0kCV+LE3tGIdAOR79YosPBczTLT3pa3r5Pr9c+nH0VLz3Cm
 azkXzJSb33yaxX1fIFuTeu290KZKyjUs+CHNwmXuvRz1wM5QaSVf2uvyfLqlcGgh
 4KD5uHZGi3FQKSZ6lbMCzD4H5uY9zdZsmj2SVerUEFTTdMb+4gxNzE7ojqhFOCe9
 Gd1CRT0asFYI5DXTLors4fH7Zf+F8NKXedLaP4O1ZOgPWMNuaf2jVdpnNScLy+An
 XltbPA70DuvRE6AyvUTzf52EYBlmPqRaVQnEasdUz0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=vbvI29
 EQ0v8H6J4KfL2LWXgZy9KYsqNtddfsF3hvK68=; b=fiZBiIh2MzQrDMzZaPhzVZ
 XUs09j+V726JW9G8OmfADC8oJT1dVdLoNkbvMkrylFXB8SUBK3/O/CfM7iw7xWB7
 TDPkz1XL7Dv6/au5VA1OsQU8LLcNWMvWP6vRCB/yGHJFBteA1VNSdOma5H7VTsPu
 QYYV6GCJIMETbYphucDpRSaWA8R1bH00B5eoWy8kPMuEqxtS99wLRvfzh3pJ1X9Y
 QvWpfZ1vt5ywJ7gdQy5QckmelIHiKY1uSWvPvuPaYtgPirWzGSuLSeqN716teg+C
 tpsv8cmP5+w/7NMlAloMv6/90u8iH2oCNy2MOLO6xx/hA1z2fZxnRNk0LCBPrrqA
 ==
X-ME-Sender: <xms:jMBOXpoTszGApMQqaWMuP_TfBQNkNYyb7fCcmlslDqMVV_o3_ctncQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkedvgddutddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:jMBOXsYSqqXSTc0ZkfbaHClmHG83dM5_0KmNul_PJGIWZui7_nB51g>
 <xmx:jMBOXqAhxezaAXxV1RwoHrTTdvhQV4eEgvP8moiqpgTfrREUqbYT4A>
 <xmx:jMBOXme_vgWaV1dFv66xNiuIeJbqfyeqrI7CphkbP4KYUmwL0cj7gw>
 <xmx:jcBOXhG6PMBYwIQkIavaIA1kfyU_zcpnZ2Wa5cc_hmrbfrxRkYZztw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7E5D3328005D;
 Thu, 20 Feb 2020 12:23:24 -0500 (EST)
Date: Thu, 20 Feb 2020 18:23:23 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Andrey Lebedev <andrey.lebedev@gmail.com>
Subject: Re: [PATCH 3/5] ARM: dts: sun7i: Add LVDS panel support on A20
Message-ID: <20200220172323.lgeb4zqmbg6kcvr6@gilmour.lan>
References: <20200210195633.GA21832@kedthinkpad>
 <20200219180858.4806-1-andrey.lebedev@gmail.com>
 <20200219180858.4806-4-andrey.lebedev@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200219180858.4806-4-andrey.lebedev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_092331_054104_33956094 
X-CRM114-Status: GOOD (  14.02  )
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
Content-Type: multipart/mixed; boundary="===============8771365904362374799=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8771365904362374799==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d6sfey5dsbwbndvm"
Content-Disposition: inline


--d6sfey5dsbwbndvm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 19, 2020 at 08:08:56PM +0200, Andrey Lebedev wrote:
> From: Andrey Lebedev <andrey@lebedev.lt>
>
> Define pins for LVDS channels 0 and 1, configure reset line for tcon0 and
> provide sample LVDS panel, connected to tcon0.
>
> Signed-off-by: Andrey Lebedev <andrey@lebedev.lt>
> ---
>  arch/arm/boot/dts/sun7i-a20.dtsi | 30 ++++++++++++++++++++++++++----
>  1 file changed, 26 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a20.dtsi
> index 92b5be97085d..d50263c1ca9a 100644
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
> @@ -404,11 +405,12 @@
>  		};
>
>  		tcon0: lcd-controller@1c0c000 {
> -			compatible = "allwinner,sun7i-a20-tcon";
> +			compatible = "allwinner,sun7i-a20-tcon0",
> +				     "allwinner,sun7i-a20-tcon";
>  			reg = <0x01c0c000 0x1000>;
>  			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
> -			resets = <&ccu RST_TCON0>;
> -			reset-names = "lcd";
> +			resets = <&ccu RST_TCON0>, <&ccu RST_LVDS>;
> +			reset-names = "lcd", "lvds";
>  			clocks = <&ccu CLK_AHB_LCD0>,
>  				 <&ccu CLK_TCON0_CH0>,
>  				 <&ccu CLK_TCON0_CH1>;
> @@ -444,6 +446,11 @@
>  					#size-cells = <0>;
>  					reg = <1>;
>
> +					tcon0_out_lvds: endpoint@0 {
> +						reg = <0>;
> +						allwinner,tcon-channel = <0>;
> +					};
> +

This isn't necessarily true. The endpoint would be the same for an RGB
panel for example. I've followed what we're doing elsewhere and
removed that endpoint entirely while applying, thanks!
Maxime

--d6sfey5dsbwbndvm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXk7AiwAKCRDj7w1vZxhR
xbrdAP9X63/5hBLxm5f2JSxXpC2INrkCYBsgrd+YWuJGEwqb2wEAmkyx5BXcSBsi
+JmpgeKEkfyHNnXY6iu8ddp9SayGMgI=
=1aoH
-----END PGP SIGNATURE-----

--d6sfey5dsbwbndvm--


--===============8771365904362374799==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8771365904362374799==--

