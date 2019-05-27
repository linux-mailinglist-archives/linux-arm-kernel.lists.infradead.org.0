Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A89A92B1AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 11:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FeJffJihuxTgYWcux901Lp6vF+/1q5PpF3cWcTjHUjo=; b=a1uMU9zTyT3XLuVauqAUZ7wgB
	kSzmWC3cQx4cK/c6ifkTcBwOGxREPFVHHz2qu6aIBfCRLPpWFlW+uMpT5QT5r4fuHBIiu9suHS1Dq
	MqYvd9e1IHI0bnVR6J+XQbGXwIfxeVEdEfIyGy55qWF0Q70CWWATty0Q+NF0bLYnzfZBbK+n8v7eO
	wDoeUJ/BpPaXxcKma3tlt62o+gzUEPuZyUHeisBj01WzCNHn11CimUmaloJj09lBlS5ExVzpLpf8g
	SL4l0NXCnUJnJGwUGI+HUu/+aH/MNg9QjhW+jOVkmw1LP9zT7wYFHwQIg+mnwNXqbJZdFK2GN2Qyt
	LG+BvJeEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVCPR-0003Ew-RY; Mon, 27 May 2019 09:59:13 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCP7-00033s-62
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 09:59:06 +0000
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id BC7B2200013;
 Mon, 27 May 2019 09:58:49 +0000 (UTC)
Date: Mon, 27 May 2019 11:58:49 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Yegor Timoshenko <yegortimoshenko@riseup.net>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: bananapi-m64: enable UART2
Message-ID: <20190527095849.uvsivexbb6tfjccw@flea>
References: <20190526094715.12289-1-yegortimoshenko@riseup.net>
MIME-Version: 1.0
In-Reply-To: <20190526094715.12289-1-yegortimoshenko@riseup.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_025854_048794_9246D783 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7656679265510719535=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7656679265510719535==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ktylujpg3yzbdylg"
Content-Disposition: inline


--ktylujpg3yzbdylg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sun, May 26, 2019 at 12:47:15PM +0300, Yegor Timoshenko wrote:
> BananaPi M64 exposes UART2 interface that is supposed to be enabled
> by default (see "Default Function" in the pin definition table from
> the manufacturer [1]).
>
> [1]: https://bananapi.gitbooks.io/bpi-m64/en/bpi-m64gpiopindefine.html
>
> Signed-off-by: Yegor Timoshenko <yegortimoshenko@riseup.net>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
> index 094cfed13df9..100d1a8fd292 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
> @@ -54,6 +54,7 @@
>  		ethernet0 = &emac;
>  		serial0 = &uart0;
>  		serial1 = &uart1;
> +		serial2 = &uart2;
>  	};
>
>  	chosen {
> @@ -312,6 +313,12 @@
>  	status = "okay";
>  };
>
> +&uart2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart2_pins>;
> +	status = "okay";
> +};
> +

Unfortunately, this can still be used for something else. Our policy
so far has been that we would fill the muxing but keep the nodes
disabled so that it's easier for people that want to enable it, but it
seems like it's already using the default muxing as well.

Maxime


--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ktylujpg3yzbdylg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOu02QAKCRDj7w1vZxhR
xUciAP4y8fZNwh7eAtCPtUgJ3FdM3Qacd6yxUNimUc62YkREFQD6Az4IJj3Bx6Iv
LnR7PXw+or0ouBFSx4ziaPuhdOMsPQg=
=VGIR
-----END PGP SIGNATURE-----

--ktylujpg3yzbdylg--


--===============7656679265510719535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7656679265510719535==--

