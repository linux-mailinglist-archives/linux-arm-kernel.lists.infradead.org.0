Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3E7138E4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:56:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3Sl6XPglEiU20Ceyz+m306agqAnnYLHACorAuoqz13w=; b=ODI
	6xisAiMkVSSs8V9e3r0TJ+Igu0Pvtk9Z8+oKucTvWSSriZABCcbxJTHsTzqdW6KZtIyI4axdfNb7a
	hyA9Cxse8yWpzxKEQO0rn12WEu0SKWV62UVHre6Ya3nhLWaxWiI2RCfmrKKMXum3A2Bs6c6Wbrqlk
	/VsHmlNiiV8DTX0GyJOrHh1PQbytCQyEA+phKH+ugrWFItQeEym93H9Wi9SjqAzkpqzhUJJsEeetH
	l3d6lGLA7nt2za7fIxuJDAgZo9qEj3R/GoNVCENmhgNYfKmcRZed2OhTchJlMLAAfOHM/Ru9DsxXh
	6cJMK/uTKNKyBQf8a5is8seMQLvDQzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwS6-0007Fo-U3; Mon, 13 Jan 2020 09:56:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwRy-0007FM-Jk
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 09:56:00 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7ADC2080D;
 Mon, 13 Jan 2020 09:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578909358;
 bh=p9JmH7oFoNp+bfsAb75sbBqolzPsxkcxe7i/z3lrFU8=;
 h=Date:From:To:Cc:Subject:From;
 b=n+PLoxkTQfk+pc5KfwoHVyBm+RycExPp0qzY+Pg9uLyVOsiRj8LzsRJlb8/cW09km
 jFFVjIqM+EbFcr9qR4d6ERzZYl8RqBlafoM6ldbNr4JWN26B2iWwiVwtxneWiw2dwJ
 GChavY6yoVe42/Fpt85/aHd/mM5mx0vqeIhB55WU=
Received: by wens.tw (Postfix, from userid 1000)
 id 915FC5FC15; Mon, 13 Jan 2020 17:55:55 +0800 (CST)
Date: Mon, 13 Jan 2020 17:55:55 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner Device Tree Changes for 5.6 - second attempt
Message-ID: <20200113095555.GA29848@wens.csie.org>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_015558_694359_A6166429 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>
Content-Type: multipart/mixed; boundary="===============7940739404099922057=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7940739404099922057==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5mCyUwZo2JvN/JJP"
Content-Disposition: inline


--5mCyUwZo2JvN/JJP
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This is a fixed up tag for Allwinner DT changes for 5.6.

The new macro in arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi has been
replaced with the macro's raw number. The tag has been directly compile
tested.

Please pull.

Thanks!
ChenYu


The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git tags/sunx=
i-dt-for-5.6-2

for you to fetch changes up to ac904843087bed19e702c507ab0250abf56d2625:

  arm64: dts: allwinner: a64: enable DVFS (2020-01-13 16:54:53 +0800)

----------------------------------------------------------------
This is our usual set of DT patches for the Allwinner SoCs.

It's fairly big this time, but the highlights are:
  - Enable cpufreq and CPU thermal throttling on the A64
    - CLK_CPUX macro usage removed (changed from first pull request)
  - CSI0 support on the R40
  - CSI1 support on the A10 and A20
  - SPI support on the R40
  - PMU support on the H3, H5, H6 and R40
  - MIPI-DSI support on the A64
  - PWM support on the H6
  - Thermal sensor on the A64, A83t, H3, H5, H6 and R40
  - More DT schemas fixes and conversions
  - New boards: LibreComputer ALL-H5-CC H5, LibreComputer ALL-H3-IT H5,
                Pine64 H64 Model B, Neutis N5H3

----------------------------------------------------------------
Andre Heider (1):
      arm64: dts: allwinner: orange-pi-3: Enable IR receiver

Andre Przywara (6):
      arm64: dts: allwinner: H6: Add PMU mode
      arm64: dts: allwinner: H5: Add PMU node
      arm: dts: allwinner: H3: Add PMU node
      ARM: dts: sun8i: R40: Upgrade GICC reg size to 8K
      ARM: dts: sun8i: R40: Add PMU node
      ARM: dts: sun8i: R40: Add SPI controllers nodes and pinmuxes

