Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D63364E1A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 10:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IP/HNe1wNVqNCSXwI/zOhXChVryhbpdTL8bkcRm8PLQ=; b=NRj
	AXIqwT/CJcq25Slx3lTSSSO5M2gM9yfAP95Kks5sWQRByKFs48sOf3AJDGZNr/E0Q08WyN663TSh3
	3UoK5EDtPt1W/3mrRS/VbIOBZyHLga68TQM9uHCQx4VyXTAMO0QYpAmCX/FuEHi6LKHY5OyK7QB1L
	sn3v8ji5FLc2z12kPssYa0YY2MlXesL7iivQsHky8lYP/agjQ2nN8+RkSriu52MyPOjVKYnGoYUbJ
	w+wt3U1RwMpTaVcP/dCEPx3N4pI4RyPYaOKfbPVUGzaN1MgbgMzTKElCmZD7wE5OhWutzcTlRKLNZ
	dvgqa7KAg9np3c3m4X17aP50PDSVLjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heEbd-0004Of-0p; Fri, 21 Jun 2019 08:09:09 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heEaz-0004AJ-Pa
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 08:08:31 +0000
X-Originating-IP: 90.88.16.156
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id AD0A41BF20F;
 Fri, 21 Jun 2019 08:08:27 +0000 (UTC)
Date: Fri, 21 Jun 2019 10:08:27 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: arm@kernel.org
Subject: [GIT PULL] Allwinner arm64 Device Tree Changes for 5.3
Message-ID: <0ded8794-cfd8-4e5b-a1c6-7dbb875e9bc1.lettre@localhost>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_010830_254014_066227FB 
X-CRM114-Status: GOOD (  12.63  )
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
Content-Type: multipart/mixed; boundary="===============2470906839752745144=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2470906839752745144==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2fq4jhjj6rfhpvlz"
Content-Disposition: inline


--2fq4jhjj6rfhpvlz
Content-Type: text/plain; charset=iso-8859-1
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
/sunxi-dt64-for-5.3-201906210808

for you to fetch changes up to 9164665a390a2a42e9f56094eeec8c4a52748723:

  arm64: dts: allwinner: h6: Add DMA node (2019-06-12 15:25:59 +0200)

----------------------------------------------------------------
Our usual bunch of arm64 DT changes, this time with:
  - Some fixes for the DT schemas that were added during this release
  - Wifi support for the H6
  - LRADC suppport for the A64
  - Some background work on A64 boards, to enable various devices such
    as touchscreens, PMIC, audio, wifi, etc.

----------------------------------------------------------------
Chen-Yu Tsai (2):
      arm64: dts: allwinner: axp803: add USB power supply node
      arm64: dts: allwinner: a64: bananapi-m64: Enable PMIC USB power supply

Cl=E9ment P=E9ron (3):
      dt-bindings: watchdog: add Allwinner H6 watchdog
      arm64: dts: allwinner: h6: add watchdog node
      arm64: dts: allwinner: h6: add r_watchog node

Harald Geyer (1):
      arm64: dts: allwinner: a64: Enable audio on Teres-I

Icenowy Zheng (2):
      arm64: dts: allwinner: h6: add PIO VCC bank supplies for Pine H64
      arm64: dts: allwinner: a64: Add pinmux for RGB666 LCD

Jagan Teki (3):
      arm64: dts: allwinner: a64: move I2C pinctrl to dtsi
      arm64: dts: allwinner: a64-amarula-relic: Add GT5663 CTP node
      arm64: dts: allwinner: a64-oceanic-5205-5inmfd: Enable GT911 CTP

Jernej Skrabec (2):
      arm64: dts: allwinner: a64: orangepi-win: Add wifi and bluetooth nodes
      arm64: dts: allwinner: h6: Add DMA node

Luca Weiss (2):
      dt-bindings: input: sun4i-lradc-keys: Add A64 compatible
      arm64: dts: allwinner: a64: Add lradc node


 Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt     |  1 +-
 Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt         |  1 +-
 arch/arm64/boot/dts/allwinner/axp803.dtsi                        |  6 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts       | 25 ++++-
 arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts        |  7 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts          |  6 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts | 23 ++++=
+-
 arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts        | 23 ++++=
+-
 arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts              |  2 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts             | 44 ++++=
++++-
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi                    | 22 ++++=
+-
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts             | 10 ++-
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi                     | 28 ++++=
++-
 13 files changed, 184 insertions(+), 14 deletions(-)



--=20
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--2fq4jhjj6rfhpvlz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQyQewAKCRDj7w1vZxhR
xY20AQDOR2TZIhSVNEe6yjsswL3LQJUsIwCsICcaTuL55Gcd7wD/bsDq5cUayQbA
2C0dwpoqi+US14kWInE6PdBbcM5FywE=
=8OTs
-----END PGP SIGNATURE-----

--2fq4jhjj6rfhpvlz--


--===============2470906839752745144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2470906839752745144==--

