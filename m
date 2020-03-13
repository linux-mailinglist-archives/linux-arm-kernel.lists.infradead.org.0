Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 622F41840B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 06:55:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HcZH1SB4uJe/5ziy3Hl5SbJN64F5TAv5rxjdeeNQtk0=; b=VxN
	G+LVtUWIULqhbJvinKUZkshhHZVySNDJjYyQq6CvDwzx6vN11ETziBw1MzUYgd1PKSJ9N27mHmLrm
	vgOlRdOKWV6vpoKMEPGzgAGO03PfuJaxyRsaJ3nw4YUyg0fZ0emqeGowjqhWRre+5w+4smJLLF3CK
	/mo5BE1R1ybau30Q9VBC1jPq0Jh9pwlpWO9jdE3Byor3nQFLIvExhA6KnQ4oBCSM/HIzGp1n+JKub
	D1AzNE85OmnPe3V/kPKK/fpTiSyvwLHHqpE13yL3f2KTSglekr2XcthzDQ8SeGttfnqupCZdxa98X
	XKq7yZgUqa9fPr3C93RzPvA+WpPvQ/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCdHt-00075h-At; Fri, 13 Mar 2020 05:55:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCdHg-0006gu-Uq
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 05:55:02 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5BD292073E;
 Fri, 13 Mar 2020 05:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584078900;
 bh=mD1fvFnDL51onkpDO3+q+SixBRGtDzKQiE9eV34WbDw=;
 h=Date:From:List-Id:To:Cc:Subject:From;
 b=jLqzJaek8xvMjZOBkvXLyItABlGlXx+nVIWOApOLCUER6+WH9XeD1Je6m5kwdeVTy
 cODpm++LhO8MjuIZQvTnkc0VvyrTZzi4zAwDv5F4C6iirzhEU01B1l+8UHvHgCWnu2
 HHeqyWxzlHiHhNuoNBrisoIqZY+NJLQCvI7jDqOQ=
Received: by wens.tw (Postfix, from userid 1000)
 id DAD205FCA3; Fri, 13 Mar 2020 13:54:59 +0800 (CST)
Date: Fri, 13 Mar 2020 13:54:59 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 3/3] Allwinner Device Tree Changes for 5.7
Message-ID: <20200313055459.GA19820@wens.csie.org>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_225501_038684_A5A52EE4 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1917957486899901250=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1917957486899901250==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gKMricLos+KVdGMg"
Content-Disposition: inline


--gKMricLos+KVdGMg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git tags/sunxi-dt-for-5.7

for you to fetch changes up to 048cdfceebb762ccbec7a11e1f1fb1c170c1e669:

  arm64: dts: allwinner: a64: add node for rotation core (2020-03-12 00:27:24 +0800)

----------------------------------------------------------------
Allwinner Device Tree Changes for v5.7

A fairly large set of changes for v5.7, including some new devices.

SoC specific changes:

  - SPI on H6 SoC enabled
  - Thermal sensor on R40 SoC enabled
  - Deinterlace core hardware on A64 SoC enabled
  - Redundant assigned-clocks properties removed
    - required clock rates are now enforced by drivers
  - LVDS panel support on A20 SoC enabled
  - PMU compatible fixed for H5 and H6 SoCs
  - Thermal trip points added for A83T and H5 SoCs
  - (Image) Rotation core hardware on A83T and A64 SoCs enabled

Device specific changes:

  - Pine64 PineTab and PinePhone added
  - Various cleanups and improvements for Pine64 PineBook
  - GPIO pin bank regulator supplies added for A64-OlinXino
  - eMMC enabled on Orange Pi 3
  - PocketBook Touch Lux 3 added
  - Linutronix Testbox v2 added
  - Ethernet enabled on Orange Pi One Plus
  - HDMI enabled on H6-based Orange Pi boards

----------------------------------------------------------------
Andre Przywara (3):
      arm64: dts: sun50i: H6: Add SPI controllers nodes and pinmuxes
      arm64: dts: allwinner: h6: Pine H64: Add SPI flash node
      dt-bindings: spi: sunxi: Document new compatible strings

Andrey Lebedev (1):
      ARM: dts: sun7i: Add LVDS panel support on A20