Chen-Yu Tsai (8):
      ARM: dts: sun8i: r40: Add I2C pinmux options
      ARM: dts: sunxi: Add Libre Computer ALL-H3-IT H5 board
      ARM: dts: sun4i: Add CSI1 controller and pinmux options
      ARM: dts: sun7i: Add CSI1 controller and pinmux options
      ARM: dts: sun8i: r40: Add device node for CSI0
      arm64: dts: allwinner: h5: Add Libre Computer ALL-H5-CC H5 board
      ARM: dts: sunxi: Use macros for references to CCU clocks
      arm64: dts: allwinner: sun50i-a64: Use macros for newly exported cloc=
ks

Cl=E7=9F=87ment P=E7=9F=87ron (5):
      arm64: dts: allwinner: h6: Enable USB 3.0 host for Beelink GS1 and Ta=
nix TX6
      arm64: dts: allwiner: Fix typo in dual licensed SPDX identifier
      arm64: dts: allwinner: Fix wrong license header
      arm64: dts: allwinner: Convert license to SPDX identifier
      arm64: dts: allwinner: unify header comment style

Corentin Labbe (2):
      arm64: dts: allwinner: sun50i-h6-pine-h64: state that the DT supports=
 the modelA
      arm64: dts: allwinner: add pineh64 model B

Georgii Staroselskii (3):
      ARM: dts: allwinner: Split out non-SoC specific parts of Neutis N5
      ARM: dts: sunxi: Add Neutis N5H3 support
      dt-bindings: arm: sunxi: add Neutis N5H3

Jagan Teki (2):
      arm64: dts: allwinner: a64: Add MIPI DSI pipeline
      ARM: dts: sun8i: r40: Use tcon top clock index macros

Jernej Skrabec (5):
      media: dt-bindings: media: add new rc map name
      arm64: dts: allwinner: h6: tanix-tx6: Add IR remote mapping
      ARM: dts: sun8i: h3: Add rc map for Beelink X2
      dt-bindings: pwm: allwinner: Add H6 PWM description
      arm64: dts: allwinner: h6: Add PWM node

Maxime Ripard (9):
      dt-bindings: clocks: Convert Allwinner DE2 clocks to a schema
      dt-bindings: clocks: Convert Allwinner A80 USB clocks to a schema
      dt-bindings: clocks: Convert Allwinner A80 DE clocks to a schema
      ARM: dts: sun9i: Make sure the USB PHY resources are in the same order
      ARM: dts: sun8i: v3s: Remove redundant assigned-clocks
      ARM: dts: sunxi: Add missing dmas properties to TCON
      ARM: dts: sun8i: nanopi-duo2: Fix GPIO regulator state array
      ARM: dts: sun9i: Remove useless reset and clock names
      ARM: dts: sunxi: Add missing LVDS resets and clocks

Ondrej Jirman (4):
      ARM: dts: sun8i-a83t: Add thermal sensor and thermal zones
      ARM: dts: sun8i-h3: Add thermal sensor and thermal zones
      arm64: dts: allwinner: h5: Add thermal sensor and thermal zones
      arm64: dts: allwinner: h6: Add thermal sensor and thermal zones

Samuel Holland (1):
      arm64: dts: allwinner: a64: pinebook: Fix lid wakeup

Stefan Mavrodiev (1):
      arm64: dts: allwinner: a64: olinuxino: Add bank supply regulators

Vasily Khoruzhick (5):
      arm64: dts: allwinner: a64: Add thermal sensors and thermal zones
      arm64: dts: allwinner: a64: add CPU clock to CPU0-3 nodes
      arm64: dts: allwinner: a64: add cooling maps and thermal tripping poi=
