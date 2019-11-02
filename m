Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20449ECFA4
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 17:01:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=v8PJl5s4U/5NyFwTj/y+YshAlztsMlEudiZqnwNqcPU=; b=TnA
	K0jTf9EXiTZ6JeNtOKxgTJw4bTrrygcgT67QX3atXyX8jApyk+W5zUDB4cOVG6TiohgN1HDr+PJQH
	Cvyl5QWK6o7kFpCgaHcQlDR5kV3WgQ4tu7oOT1G08ZwDKHog05J5jz/ptZz9ahnhoFLWhxEGz5rBJ
	DxSxbcZ/YrireLCNgzCTVB04c/Ll6AytVnUWzY4NTMt8uFrUCMHM9nOzRTOutZf1VsmWl0bRHnda4
	InSfxfhZIYa6jPFoP5+qSZNRdNO89ZFKZt6VleBBUjrcVuWR+S6VJOZcLajcMI/kvvCGmPEcnYEOI
	uSzaDlsQse2sz23YAeKowqvSuM819Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQvq4-0001hz-Qb; Sat, 02 Nov 2019 16:01:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQvpx-0001hX-R9
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 16:01:15 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 000E32080F;
 Sat,  2 Nov 2019 16:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572710473;
 bh=eic8fz/RoXNu9Y6JiGMD4Wk0wwlZKDvXHLOxXqk/24k=;
 h=Date:From:To:Cc:Subject:From;
 b=loJ8ttRhvpPv5+L5/g6GoW2zelmLxgXnw675Vstsevc0V21ikVnQ8CnNx6JQ5cQ9a
 EyDPzBJ3cnqGGg0ztRq07whz0fdNTfgTYVrPCUvzc2YW3sZO/6DTWQnnhV8AQ3igrp
 t35iOR0Hcwr0VYBImO1NHS1hedq/sQkcohp2mwuI=
Date: Sat, 2 Nov 2019 17:01:10 +0100
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner Device Tree Changes for 5.5
Message-ID: <1bf18c83-f41d-4353-9ca2-9585b8693df2.lettre@localhost>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_090113_919610_76238E78 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============8199955221152703957=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8199955221152703957==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vq476slcol5k7zxc"
Content-Disposition: inline


--vq476slcol5k7zxc
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Please pull the following changes for the next release.

Thanks!
Maxime

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags=
/sunxi-dt-for-5.5-1

for you to fetch changes up to d79ccef07b36cf9e0bf57b24a7c580d1e5f4fc39:

  dt-bindings: arm: sunxi: add FriendlyARM NanoPi Duo2 (2019-11-02 16:42:35=
 +0100)

----------------------------------------------------------------
Our usual bunch of DT patches, with this time mostly:
 - Mali GPU support for the H6
 - Two new crypto drivers enablement
 - A few fixes to our DTs, fixed through the validation effort
 - New boards: NanoPi Duo2

----------------------------------------------------------------
Alistair Francis (1):
      arm64: dts: sun50i: sopine-baseboard: Expose serial1, serial2 and ser=
ial3

Cl=E9ment P=E9ron (3):
      arm64: dts: allwinner: Add ARM Mali GPU node for H6
      arm64: dts: allwinner: Add mali GPU supply for H6 boards
      arm64: allwinner: h6: Enable GPU node for Tanix TX6

Corentin Labbe (8):
      dt-bindings: crypto: Add DT bindings documentation for sun8i-ce Crypt=
o Engine
      ARM: dts: sun8i: R40: add crypto engine node
      ARM: dts: sun8i: H3: Add Crypto Engine node
      arm64: dts: allwinner: sun50i: Add Crypto Engine node on A64
      arm64: dts: allwinner: sun50i: Add crypto engine node on H5
      arm64: dts: allwinner: sun50i: Add Crypto Engine node on H6
      ARM: dts: sun8i: a83t: Add Security System node
      ARM: dts: sun9i: a80: Add Security System node

Georgii Staroselskii (1):
      arm64: dts: allwinner: bluetooth for Emlid Neutis N5

Jernej Skrabec (1):
      arm64: dts: allwinner: a64: orangepi-win: Enable audio codec

Karl Palsson (3):
      ARM: dts: sunxi: h3/h5: add missing uart2 rts/cts pins
      ARM: dts: sun8i: add FriendlyARM NanoPi Duo2
      dt-bindings: arm: sunxi: add FriendlyARM NanoPi Duo2

Maxime Ripard (2):
      ARM: dts: sun9i: Add missing watchdog clocks
      ARM: dts: sun5i: olinuxino micro: Fix AT24 node name

Myl=E8ne Josserand (1):
      ARM: dts: sun8i: a83t: a711: Add touchscreen node

Ondrej Jirman (2):
      arm64: dts: allwinner: h6: Add pin configs for uart1
      arm64: dts: allwinner: orange-pi-3: Enable UART1 / Bluetooth


 Documentation/devicetree/bindings/arm/sunxi.yaml                 |   5 +-
 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml |  88 +++=
+-
 arch/arm/boot/dts/Makefile                                       |   1 +-
 arch/arm/boot/dts/sun5i-a10s-olinuxino-micro.dts                 |   2 +-
 arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts                        |  16 +-
 arch/arm/boot/dts/sun8i-a83t.dtsi                                |   9 +-
 arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts                       | 174 +++=
+++++-
 arch/arm/boot/dts/sun8i-h3.dtsi                                  |   9 +-
 arch/arm/boot/dts/sun8i-r40.dtsi                                 |   9 +-
 arch/arm/boot/dts/sun9i-a80.dtsi                                 |  11 +-
 arch/arm/boot/dts/sunxi-h3-h5.dtsi                               |   5 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts        |  29 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts    |  25 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi                    |   9 +-
 arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5.dtsi     |  13 +-
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi                     |   9 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts          |   6 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts           |  25 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi            |   6 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts             |   6 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts            |   4 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi                     |  33 ++-
 22 files changed, 493 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8=
i-ce.yaml
 create mode 100644 arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts

--vq476slcol5k7zxc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXb2oRgAKCRDj7w1vZxhR
xd5sAQChwPu5M8RCwTtPld7lJ3dBJYN8gH21GzUUnuS2knCA5gEAiIkIj/qVBDWK
Nlwth+BpwJ8gXrwH54iARhS2vkKZCQA=
=A2MF
-----END PGP SIGNATURE-----

--vq476slcol5k7zxc--


--===============8199955221152703957==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8199955221152703957==--

