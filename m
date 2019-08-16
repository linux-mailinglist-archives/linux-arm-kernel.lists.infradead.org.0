Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 507568FCC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 09:51:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+uAWYKRyby3JlCZvWgzh02AvY/zm0EWJgcg218yfN40=; b=aQZbfAdCjGCsY8NQR9K3fJsNc
	DqoEr6vbag9U8ALGN2yxlrJcvVscogfqU8k3lLMpaqkZGvE2/78Ze8VSEIspbHC3k+vR6sudRQT+p
	3SIOS3j8U1tT6Z7okDK6qVJPK81Jczq9zJD9482Nht6XVURXp0XyAOEozEUm/ClZqzhJKmqKycGCy
	oBwYRFlaoxlM4ARhN/C9AapQyS6Uk0pzSvCeUdPiASjPOE7In0oPUXgoN1TexopGTKA/CVLPTftrG
	r0gtYRerxLKm+ttWMMVWuA4vpSutp9zZc4TeRMmHa5c4SyX9qLl2fefOxJO8+RY4kLAzK5lAS3p9D
	G3dUY+06g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyX0w-0005Ws-DO; Fri, 16 Aug 2019 07:51:10 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyX0Z-0005W3-NC
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 07:50:49 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 560C0FF803;
 Fri, 16 Aug 2019 07:50:32 +0000 (UTC)
Date: Fri, 16 Aug 2019 09:50:31 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Bhushan Shah <bshah@kde.org>
Subject: Re: [PATCH v2 2/3] arm64: allwinner: h6: add I2C nodes
Message-ID: <20190816075031.zw4bjunn4hfoaq3e@flea>
References: <20190811090503.32396-1-bshah@kde.org>
 <20190816064710.18280-1-bshah@kde.org>
 <20190816064710.18280-3-bshah@kde.org>
MIME-Version: 1.0
In-Reply-To: <20190816064710.18280-3-bshah@kde.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_005047_909928_BEB53423 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Wolfram Sang <wsa@the-dreams.de>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============3956349728735503490=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3956349728735503490==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ibqavahcu4hffii3"
Content-Disposition: inline


--ibqavahcu4hffii3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 16, 2019 at 12:17:09PM +0530, Bhushan Shah wrote:
> Add device-tree nodes for i2c0 to i2c2, and also add relevant pinctrl
> nodes.
>
> Suggested-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Bhushan Shah <bshah@kde.org>
> ---
> Changes in v2:
>   - Add the SoC specific compatible string instead of re-using a31 one.
>
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 56 +++++++++++++++++++-
>  1 file changed, 55 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> index bcecca17d61d..a1a329926540 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> @@ -329,6 +329,21 @@
>  				function = "hdmi";
>  			};
>
> +			i2c0_pins: i2c0-pins {
> +				pins = "PD25", "PD26";
> +				function = "i2c0";
> +			};
> +
> +			i2c1_pins: i2c1-pins {
> +				pins = "PH5", "PH6";
> +				function = "i2c1";
> +			};
> +
> +			i2c2_pins: i2c2-pins {
> +				pins = "PD23", "PD24";
> +				function = "i2c2";
> +			};
> +
>  			mmc0_pins: mmc0-pins {
>  				pins = "PF0", "PF1", "PF2", "PF3",
>  				       "PF4", "PF5";
> @@ -464,6 +479,45 @@
>  			status = "disabled";
>  		};
>
> +		i2c0: i2c@5002000 {
> +			compatible = "allwinner,sun50i-h6-i2c";

This isn't going to work if you don't patch the driver to add the
compatible. And this isn't what you described in the binding patch.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ibqavahcu4hffii3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVZgRwAKCRDj7w1vZxhR
xS+HAQCepqHx2ZpfYXULQei3MlCiSsZt/LK4vD5T0th5iQi3YgD/Yh5TJDYYPBYh
bHb7icMbNnDQjvYijyzCk3IJQmfegAU=
=b9Qc
-----END PGP SIGNATURE-----

--ibqavahcu4hffii3--


--===============3956349728735503490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3956349728735503490==--

