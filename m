Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 446731D571F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:12:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=F4e51+ue36g9Ak5C0ZZIkQL44shF8iinuelAGBfPyTQ=; b=TuN
	wFw/JGQywk7NA5bgSznlZgpDh6sCiGpuExvB8xluWEThHP9yvCn506JS999enrn0S7AWDoS+WA+Ki
	NggXSu9H7eEFkcRWpdeRf2NSURd0HfTYH4056JPS0gdGC6zgi4H5qTr36saGTJeLEqSgQ6+2KLU6G
	xC8bATepb5BvEZq7k02N37/jsQkh6Z97pxGokCIr5CY0mRuH6nKCRqUzvECeTHFe20NTuvWhJGv1L
	kUCeFdKPIHCa/cOQu10OKELC6o5gPgps/AW8heTlwHk00Bv5qNDIuBSa+UXD4kA8VkTHAVNeej59s
	WRax+gNKl/0//dwQw217dWil9JlC3sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdsj-0006r1-Bn; Fri, 15 May 2020 17:12:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdsb-0006qY-Mb
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:12:15 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E94C2206C0;
 Fri, 15 May 2020 17:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589562733;
 bh=QIkLYq3QJv63Bpg4wMXMUwlHYiYkvth0hoFVfmrxNfA=;
 h=Date:From:List-Id:To:Cc:Subject:From;
 b=2IQMVPTCPzE3nE+45akQCtMF7LKISpRe9iAcXORX6m7Jwh3Lel0CVB0CLgNl9XLUx
 9frTkq3rgkdcG/+OWjrKSiit+BvZVx0p9v4OZ5qV+IXLrUSiCeQIQY1xgAAozMkzzH
 wkR5M1FvLwHj9JIzv3QtHO1nnJ3UHb1zzkkBE2hE=
Date: Fri, 15 May 2020 19:12:11 +0200
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner Device Tree Changes for 5.8
Message-ID: <cfa66bd9-f74c-4614-9ea5-9ef8546cc571.lettre@localhost>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_101213_776292_54EBE83F 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>
Content-Type: multipart/mixed; boundary="===============0575728680176196831=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0575728680176196831==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RnlQjJ0d97Da+TV1"
Content-Disposition: inline


--RnlQjJ0d97Da+TV1
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Please pull the following changes for the next release.

Thanks!
Maxime

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags=
/sunxi-dt-for-5.8-1

for you to fetch changes up to b3a0a2f910c7ae29074415e07f8d830935df19e2:

  arm64: dts: allwinner: h6: Add IOMMU (2020-05-15 09:35:39 +0200)

----------------------------------------------------------------
Our usual number of patches to improve the Allwinner Device Tree
support, including:
  - Support for the IOMMU on the H6
  - Support for cpufreq / thermal throttling on the H6
  - Support for the mailbox on the A64, A83t, H3, H5 and H6
  - New boards: A20-OLinuXino-LIME-eMMC
-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXr7NHgAKCRDj7w1vZxhR
xbhGAQCDavHkpjvq4Hwk/znoS0Y6NvW1JQUyKUWH8K6ah1ZkFwEA5gC0Ac9cbDAk
Q5fZeYl7mPbEL9DI0RphVqHmY2ezXw0=3D
=3DWR5/
-----END PGP SIGNATURE-----

----------------------------------------------------------------
Cl=C3=A9ment P=C3=A9ron (6):
      arm64: dts: allwinner: h6: Enable CPU opp tables for Beelink GS1
      arm64: dts: allwinner: h6: Enable CPU opp tables for Orange Pi 3
      arm64: dts: allwinner: Sort Pine H64 device-tree nodes
      arm64: dts: allwinner: h6: Enable CPU opp tables for Pine H64
      arm64: dts: allwinner: h6: add voltage range to OPP table
      arm64: dts: allwinner: h6: Enable CPU opp tables for Tanix TX6

Jernej Skrabec (2):
      arm64: dts: allwinner: h6: orangepi: Add gpio power supply
      arm64: dts: allwinner: h6: orangepi: Disable OTG mode

Maxime Ripard (1):
      arm64: dts: allwinner: h6: Add IOMMU

Ondrej Jirman (3):
      arm64: dts: allwinner: h6: Add thermal trip points/cooling map
      arm64: dts: allwinner: h6: Add CPU Operating Performance Points table
      arm64: dts: allwinner: sun50i-a64: Add missing address/size-cells

Petr =C5=A0tetiar (1):
      arm64: dts: allwinner: a64: olinuxino: add user red LED

Qiang Yu (1):
      ARM: dts: sun8i-h3: add opp table for mali gpu

Samuel Holland (4):
      ARM: dts: sunxi: a83t: Add msgbox node
      ARM: dts: sunxi: h3/h5: Add msgbox node
      arm64: dts: allwinner: a64: Add msgbox node
      arm64: dts: allwinner: h6: Add msgbox node

Sebastian Meyer (1):
      arm64: allwinner: h6: orangepi-lite2: Support BT+WIFI combo module

Stefan Mavrodiev (2):
      dt-bindings: arm: sunxi: Add compatible for A20-OLinuXino-LIME-eMMC
      ARM: dts: sun7i: Add A20-OLinuXino-LIME-eMMC

Vincent Stehl=C3=A9 (1):
      ARM: dts: sun8i-h2-plus-bananapi-m2-zero: Fix led polarity

Yangtao Li (1):
      arm64: dts: allwinner: h6: Add clock to CPU cores


 Documentation/devicetree/bindings/arm/sunxi.yaml           |   5 +-
 arch/arm/boot/dts/Makefile                                 |   1 +-
 arch/arm/boot/dts/sun7i-a20-olinuxino-lime-emmc.dts        |  32 ++++-
 arch/arm/boot/dts/sun8i-a83t.dtsi                          |  10 +-
 arch/arm/boot/dts/sun8i-h2-plus-bananapi-m2-zero.dts       |   2 +-
 arch/arm/boot/dts/sun8i-h3.dtsi                            |  24 ++-
 arch/arm/boot/dts/sunxi-h3-h5.dtsi                         |  10 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts     |   9 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi              |  12 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts    |   9 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi       | 117 +++++++++=
+++++-
 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts     |   3 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-lite2.dts |  65 ++++++++-
 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi      |  17 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts       |  43 ++---
 arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts      |  13 ++-
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi               |  60 +++++++-
 17 files changed, 408 insertions(+), 24 deletions(-)
 create mode 100644 arch/arm/boot/dts/sun7i-a20-olinuxino-lime-emmc.dts
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi



--RnlQjJ0d97Da+TV1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXr7NawAKCRDj7w1vZxhR
xbXRAP0fEnfv9kFFZKOEHptI6gx93jrOeCHmkSwa/DTj4jZc1AD9GI+Kvs6MXAhP
vUiTADGfyNOOwZgmdFB5iFJpz7wJFgQ=
=jv+S
-----END PGP SIGNATURE-----

--RnlQjJ0d97Da+TV1--


--===============0575728680176196831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0575728680176196831==--