Bastian Germann (2):
      dt-bindings: arm: sunxi: Add Linutronix Testbox
      ARM: dts: sun7i: Add Linutronix Testbox v2 board

Emmanuel Vadot (1):
      arm64: dts: allwinner: a64: Add gpio bank supply for A64-Olinuxino

Icenowy Zheng (3):
      dt-bindings: arm: sunxi: add binding for PineTab tablet
      arm64: dts: allwinner: a64: add support for PineTab
      arm64: allwinner: a64: enable LCD-related hardware for Pinebook

Jernej Skrabec (10):
      dt-bindings: interconnect: sunxi: Add A64 MBUS compatible
      arm64: dts: allwinner: a64: Add MBUS controller node
      media: dt-bindings: media: Add Allwinner A64 deinterlace compatible
      arm64: dts: allwinner: a64: Add deinterlace core node
      arm64: dts: allwinner: h6: orangepi-3: Add eMMC node
      arm64: dts: allwinner: h6: Move ext. oscillator to board DTs
      ARM: dts: sunxi: Fix DE2 clocks register range
      arm64: dts: allwinner: a64: Fix display clock register range
      ARM: dts: sun8i: a83t: Add device node for rotation core
      arm64: dts: allwinner: a64: add node for rotation core

Mans Rullgard (1):
      ARM: dts: sunxi: h3/h5: add r_pwm node

Marcus Cooper (2):
      arm64: dts: allwinner: h6: orangepi-one-plus: Enable ethernet
      arm64: dts: allwinner: h6: orangepi: Enable HDMI

Maxime Ripard (4):
      ARM: dts: sunxi: Remove redundant assigned-clocks
      ARM: dts: sunxi: Remove redundant assigned-clocks
      arm64: dts: allwinner: h5: Fix PMU compatible
      arm64: dts: allwinner: h6: Fix PMU compatible

Ondrej Jirman (9):
      dt-bindings: arm: sunxi: Add PocketBook Touch Lux 3
      ARM: dts: sun5i: Add PocketBook Touch Lux 3 support
      arm64: dts: sun50i-h5-orange-pi-pc2: Add CPUX voltage regulator
      ARM: dts: sun8i-a83t-tbs-a711: Drop superfluous dr_mode
      ARM: dts: sun8i-h3: Add thermal trip points/cooling maps
      ARM: dts: sun8i-a83t: Add thermal trip points/cooling maps
      arm64: dts: sun50i-a64: Add i2c2 pins
      dt-bindings: arm: sunxi: Add PinePhone 1.0 and 1.1 bindings
      arm64: dts: allwinner: Add initial support for Pine64 PinePhone

Samuel Holland (9):
      arm64: dts: allwinner: Enable button wakeup on Orange Pi PC2
      arm64: dts: allwinner: pinebook: Remove unused vcc3v3 regulator
      arm64: dts: allwinner: pinebook: Sort device tree nodes
      arm64: dts: allwinner: pinebook: Make simplefb more consistent
      arm64: dts: allwinner: pinebook: Document MMC0 CD pin name
      arm64: dts: allwinner: pinebook: Add GPIO port regulators
      arm64: dts: allwinner: pinebook: Fix backlight regulator
      arm64: dts: allwinner: pinebook: Fix 5v0 boost regulator
      arm64: dts: allwinner: pinebook: Remove unused AXP803 regulators

