Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4189B242
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:38:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CCxsrFuSyOpCQr/FUGbwg1phO/6L/BLi3fO96JJJdHU=; b=RPM
	ng31L8GK8Gi+DEGQ+er3epw3FAtCqSU/ly94+SRVDks+uaXkxKvd6CPyP9mhqVUSF22hmb9zWq2Ws
	obLcOtTZ+Whs+ijW+SuddV56hcLZdZLifjUqa3iSM8C8q3S47u+nziY4qZnp32vbjrmDJbl4N5z/y
	tsyVA839jSzQSDm4Rm8bdupVbOxzo3i55rdDmcOohAbUZO4aNYDs2jQmkbmR/Qbm/AIaeBm5TXQXw
	eOrJxb5Gv/hKTiVRTak+j+oi7EHn4szpUZf3tULOhYlkPc29tQPAh8JfOcH/KR8VtymMm+dh6Tq4R
	YjZYm/QMtPukv5i10kw3bVn9JVYfAOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1AiJ-0003xw-Ty; Fri, 23 Aug 2019 14:38:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Ahc-0003Gs-TG
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:38:10 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0B7C206BA;
 Fri, 23 Aug 2019 14:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566571088;
 bh=4tG5Exe6avzRKERXIxBma0ivBnyoeLbo1rgjYXyNY3c=;
 h=Date:From:To:Cc:Subject:From;
 b=bFJcPfEzxuXGqYvvfuvm738eOjXNbTIWbcw60p5O1xICf7bxvtFlLhI2h4l1UVT3Z
 nBZTjfJhH9FFmbbHOVOnDgok/cUaNG9HNLhQpv3JpNMuxkNyztdDQ4IunAhKgbfJEs
 dmgFoLndPQQ9UwxirrBuTY3IwAlyz3aXTXl3IW64=
Date: Fri, 23 Aug 2019 16:38:06 +0200
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner Device Tree Changes for 5.4
Message-ID: <d97e6252-9dd7-4cf5-a3cf-56f78b0ca455.lettre@localhost>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_073808_987609_60D69994 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>
Content-Type: multipart/mixed; boundary="===============2052661774868701263=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2052661774868701263==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="milk73e3pnyibkel"
Content-Disposition: inline


--milk73e3pnyibkel
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Please pull the following changes for the next release.

Thanks!
Maxime

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags=
/sunxi-dt-for-5.4-1

for you to fetch changes up to 15ede97054889c0bec09f1f9b71beffecf06fc67:

  arm64: dts: allwinner: orange-pi-3: Enable WiFi (2019-08-23 13:50:05 +020=
0)

----------------------------------------------------------------
Allwinner DT changes for 5.4

Our usual pile of patches for the next release, which include mostly:
  - More fixes thanks to the DT validation using the YAML bindings
  - IR receiver support on the H6
  - SPDIF support on the H6
  - I2C Support on the H6
  - CSI support on the A20
  - RTC support on the H6
  - New Boards: Lichee Zero Plus, Tanix TX6, A64-Olinuxino-eMMC
-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV/6JgAKCRDj7w1vZxhR
xc+VAQDjZWvNeMX75qsrz7Jbdy7jlbJJ/oDFBGx3C4clcTn7tgD6AsHeM760Pc6o
4a7G5DGcJakuFGsb1s4hNQOylmG3IQ4=3D
=3DpXxO
-----END PGP SIGNATURE-----

----------------------------------------------------------------
Bhushan Shah (2):
      dt-bindings: i2c: mv64xxx: Add compatible for the H6 i2c node.
      arm64: allwinner: h6: add I2C nodes

Chen-Yu Tsai (2):
      ARM: dts: sun8i: a83t: Enable HDMI output on Cubietruck Plus
      ARM: dts: sunxi: Add mdio bus sub-node to GMAC

Cl=E9ment P=E9ron (7):
      ARM: dts: sunxi: Prefer A31 bindings for IR
      ARM: dts: sunxi: Prefer A31 bindings for IR
      arm64: dts: allwinner: h6: Add IR receiver node
      arm64: dts: allwinner: h6: Enable IR on H6 boards
      arm64: dts: allwinner: Add SPDIF node for Allwinner H6
      arm64: dts: allwinner: h6: Enable SPDIF for Beelink GS1
      arm64: dts: allwinner: Enable DDC regulator for Beelink GS1

Icenowy Zheng (3):
      dt-bindings: arm: sunxi: add binding for Lichee Zero Plus core board
      ARM: sunxi: dts: s3/s3l/v3: add DTSI files for S3/S3L/V3 SoCs
      ARM: dts: sun8i: s3: add devicetree for Lichee zero plus w/ S3