nts
      arm64: dts: allwinner: a64: add dtsi with CPU operating points
      arm64: dts: allwinner: a64: enable DVFS

 Documentation/devicetree/bindings/arm/sunxi.yaml   |  23 ++-
 .../clock/allwinner,sun8i-a83t-de2-clk.yaml        |  76 +++++++++
 .../clock/allwinner,sun9i-a80-de-clks.yaml         |  67 ++++++++
 .../clock/allwinner,sun9i-a80-usb-clocks.yaml      |  59 +++++++
 .../devicetree/bindings/clock/sun8i-de2.txt        |  34 ----
 .../devicetree/bindings/clock/sun9i-de.txt         |  28 ----
 .../devicetree/bindings/clock/sun9i-usb.txt        |  24 ---
 Documentation/devicetree/bindings/media/rc.yaml    |   1 +
 .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml      |  51 ++++++
 arch/arm/boot/dts/Makefile                         |   1 +
 arch/arm/boot/dts/sun4i-a10.dtsi                   |  35 ++++
 arch/arm/boot/dts/sun5i.dtsi                       |   3 +-
 arch/arm/boot/dts/sun6i-a31.dtsi                   |  25 ++-
 arch/arm/boot/dts/sun7i-a20.dtsi                   |  36 ++++
 arch/arm/boot/dts/sun8i-a23-a33.dtsi               |  13 +-
 arch/arm/boot/dts/sun8i-a83t.dtsi                  |  42 ++++-
 arch/arm/boot/dts/sun8i-h3-beelink-x2.dts          |   1 +
 .../dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts    |  72 ++++++++
 arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3.dtsi  |  11 ++
 arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts         |   3 +-
 arch/arm/boot/dts/sun8i-h3.dtsi                    |  35 +++-
 arch/arm/boot/dts/sun8i-r40.dtsi                   | 172 +++++++++++++++++=
+-
 arch/arm/boot/dts/sun8i-v3s.dtsi                   |   2 -
 arch/arm/boot/dts/sun9i-a80.dtsi                   |  42 ++---
 arch/arm/boot/dts/sunxi-h3-h5-emlid-neutis.dtsi    | 170 +++++++++++++++++=
++
 arch/arm/boot/dts/sunxi-h3-h5.dtsi                 |  13 +-
 arch/arm/boot/dts/sunxi-libretech-all-h3-it.dtsi   | 180 +++++++++++++++++=
+++
 arch/arm64/boot/dts/allwinner/Makefile             |   3 +
 arch/arm64/boot/dts/allwinner/axp803.dtsi          |  43 +----
 .../dts/allwinner/sun50i-a64-amarula-relic.dts     |  23 ++-
 .../boot/dts/allwinner/sun50i-a64-bananapi-m64.dts |  60 +++----
 .../boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi     |  75 +++++++++
 .../boot/dts/allwinner/sun50i-a64-nanopi-a64.dts   |  60 +++----
 .../allwinner/sun50i-a64-oceanic-5205-5inmfd.dts   |   8 +-
 .../dts/allwinner/sun50i-a64-olinuxino-emmc.dts    |  10 +-
 .../boot/dts/allwinner/sun50i-a64-olinuxino.dts    |  77 ++++-----
 .../boot/dts/allwinner/sun50i-a64-orangepi-win.dts |  62 +++----
 .../boot/dts/allwinner/sun50i-a64-pine64-lts.dts   |   7 +-
 .../boot/dts/allwinner/sun50i-a64-pine64-plus.dts  |  43 +----
 .../arm64/boot/dts/allwinner/sun50i-a64-pine64.dts |  60 +++----
 .../boot/dts/allwinner/sun50i-a64-pinebook.dts     |  26 ++-
 .../dts/allwinner/sun50i-a64-sopine-baseboard.dts  |  48 +-----
 .../boot/dts/allwinner/sun50i-a64-sopine.dtsi      |  65 +++-----
 .../boot/dts/allwinner/sun50i-a64-teres-i.dts      |  26 ++-
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi      | 185 ++++++++++++++++-=
----
 .../sun50i-h5-emlid-neutis-n5-devboard.dts         |  88 +---------
 .../dts/allwinner/sun50i-h5-emlid-neutis-n5.dtsi   |  68 +-------
 .../allwinner/sun50i-h5-libretech-all-h3-cc.dts    |   6 +-
 .../allwinner/sun50i-h5-libretech-all-h3-it.dts    |  11 ++
 .../allwinner/sun50i-h5-libretech-all-h5-cc.dts    |  61 +++++++
 .../dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts   |  45 +----
 .../boot/dts/allwinner/sun50i-h5-nanopi-neo2.dts   |  43 +----
 .../boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts  |  43 +----
 .../dts/allwinner/sun50i-h5-orangepi-prime.dts     |  48 +-----
 .../dts/allwinner/sun50i-h5-orangepi-zero-plus.dts |   9 +-
 .../allwinner/sun50i-h5-orangepi-zero-plus2.dts    |  43 +----
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi       |  85 +++++-----
 .../boot/dts/allwinner/sun50i-h6-beelink-gs1.dts   |  14 +-
 .../boot/dts/allwinner/sun50i-h6-orangepi-3.dts    |  10 +-
 .../dts/allwinner/sun50i-h6-orangepi-lite2.dts     |   6 +-
 .../dts/allwinner/sun50i-h6-orangepi-one-plus.dts  |   8 +-
 .../boot/dts/allwinner/sun50i-h6-orangepi.dtsi     |   8 +-
 .../dts/allwinner/sun50i-h6-pine-h64-model-b.dts   |  21 +++
 .../boot/dts/allwinner/sun50i-h6-pine-h64.dts      |  23 ++-
 .../boot/dts/allwinner/sun50i-h6-tanix-tx6.dts     |  15 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi       |  59 ++++++-
 66 files changed, 1775 insertions(+), 1039 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun8i=
