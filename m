Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F522201C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 10:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DwpFGMdN2AU9WAAqkN2aSN2MDfWucpomRc9Bq2eqADg=; b=iF7FGSv6kdTgkVgXVQApLS+Lw
	OhsbC2aAjq0wCj0uJBBP3FRHU+TO4UYSN1qIWLqUfZWSnRcMDyZiTtyL5S9wFq/bobeKOIBBmgn+G
	idd1Vy8cli0GIj86vCuQC1UBRGulq1tYxIWBdP2Am2kJ0ogMNSj2Rmo14ELgLMouyL7jGWNLyIRmw
	+ege2diuIKgfuRbdHqizQjK+6wHrwHM4x+OHbMUVLFEAGr14WZ+tZeiTQIL8wNCzz7mwEuHqtItSW
	EsBzg9tD2fvRsNM6dpXQlyF6a1mHVcEEL6CJXZfBWCizBIUe97lMO1oL/24P9PlQ6S2GD/U8CItDv
	tOHnw89/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRC9x-0001EZ-QA; Thu, 16 May 2019 08:54:41 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRC9q-0001Cd-1m
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 08:54:35 +0000
X-Originating-IP: 80.215.246.107
Received: from localhost (unknown [80.215.246.107])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id D086CFF807;
 Thu, 16 May 2019 08:54:17 +0000 (UTC)
Date: Thu, 16 May 2019 10:54:16 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH 1/4] arm64: DTS: allwinner: a64: Add pinmux for RGB666 LCD
Message-ID: <20190516085416.qfrbylku7226rub6@flea>
References: <20190514155911.6C0AC68B05@newverein.lst.de>
 <20190514160225.AB0D368B20@newverein.lst.de>
MIME-Version: 1.0
In-Reply-To: <20190514160225.AB0D368B20@newverein.lst.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_015434_240025_5D6CC7A9 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Archit Taneja <architt@codeaurora.org>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============5484534434290031417=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5484534434290031417==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="h2fn4argqt45zmoa"
Content-Disposition: inline


--h2fn4argqt45zmoa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 14, 2019 at 06:02:25PM +0200, Torsten Duwe wrote:
> From: Icenowy Zheng <icenowy@aosc.io>
>
> Allwinner A64's TCON0 can output RGB666 LCD signal.
>
> Add its pinmux.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Torsten Duwe <duwe@suse.de>
> ---
>
> originally: patchwork.kernel.org/patch/10814179
>
> Almost trivial, and obviously correct.
> I added the /omit-if-no-ref/.
>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> index 2abb335145a6..a8bbee84e7da 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> @@ -559,6 +559,16 @@
>  				function = "i2c1";
>  			};
>
> +			/omit-if-no-ref/
> +			lcd_rgb666_pins: lcd-rgb666 {

This should have the -pins suffix

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--h2fn4argqt45zmoa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXN0lOAAKCRDj7w1vZxhR
xfczAP949KD6LxwvBpLAV424mzw9jhUzLgBNJAOIYxQ1QQ2afAEAqHyh7A4+J2EV
4OxzrWJXa/IL7TiTlQCvFyhQrynH+AI=
=R8dD
-----END PGP SIGNATURE-----

--h2fn4argqt45zmoa--


--===============5484534434290031417==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5484534434290031417==--