Igors Makejevs (1):
      arm64: dts: allwinner: a64: Add IR node

Jernej Skrabec (3):
      arm64: dts: allwinner: a64: Enable IR on Orange Pi Win
      dt-bindings: arm: sunxi: Add compatible for Tanix TX6 board
      arm64: dts: allwinner: h6: Introduce Tanix TX6 board

Maxime Ripard (17):
      ARM: dts: sunxi: Switch to the generic PHY properties
      ARM: dts: sunxi: Switch from phy to phy-handle
      ARM: dts: sunxi: Unify the DE2 bus clocks order
      arm64: dts: allwinner: h6: Fix SID node name
      ARM: dts: sunxi: Remove simple-panel compatible
      ARM: dts: sunxi: Fix the HDMI PHY name
      dt-bindings: mfd: Convert Allwinner GPADC bindings to a schema
      ARM: dts: sun4i: Add missing timers interrupts
      ARM: dts: sun5i: Add missing timers interrupts
      ARM: dts: sun6i: Add missing timers interrupts
      ARM: dts: a23/a33: Change the timers compatible
      ARM: dts: a83t: Change the timers compatible
      ARM: dts: h3: Change the timers compatible
      ARM: dts: v3s: Change the timers compatible
      ARM: dts: sun7i: Add CSI0 controller
      ARM: dts: sunxi: Add missing watchdog interrupts
      ARM: dts: sunxi: Add missing watchdog clocks

Ondrej Jirman (3):
      arm64: dts: allwinner: orange-pi-3: Enable HDMI output
      arm64: dts: allwinner: h6: Add support for RTC and fix the clock tree
      arm64: dts: allwinner: orange-pi-3: Enable WiFi

Sunil Mohan Adapa (2):
      dt-bindings: arm: sunxi: Add compatible for A64 OlinuXino with eMMC
      arm64: dts: allwinner: a64: Add A64 OlinuXino board (with eMMC)


 Documentation/devicetree/bindings/arm/sunxi.yaml                       |  =
16 +-
 Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml         |  =
 3 +-
 Documentation/devicetree/bindings/iio/adc/allwinner,sun8i-a33-ths.yaml |  =
43 ++-
 Documentation/devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml      |  =
76 ++++-
 Documentation/devicetree/bindings/mfd/sun4i-gpadc.txt                  |  =
59 +---
 arch/arm/boot/dts/Makefile                                             |  =
 1 +-
 arch/arm/boot/dts/sun4i-a10-a1000.dts                                  |  =
 2 +-
 arch/arm/boot/dts/sun4i-a10-ba10-tvbox.dts                             |  =
 2 +-
 arch/arm/boot/dts/sun4i-a10-cubieboard.dts                             |  =
 2 +-
 arch/arm/boot/dts/sun4i-a10-hackberry.dts                              |  =
 2 +-
 arch/arm/boot/dts/sun4i-a10-itead-iteaduino-plus.dts                   |  =
 2 +-
 arch/arm/boot/dts/sun4i-a10-jesurun-q5.dts                             |  =
 2 +-
 arch/arm/boot/dts/sun4i-a10-marsboard.dts                              |  =
 2 +-
 arch/arm/boot/dts/sun4i-a10-olinuxino-lime.dts                         |  =
 2 +-
 arch/arm/boot/dts/sun4i-a10-pcduino.dts                                |  =
 2 +-
 arch/arm/boot/dts/sun4i-a10.dtsi                                       |  =
 9 +-
 arch/arm/boot/dts/sun5i-a10s-olinuxino-micro.dts                       |  =
 2 +-
 arch/arm/boot/dts/sun5i-a10s-wobo-i5.dts                               |  =
 2 +-
 arch/arm/boot/dts/sun5i-a13-q8-tablet.dts                              |  =
 2 +-
 arch/arm/boot/dts/sun5i.dtsi                                           |  =
 9 +-
 arch/arm/boot/dts/sun6i-a31-colombus.dts                               |  =
12 +-
 arch/arm/boot/dts/sun6i-a31-hummingbird.dts                            |  =
18 +-
 arch/arm/boot/dts/sun6i-a31-i7.dts                                     |  =
12 +-
 arch/arm/boot/dts/sun6i-a31-m9.dts                                     |  =
12 +-
 arch/arm/boot/dts/sun6i-a31-mele-a1000g-quad.dts                       |  =
12 +-
 arch/arm/boot/dts/sun6i-a31.dtsi                                       |  =
15 +-
 arch/arm/boot/dts/sun6i-a31s-cs908.dts                                 |  =
11 +-
 arch/arm/boot/dts/sun6i-a31s-sina31s.dts                               |  =