Yangtao Li (1):
      ARM: dts: sun8i-r40: Add thermal sensor and thermal zones

 Documentation/devicetree/bindings/arm/sunxi.yaml   |  26 ++
 .../arm/sunxi/allwinner,sun4i-a10-mbus.yaml        |   1 +
 .../media/allwinner,sun8i-h3-deinterlace.yaml      |   6 +-
 .../bindings/spi/allwinner,sun6i-a31-spi.yaml      |  11 +-
 arch/arm/boot/dts/Makefile                         |   2 +
 .../boot/dts/sun5i-a13-pocketbook-touch-lux-3.dts  | 257 ++++++++++++
 arch/arm/boot/dts/sun5i.dtsi                       |   3 -
 arch/arm/boot/dts/sun6i-a31.dtsi                   |  12 -
 .../boot/dts/sun7i-a20-linutronix-testbox-v2.dts   |  47 +++
 arch/arm/boot/dts/sun7i-a20.dtsi                   |  25 +-
 arch/arm/boot/dts/sun8i-a23-a33.dtsi               |   3 -
 arch/arm/boot/dts/sun8i-a33.dtsi                   |   2 -
 arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts          |   1 -
 arch/arm/boot/dts/sun8i-a83t.dtsi                  |  73 +++-
 arch/arm/boot/dts/sun8i-h3.dtsi                    |  25 ++
 arch/arm/boot/dts/sun8i-r40.dtsi                   |  30 +-
 arch/arm/boot/dts/sun8i-v3s.dtsi                   |   2 +-
 arch/arm/boot/dts/sunxi-h3-h5.dtsi                 |  17 +-
 arch/arm64/boot/dts/allwinner/Makefile             |   3 +
 .../boot/dts/allwinner/sun50i-a64-olinuxino.dts    |  17 +
 .../boot/dts/allwinner/sun50i-a64-pinebook.dts     | 170 +++++---
 .../dts/allwinner/sun50i-a64-pinephone-1.0.dts     |  11 +
 .../dts/allwinner/sun50i-a64-pinephone-1.1.dts     |  11 +
 .../boot/dts/allwinner/sun50i-a64-pinephone.dtsi   | 379 +++++++++++++++++
 .../boot/dts/allwinner/sun50i-a64-pinetab.dts      | 460 +++++++++++++++++++++
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi      |  44 +-
 .../boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts  |  21 +
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi       |   3 +-
 .../boot/dts/allwinner/sun50i-h6-beelink-gs1.dts   |  11 +
 .../boot/dts/allwinner/sun50i-h6-orangepi-3.dts    |  20 +
 .../dts/allwinner/sun50i-h6-orangepi-one-plus.dts  |  33 ++
 .../boot/dts/allwinner/sun50i-h6-orangepi.dtsi     |  37 ++
 .../boot/dts/allwinner/sun50i-h6-pine-h64.dts      |  30 ++
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi       |  66 ++-
 34 files changed, 1747 insertions(+), 112 deletions(-)
 create mode 100644 arch/arm/boot/dts/sun5i-a13-pocketbook-touch-lux-3.dts
 create mode 100644 arch/arm/boot/dts/sun7i-a20-linutronix-testbox-v2.dts
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.0.dts
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts

--gKMricLos+KVdGMg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE2nN1m/hhnkhOWjtHOJpUIZwPJDAFAl5rIDMACgkQOJpUIZwP
JDBSnxAAvBCSsQyoXxC5vFSfESERCzvH+2/ydaIry/NQA/KHNxkY3VDggpkX05Ft
RUWGf//JoDJ0mpybM+GcHjKNssNKWlEsMYrquRZ5xsmsWLN904wtYFLMvee0NuRy
0cVhI5zxp99fa6KH3WEDnSSbzt7wQivtJ6LcX2+w+BBPoVrRkNQ4MfoJ3WLpFowj
iyvvoDA2KlH2zr/x5hi5XzT0o4HbgvPor4PNaRu409mLpJFVtgBVw/y13EIu8FJh
PgyFVRFqPpxJmRmF8vUgDJFXjQd30NIntxGqBg5rf4N0TWEg2hzm5VEOrQSx4P8c
+bLyIoWQLSOvZ9kUEnIHYjfmKDxlxP7H473MxbK8phMbk+SkRsc+wUMI2aJ9ckNh
+W3JhifQw12YZZIlbzMgGnLgcxzCZ0/Ee3YW8hJ2+oX/COF+DMbBTKCEC2NklWIl
dG/WhwwYSy1x5c/Lqo9M8vPz9MNmJEZ66xPAclFWNfSchvr62Sva1rFPkHyxsecr
MnTaNHAQ6iTm6VpARREFTksUYW3nbRghFVwlRWn3ZHcANpRR2mmMou9IGKMYTtM0
mBASX6716OTTAesZtQdQkr4KSoV5sYax2lVRwsuAvaNB0AtJ+Jt7vhUHWZ3EsPdk
Q42/MVekM1ff9s2x4+XulIq/SfOvc1Eh7ayGDHfUKnhRDHgEEhk=
=xdGs
-----END PGP SIGNATURE-----

--gKMricLos+KVdGMg--


--===============1917957486899901250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1917957486899901250==--