-a83t-de2-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i=
-a80-de-clks.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i=
-a80-usb-clocks.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/sun8i-de2.txt
 delete mode 100644 Documentation/devicetree/bindings/clock/sun9i-de.txt
 delete mode 100644 Documentation/devicetree/bindings/clock/sun9i-usb.txt
 create mode 100644 arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3-devboard.d=
ts
 create mode 100644 arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3.dtsi
 create mode 100644 arch/arm/boot/dts/sunxi-h3-h5-emlid-neutis.dtsi
 create mode 100644 arch/arm/boot/dts/sunxi-libretech-all-h3-it.dtsi
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h5-libretech-all-h=
3-it.dts
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h5-libretech-all-h=
5-cc.dts
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-=
b.dts

--5mCyUwZo2JvN/JJP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE2nN1m/hhnkhOWjtHOJpUIZwPJDAFAl4cPqkACgkQOJpUIZwP
JDCYqw//YbTsyV7nuoRULJj3/Ed21BqWwFzcrGKohbU1/Jww1vmWu1XNkIENxsyD
bCy/PUWcXAkhId6vR8/IY/25mgew8ZrfpI3bRCQPzFBDsPyPvqQQBzBXOGuZHDGI
xRQv0WIqdFowO157L9lNk+jUaSnpUqzFFsyKRD6oWvCejr90dvjbmb7aqqLS47od
JYv1MsMHZMB52ZnRFOz4P1stTjUXDI517SHEyn1Ck2z4J2O7nELJUx9IEvBShTPv
Noh5yySrexwxbnPkFolTu+4WHfOw7mqfi2L0l4+UO/Xiw8WuiHNNttfawFQik613
2GRSBtAmYYHjjzQvfxD5I3IWQ4Jti6nYZzKozkmEBXib7z4J/JPrSI33o5zQqnb0
eLaEvuP6xcomwFbZ+Rh14gFpTxK1+9AXHWr4sGvbCNfI4WllflulCQPxxLg+OJev
rHvtemT71r4PIAVtyXBDpjMoV7XYLniWKzb1bsOQXhIpj0fCwLK8m5QjPH7c+dJ5
Kjyh6HwBg1MZ/uo86iYwloC9xi05nRpgxkKXMFu+aDzK19+yh2a92ZXmTPsustDL
EUBAejwztNyudPGntpJhRFFDzhBv0s/bzxDu2mK/+xaZ1Lrqm+uwwYILeg6gX1xG
PSCEoMoZDs+d5aNMQ1riQcy+msEyi2PbTw08EXWoHdlIqOIRqgo=
=pqUv
-----END PGP SIGNATURE-----

--5mCyUwZo2JvN/JJP--


--===============7940739404099922057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7940739404099922057==--