12 +-
 arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts                       |  =
18 +-
 arch/arm/boot/dts/sun7i-a20-bananapi-m1-plus.dts                       |  =
12 +-
 arch/arm/boot/dts/sun7i-a20-bananapi.dts                               |  =
12 +-
 arch/arm/boot/dts/sun7i-a20-bananapro.dts                              |  =
12 +-
 arch/arm/boot/dts/sun7i-a20-cubieboard2.dts                            |  =
12 +-
 arch/arm/boot/dts/sun7i-a20-cubietruck.dts                             |  =
12 +-
 arch/arm/boot/dts/sun7i-a20-hummingbird.dts                            |  =
21 +-
 arch/arm/boot/dts/sun7i-a20-i12-tvbox.dts                              |  =
12 +-
 arch/arm/boot/dts/sun7i-a20-icnova-swac.dts                            |  =
12 +-
 arch/arm/boot/dts/sun7i-a20-itead-ibox.dts                             |  =
 4 +-
 arch/arm/boot/dts/sun7i-a20-lamobo-r1.dts                              |  =
 2 +-
 arch/arm/boot/dts/sun7i-a20-m3.dts                                     |  =
12 +-
 arch/arm/boot/dts/sun7i-a20-olimex-som-evb.dts                         |  =
12 +-
 arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts                      |  =
20 +-
 arch/arm/boot/dts/sun7i-a20-olinuxino-lime.dts                         |  =
12 +-
 arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts                        |  =
12 +-
 arch/arm/boot/dts/sun7i-a20-olinuxino-micro.dts                        |  =
12 +-
 arch/arm/boot/dts/sun7i-a20-orangepi-mini.dts                          |  =
12 +-
 arch/arm/boot/dts/sun7i-a20-orangepi.dts                               |  =
12 +-
 arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts                          |  =
12 +-
 arch/arm/boot/dts/sun7i-a20-pcduino3.dts                               |  =
12 +-
 arch/arm/boot/dts/sun7i-a20-wits-pro-a20-dkt.dts                       |  =
12 +-
 arch/arm/boot/dts/sun7i-a20.dtsi                                       |  =
35 +-
 arch/arm/boot/dts/sun8i-a23-a33.dtsi                                   |  =
 3 +-
 arch/arm/boot/dts/sun8i-a23-q8-tablet.dts                              |  =
 2 +-
 arch/arm/boot/dts/sun8i-a83t-cubietruck-plus.dts                       |  =
25 +-
 arch/arm/boot/dts/sun8i-a83t.dtsi                                      |  =
14 +-
 arch/arm/boot/dts/sun8i-r40.dtsi                                       |  =
12 +-
 arch/arm/boot/dts/sun8i-s3-lichee-zero-plus.dts                        |  =
53 +++-
 arch/arm/boot/dts/sun8i-v3.dtsi                                        |  =
14 +-
 arch/arm/boot/dts/sun8i-v3s.dtsi                                       |  =
14 +-
 arch/arm/boot/dts/sun9i-a80-cubieboard4.dts                            |  =
12 +-
 arch/arm/boot/dts/sun9i-a80-optimus.dts                                |  =
 4 +-
 arch/arm/boot/dts/sun9i-a80.dtsi                                       |  =
10 +-
 arch/arm/boot/dts/sunxi-h3-h5.dtsi                                     |  =
15 +-
 arch/arm64/boot/dts/allwinner/Makefile                                 |  =
 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts            |  =
23 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts              |  =
 4 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi                          |  =
29 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts                |  =
27 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts                 |  =
72 ++++-
 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi                  |  =
 4 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts                   |  =
 4 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts                  | 1=
00 +++++-
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi                           | 1=
35 ++++++-
 73 files changed, 937 insertions(+), 289 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/allwinner,sun=
8i-a33-ths.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/allwinner,sun4i-a=
10-ts.yaml
 delete mode 100644 Documentation/devicetree/bindings/mfd/sun4i-gpadc.txt
 create mode 100644 arch/arm/boot/dts/sun8i-s3-lichee-zero-plus.dts
 create mode 100644 arch/arm/boot/dts/sun8i-v3.dtsi
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc=
=2Edts
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts



--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--milk73e3pnyibkel
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV/6TgAKCRDj7w1vZxhR
xcPmAP99c5xw04i71awttbYdduwdbFgnBiw4E9fEa3VJTq3RPgEAw+uQK7iI5Kv8
dKxwo2NR6aKc7Hlx60WwXwRotCxHYgc=
=pU83
-----END PGP SIGNATURE-----

--milk73e3pnyibkel--


--===============2052661774868701263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2052661774868701263==--

