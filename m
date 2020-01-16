Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3898913DD51
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 15:23:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zs9W7cU4MKQ9EYZhZuTIv5QXij78sG8wcgcBXrHYfHs=; b=UVum3JAbbKXjH7bawem8KU9T9
	fEMWoaznwtmO+WA7vm55F4dR6YZhrFlcHSPVBpFSBFL6gZhPHVIAr5DcsxQZ1zxh1eIoAfFd7ZWDo
	c/NlCMKKh6pyCXSBnmcOOZe8RuENpvmXJwZYO7KG9NtR8MHPAnOaPYyrmZjWqj/xQSolyEcWIZhO7
	8/NdXYzvy/62DS5pWjiPaI7JaMSTaEioOgcp8UnmurTd8NeliicmtcMxU3ZJ01AlW1PipeUvpFCz7
	AfXYFJabaaNSJnbU4W6V3kSSsDMyqgZA6S7N4sOFUxowly9LQwzRNsBSqUxQqtj72QM/dITwT0TP0
	kYTNnpVnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is63H-0000L8-P4; Thu, 16 Jan 2020 14:23:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is636-0000KV-KS
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 14:23:09 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5F3A20748;
 Thu, 16 Jan 2020 14:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579184584;
 bh=cKTUtAai+F3kwsCgiV5+gcSXb75k6M9kqJPe1f1yhys=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KNcjSTjqpkciihCkSGiSg3Qpg2MI1znaP2oRwTnHBuLDK0/y9OQDLcx1r3TIAFIpC
 kDnaweSlGbk4XiR9KHFbpNmCvx4DeLbO/NoKlNzkeejECdZTYwpHNejyP4T6D14gdz
 xEfoN6XswDHd8P7ChKjjKol0OT/RLp3ML4+/4JP0=
Date: Thu, 16 Jan 2020 15:23:01 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: spi: sunxi: Document new compatible
 strings
Message-ID: <20200116142301.w2t4o6pg3dapp3g6@gilmour.lan>
References: <20200116005654.27672-1-andre.przywara@arm.com>
 <20200116005654.27672-4-andre.przywara@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200116005654.27672-4-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_062304_690054_AE1B29FD 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-spi@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Icenowy Zheng <icenowy@aosc.xyz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1760588333577091372=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1760588333577091372==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dtp4obhou6ga2i2o"
Content-Disposition: inline


--dtp4obhou6ga2i2o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Jan 16, 2020 at 12:56:54AM +0000, Andre Przywara wrote:
> The Allwinner H6 SPI controller has advanced features over the H3
> version, but remains compatible with it.
> Document the usual "specific", "fallback" compatible string pair.
> Also add the R40 version while at it.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml     | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> index f36c46d236d7..c19dfbe42d90 100644
> --- a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> +++ b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> @@ -18,9 +18,15 @@ properties:
>    "#size-cells": true
>
>    compatible:
> -    enum:
> -      - allwinner,sun6i-a31-spi
> -      - allwinner,sun8i-h3-spi
> +    oneOf:
> +      - const: allwinner,sun6i-a31-spi
> +      - const: allwinner,sun8i-h3-spi
> +      - items:
> +          - const: allwinner,sun8i-r40-spi
> +          - const: allwinner,sun8i-h3-spi
> +      - items:
> +          - const: allwinner,sun50i-h6-spi
> +          - const: allwinner,sun8i-h3-spi

Having

oneOf:
  - const: allwinner,sun6i-a31-spi
  - const: allwinner,sun8i-h3-spi
  - items:
    - enum:
      - allwinner,sun8i-r40-spi
      - allwinner,sun50i-h6-spi
    - const: allwinner,sun8i-h3-spi

Will be easier to maintain in the long run

Maxime

--dtp4obhou6ga2i2o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXiBxxQAKCRDj7w1vZxhR
xRUZAQDisZVXdmeqha8atHLsAl78/m8TbSfhS0431utHf0z35AEArNAvTTDGJZT3
fIwJSFWfYpI4H2JuT4OzXW9UJtlNUQ0=
=tA6x
-----END PGP SIGNATURE-----

--dtp4obhou6ga2i2o--


--===============1760588333577091372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1760588333577091372==--

