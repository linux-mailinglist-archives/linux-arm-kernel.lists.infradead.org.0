Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4E0C475F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 08:02:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CWSZGLzuQ74n46VckzhWwCRxvShhnaFdoxrZYtUolTM=; b=gtr7ar1SisXV9dmjceaBVyT3M
	D9XUD4Ca8gRy2l9lIu+PspSsb+90XFP8pPt6gppewV6KXRwqYlOBaw9t4USG4WEHYbc2i5xwg5zPE
	t8LGk0/1CdbFvTLa7JvIvxeUlrHN4d9X3nf+EEo5OKrdjZGp+5nqJn/PFD/bDMbYMjXGpaf8vLIMD
	SXsIJgG2guU3U2UjJ8ydTOIjnbuceEm/hvM5eN/tF+9Wf2D48HQekpaa4yxxIqZufWcsRgFuy5bl9
	AmXlj4S1g92qOrL5yHpy4++5JMC6eC3u0ugpNCKTDfGijjGgQDZo+XF0YE6wZ9QNkRy4riepm7YJy
	nsVSWCrXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFXiT-0003Ea-Vm; Wed, 02 Oct 2019 06:02:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFXiL-0003EA-7f
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 06:02:18 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E3BA215EA;
 Wed,  2 Oct 2019 06:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569996136;
 bh=CV+keQnc3oa8IaO1/T0MBCxfFNAt5NtFUuPy7+FcG18=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hM22mscs+qhQMk/S8W5R5oSgacgTbDnofWaJ7YLQekxJSLH6QWK+qdm+Vm9b/JlGM
 4yCkFlqv+jnEFzQQRrzWH5IHcQkgylDWQJ28A8ABAsMFMWVjZXmIc0rzgJ8pWc3VZ6
 lTiKwomFwZqq7ruUfUbgXv7Ddax/LbAqjDaorWgA=
Date: Wed, 2 Oct 2019 08:02:14 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH v2 05/11] ARM: dts: sun8i: H3: Add Crypto Engine node
Message-ID: <20191002060214.bu67nkd3y6puknrb@gilmour>
References: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
 <20191001184141.27956-6-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191001184141.27956-6-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_230217_296299_BEF2A85B 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, catalin.marinas@arm.com,
 linux-sunxi@googlegroups.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3967434727732164944=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3967434727732164944==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="m5s3egvksjuih2k6"
Content-Disposition: inline


--m5s3egvksjuih2k6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 01, 2019 at 08:41:35PM +0200, Corentin Labbe wrote:
> The Crypto Engine is a hardware cryptographic accelerator that supports
> many algorithms.
> It could be found on most Allwinner SoCs.
>
> This patch enables the Crypto Engine on the Allwinner H3 SoC Device-tree.
>
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>  arch/arm/boot/dts/sun8i-h3.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/arch/arm/boot/dts/sun8i-h3.dtsi b/arch/arm/boot/dts/sun8i-h3.dtsi
> index e37c30e811d3..778a23a794c9 100644
> --- a/arch/arm/boot/dts/sun8i-h3.dtsi
> +++ b/arch/arm/boot/dts/sun8i-h3.dtsi
> @@ -153,6 +153,17 @@
>  			allwinner,sram = <&ve_sram 1>;
>  		};
>
> +		crypto: crypto@1c15000 {
> +			compatible = "allwinner,sun8i-h3-crypto";
> +			reg = <0x01c15000 0x1000>;
> +			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "ce_ns";

That's not documented in the binding (and I guess unnecessary)

> +			resets = <&ccu RST_BUS_CE>;
> +			reset-names = "bus";
> +			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
> +			clock-names = "bus", "mod";

Nit: we put the clocks before the resets usually

Maxime

--m5s3egvksjuih2k6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZQ9ZQAKCRDj7w1vZxhR
xQ12AP4v8ngYjx24mlHXpcMOKB1UPEpZ7nVs0R3Z429dTd6YiwD+I2L/8Esrt1co
O1jvbqC8meSjGLU39z/Mr3MOweUa+Q8=
=RT92
-----END PGP SIGNATURE-----

--m5s3egvksjuih2k6--


--===============3967434727732164944==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3967434727732164944==--

