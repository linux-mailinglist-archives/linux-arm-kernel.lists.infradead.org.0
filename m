Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B890DEC0AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 10:38:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dHrMf79/T9C8pPcW05k8S27yhMi+IduDl51G0jO6Yl4=; b=otClv66E3BoF11gPyr0R8UNyb
	AtpTr8Fhlob9qymbjFNVpkvnuV3BGXTp6ae3X+4lMb0ue+/3aJUW70nVu25MGZVsT0H5DlHXo1r8l
	NeDZB2OdhldNoX2tacgDXhrC6HToJGbHvzKkSUcIL+g+0plnfwPfTn5PG7m7sJeJaztxH0XAlsaPN
	jM/iMqG4N9bjzznXPlkVYbmF2JqnOCq/4u/mRW3ZNXH/cU9nXqPk/RtQAslRX0jyoVLe4ljJypY1N
	93QwX1fjZ24fyO1QX+yawaSsoGRP9zbvql6GzR3YHpVV9DPkmWCNIYOMglR0KoxxsDmRPkOAmdNRZ
	2lE2U1AmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQTOM-0005Ri-CS; Fri, 01 Nov 2019 09:38:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQTOG-0005RC-4Y
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 09:38:45 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2174D21734;
 Fri,  1 Nov 2019 09:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572601123;
 bh=i6GifndF/sL8RuzHU+FjbfR+1Pi9deMws6Ukyp7wWhw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NkgdlrwTrf8r7CQpKCTrDaCfT0hEOKdhpSKZw5wrezwStgtDp1lE/cS3vxBHTP5oM
 sez5Wyo4U4ctHjXSDYlIDmq1sen+wgSfdU+Y4uTJa1EzzJIxpb9u8YJBN2B3n4PmNC
 47f4vaB5xdcU0N3ZKGuj+kWYAC/Iv54qifWtBiX8=
Date: Fri, 1 Nov 2019 10:02:44 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>
Subject: Re: [PATCH v6 00/11] crypto: add sun8i-ce driver for Allwinner
 crypto engine
Message-ID: <20191101090244.hkur2yk7m4irnkuz@hendrix>
References: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
 <20191101060914.sv7g5ipygagzz4ed@gondor.apana.org.au>
