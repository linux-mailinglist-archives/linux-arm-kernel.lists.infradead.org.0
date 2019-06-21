Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D284E19B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 10:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=z7ifV5w47md+qKoLyvpFe1+S92hvpOeHN9rkm07A2Hs=; b=JHi
	/IzI3Ndxf7C9dCNaT/aM3rrxs4tmtP2T1zkCDSwTPB8eiQCRkgujYAh5ORw/WnsInSQqKwJ9sxi+O
	DbssgCw7TrLQAFrBbGajrBJ5LvcjEApe0DRZ8aTf1tpxFRYVEv9lZUtNpHUdTK6YRhLXR7gWLso1C
	7Hnt+fUkvFQmF/682/BCIYusj+lrrEmzRBTYYsvcMlzas/K4DFlpqGmofeuD5Xj/DEnkhOGqqdOPr
	+ho7n0+6uf6pMqNVlx+DwNRcnSw4q1uDotNAWBzyWmdPPRJgDKhEu3t9zHforc4uuk/eM8rCD3jKU
	zk8JuHFX5sEXbTVj1ADqkMdkPW4T3DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heEb7-00047K-Q6; Fri, 21 Jun 2019 08:08:38 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heEaq-00046x-GB
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 08:08:22 +0000
X-Originating-IP: 90.88.16.156
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 07BD91BF20A;
 Fri, 21 Jun 2019 08:08:09 +0000 (UTC)
Date: Fri, 21 Jun 2019 10:08:08 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: arm@kernel.org
Subject: [GIT PULL] Allwinner Device Tree Changes for 5.3
Message-ID: <459c0bad-c02e-40f0-9e56-1dcdad9c6591.lettre@localhost>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_010820_858154_EFF4D413 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4150198997085253315=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4150198997085253315==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6f5caajmzmen2hoa"
Content-Disposition: inline


--6f5caajmzmen2hoa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Please pull the following changes for the next release.

Thanks!
Maxime

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags=
/sunxi-dt-for-5.3-201906210807

for you to fetch changes up to 2269f0c15191af317d64115176a01bf303532af3:

  dt-bindings: pwm: Convert Allwinner PWM to a schema (2019-06-21 09:59:10 =
+0200)

----------------------------------------------------------------
Our usual bunch of patches:
  - Some work on the BPi M2-Berry to support various devices
  - Convert some bindings to a schema, and a lot of fixes reported by
    the schemas we introduced.
  - A few other fixes here and there

----------------------------------------------------------------
Chen-Yu Tsai (1):
      ARM: dts: sun8i: a83t: Add device node for CSI (Camera Sensor Interfa=
ce)

Jernej Skrabec (1):
      ARM: dts: sun8i-h3: Fix wifi in Beelink X2 DT

Maxime Ripard (11):
      dt-bindings: bus: Convert Allwinner RSB to a schema
      ARM: dts: sun6i: Add default address and size cells for SPI
      ARM: dts: sun8i: a711: Change LRADC node names to avoid warnings
      ARM: dts: sun7i: icnova-swac: Fix the model vendor
      ARM: dts: gr8-evb: Fix RTC vendor
      ARM: dts: sun6i: Fix RTC node
      ARM: dts: sun6i: Add external crystals accuracy
      ARM: dts: sun8i: v3s: Fix the RTC node
      ARM: dts: sun8i: v3s: Add external crystals accuracy
      ARM: dts: sun8i: r40: Change the RTC compatible
      dt-bindings: pwm: Convert Allwinner PWM to a schema

Pablo Greco (7):
      ARM: dts: sun8i: r40: bananapi-m2-ultra: Add GPIO pin-bank regulator =
supplies
      ARM: dts: sun8i: v40: bananapi-m2-berry: Add GPIO pin-bank regulator =
supplies
      ARM: dts: sun8i: v40: bananapi-m2-berry: Enable GMAC ethernet control=
ler
      ARM: dts: sun8i: v40: bananapi-m2-berry: Enable HDMI output
      ARM: dts: sun8i: v40: bananapi-m2-berry: Enable AHCI
      ARM: dts: sun8i: v40: bananapi-m2-berry: Add Bluetooth device node
      ARM: dts: sun8i: r40: bananapi-m2-ultra: Remove regulator-always-on

Priit Laes (1):
      ARM: dts: sun7i: olimex-lime2: Enable ac and power supplies


 Documentation/devicetree/bindings/arm/sunxi.yaml                   |   2 +-
 Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml |  79 +=
+++-
 Documentation/devicetree/bindings/bus/sunxi-rsb.txt                |  47 +=
---
 Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml |  57 +=
++-
 Documentation/devicetree/bindings/pwm/pwm-sun4i.txt                |  24 +-
 arch/arm/boot/dts/sun5i-gr8-evb.dts                                |   2 +-
 arch/arm/boot/dts/sun6i-a31.dtsi                                   |  25 +-
 arch/arm/boot/dts/sun7i-a20-icnova-swac.dts                        |   3 +-
 arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts                    |   8 +-
 arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts                          |   4 +-
 arch/arm/boot/dts/sun8i-a83t.dtsi                                  |  29 +=
+-
 arch/arm/boot/dts/sun8i-h3-beelink-x2.dts                          |   4 +-
 arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts                  |   7 +-
 arch/arm/boot/dts/sun8i-r40.dtsi                                   |   3 +-
 arch/arm/boot/dts/sun8i-v3s.dtsi                                   |  13 +-
 arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts                  | 123 +=
++++++-
 16 files changed, 341 insertions(+), 89 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/bus/allwinner,sun8i-a=
23-rsb.yaml
 delete mode 100644 Documentation/devicetree/bindings/bus/sunxi-rsb.txt
 create mode 100644 Documentation/devicetree/bindings/pwm/allwinner,sun4i-a=
10-pwm.yaml
 delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-sun4i.txt



--=20
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--6f5caajmzmen2hoa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQyQaAAKCRDj7w1vZxhR
xa1/AQCPyV4NWeGxSHMcbyzTzXwgrLPsqz1wUsyouKwx5jg2bgEAzNvgAEvhFuT+
cr9Dt94Bzny2jKNQRB8QUew4fj5LZgU=
=5LY4
-----END PGP SIGNATURE-----

--6f5caajmzmen2hoa--


--===============4150198997085253315==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4150198997085253315==--