MIME-Version: 1.0
In-Reply-To: <20191101060914.sv7g5ipygagzz4ed@gondor.apana.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_023844_223178_D71E3563 
X-CRM114-Status: GOOD (  21.41  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, catalin.marinas@arm.com,
 linux-sunxi@googlegroups.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 will@kernel.org, davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3805586448715532397=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3805586448715532397==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5bjlmdtlusbphfx7"
Content-Disposition: inline


--5bjlmdtlusbphfx7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 01, 2019 at 02:09:14PM +0800, Herbert Xu wrote:
> On Wed, Oct 23, 2019 at 10:05:02PM +0200, Corentin Labbe wrote:
> > Hello
> >
> > This patch serie adds support for the Allwinner crypto engine.
> > The Crypto Engine is the third generation of Allwinner cryptogaphic offloader.
> > The first generation is the Security System already handled by the
> > sun4i-ss driver.
> > The second is named also Security System and is present on A80 and A83T
> > SoCs, originaly this driver supported it also, but supporting both IP bringing
> > too much complexity and another driver (sun8i-ss) will came for it.
> >
> > For the moment, the driver support only DES3/AES in ECB/CBC mode.
> > Patchs for CTR/CTS/XTS, RSA and RNGs will came later.
> >
> > This serie is tested with CRYPTO_MANAGER_EXTRA_TESTS
> > and tested on:
> > sun50i-a64-bananapi-m64
> > sun50i-a64-pine64-plus
> > sun50i-h5-libretech-all-h3-cc
> > sun50i-h6-pine-h64
> > sun8i-h2-plus-libretech-all-h3-cc
> > sun8i-h2-plus-orangepi-r1
> > sun8i-h2-plus-orangepi-zero
> > sun8i-h3-libretech-all-h3-cc
> > sun8i-h3-orangepi-pc
> > sun8i-r40-bananapi-m2-ultra
> >
> > DT and defconfig will go thru the mripard tree
> >
> > Regards
> >
> > Changes since v5:
> > - fixed uninitialized err in sun8i_ce_allocate_chanlist (reported by lkp@intel.com/dan.carpenter@oracle.com)
> >
> > Changes since v4:
> > - fixed some typos in kconfig
> > - made sun8i_ce_pm_ops static
> > - Use devm_platform_ioremap_resource
> >
> > Changes since v3:
> > - removed need of reset-names
> > - made reset mandatory
> >
> > Changes since v2:
> > - changed additionalproperties
> > - splited fallbacks functions out of sun8i_ce_cipher()
> > - changed variant "model" to "has_t_dlen_in_bytes"
> > - splited sun8i_ce_register_algs/sun8i_ce_get_clks out of sun8i_ce_probe()
> >
> > Changes since v1:
> > - Add sun4i-ss to allwinner directory
> > - Cleaned variant structure
> > - Renamed clock name from ahb to bus (and mbus to ram)
> > - Fixed DT bindings problem reported by mripard
> > - Cleaned unneeded status = ""  in R40 DT
> > - Removed old unnecessary interrupt_names in A64 DT
> > - Added arm64 defconfig
> > - Added support for PM functions
> > - Splitted probe functions
> > - Reworked clock settings
> > - made reset mandatory
> >
> > Corentin Labbe (11):
> >   crypto: Add allwinner subdirectory
> >   crypto: Add Allwinner sun8i-ce Crypto Engine
> >   dt-bindings: crypto: Add DT bindings documentation for sun8i-ce Crypto
> >     Engine
> >   ARM: dts: sun8i: R40: add crypto engine node
> >   ARM: dts: sun8i: H3: Add Crypto Engine node
> >   ARM64: dts: allwinner: sun50i: Add Crypto Engine node on A64
> >   ARM64: dts: allwinner: sun50i: Add crypto engine node on H5
> >   ARM64: dts: allwinner: sun50i: Add Crypto Engine node on H6
> >   sunxi_defconfig: add new Allwinner crypto options
> >   arm64: defconfig: add new Allwinner crypto options
> >   crypto: sun4i-ss: Move to Allwinner directory
> >
> >  .../bindings/crypto/allwinner,sun8i-ce.yaml   |  88 +++
> >  MAINTAINERS                                   |   4 +-
> >  arch/arm/boot/dts/sun8i-h3.dtsi               |   9 +
> >  arch/arm/boot/dts/sun8i-r40.dtsi              |   9 +
> >  arch/arm/configs/sunxi_defconfig              |   2 +
> >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |   9 +
> >  arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |   9 +
> >  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |   9 +
> >  arch/arm64/configs/defconfig                  |   2 +
> >  drivers/crypto/Kconfig                        |  28 +-
> >  drivers/crypto/Makefile                       |   2 +-
> >  drivers/crypto/allwinner/Kconfig              |  60 ++
> >  drivers/crypto/allwinner/Makefile             |   2 +
> >  .../{sunxi-ss => allwinner/sun4i-ss}/Makefile |   0
> >  .../sun4i-ss}/sun4i-ss-cipher.c               |   0
> >  .../sun4i-ss}/sun4i-ss-core.c                 |   0
> >  .../sun4i-ss}/sun4i-ss-hash.c                 |   0
> >  .../sun4i-ss}/sun4i-ss-prng.c                 |   0
> >  .../sun4i-ss}/sun4i-ss.h                      |   0
> >  drivers/crypto/allwinner/sun8i-ce/Makefile    |   2 +
> >  .../allwinner/sun8i-ce/sun8i-ce-cipher.c      | 434 +++++++++++
> >  .../crypto/allwinner/sun8i-ce/sun8i-ce-core.c | 676 ++++++++++++++++++
> >  drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  | 254 +++++++
> >  23 files changed, 1570 insertions(+), 29 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
> >  create mode 100644 drivers/crypto/allwinner/Kconfig
> >  create mode 100644 drivers/crypto/allwinner/Makefile
> >  rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/Makefile (100%)
> >  rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss-cipher.c (100%)
> >  rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss-core.c (100%)
> >  rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss-hash.c (100%)
> >  rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss-prng.c (100%)
> >  rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss.h (100%)
> >  create mode 100644 drivers/crypto/allwinner/sun8i-ce/Makefile
> >  create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
> >  create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
> >  create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
>
> Patches 1,2,11 applied.  Thanks.

Applied the rest, thanks!
Maxime

--5bjlmdtlusbphfx7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbv0tAAKCRDj7w1vZxhR
xaasAQCJBzDd1Ng5hMbRyaEoYsi7T5XVjtN6D13l8WAa9f/XfAEAuDL5vK17rxNc
TlvIkUnOEN/L2K1HT+rnj0Zt9aGkxww=
=Jw04
-----END PGP SIGNATURE-----

--5bjlmdtlusbphfx7--


--===============3805586448715532397==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3805586448715532397==--

