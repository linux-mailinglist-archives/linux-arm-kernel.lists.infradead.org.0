Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E241EAAB04
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 20:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1zcmZDOYWOMrN9G7vOB3wSuN12VFfBWbK8wJcWRfqbo=; b=WEcHc3LEPMg0Vi
	KN/i2+6Cg+pHm5YzW9KB+3wb2g832SLnzjbNbM0QMBvbkHgpgTFWSQBHFMNDPtiJMBUZHOpVyHzmo
	HpB3bQDMiHgdeXKaXRkHdKQCxDGNeV49mQtTIrwsicjykN5yH5zFtu0HOQhAh0FBwmLe4rKEMkfjn
	b80BVd91wuM/0bNpAd12dAKHtKJRPUW1gm9yRDdA8xAzdB+A7oTde8xOjhKlwyql9FlUATBNDE8ln
	b/WqzJdwMAmAG7QAlN9nZ4no9VBZAMfhY79frmynD/XANofI4pMnw5iyzezUfGlfmapbiymUvz0D6
	mq6hGRoA6Waz6RuU57lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5wWl-0004ob-9w; Thu, 05 Sep 2019 18:30:39 +0000
Received: from smtprelay0034.hostedemail.com ([216.40.44.34]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5wWb-0004nh-Ee
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 18:30:32 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id A0B22180295BF;
 Thu,  5 Sep 2019 18:30:26 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 10, 1, 0, , d41d8cd98f00b204, joe@perches.com, :::::::,
 RULES_HIT:4:41:355:379:800:960:966:967:973:982:988:989:1042:1260:1263:1277:1311:1313:1314:1345:1437:1515:1516:1518:1593:1594:1605:1730:1747:1777:1792:1801:2196:2197:2199:2200:2393:2525:2538:2565:2640:2682:2685:2828:2859:2904:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3653:3865:3868:3870:3871:3872:3873:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4385:4605:4659:5007:6117:6119:6120:6299:7688:7875:7901:7903:7974:8957:9025:10004:10049:10848:11026:11657:11658:11914:12043:12114:12296:12297:12438:12555:12712:12726:12737:12986:13439:13894:14096:14097:14157:14394:14659:21080:21221:21433:21451:21627:21691:21772:30025:30054:30055:30064:30067:30070,
 0,
 RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:26,
 LUA_SUMMARY:none
X-HE-Tag: wine72_20cb3d518fc49
X-Filterd-Recvd-Size: 15587
Received: from XPS-9350.home (unknown [47.151.152.152])
 (Authenticated sender: joe@perches.com)
 by omf17.hostedemail.com (Postfix) with ESMTPA;
 Thu,  5 Sep 2019 18:30:25 +0000 (UTC)
Message-ID: <f85fe45879469ba53d3ae91475b4502546de501e.camel@perches.com>
Subject: [PATCH] arm: dts and dtsi: Cleanup 'SPDX-License-Identifier:' uses
From: Joe Perches <joe@perches.com>
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Date: Thu, 05 Sep 2019 11:30:24 -0700
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_113029_635811_494A5514 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.34 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-spdx@vger.kernel.org, linux-kernel <linux-kernel@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the typical form and location for SPDX-License-Identifier:

Done with command line and perl script:

$ git grep -n 'SPDX-License-Identifier: ' -- '*.dtsi' '*.dts' | \
  grep -v ':1:' | perl move_spdx.pl =

$ cat move_spdx.pl
while (<>) {
    /^([^:]+):([^:]+):(.*)/;
    my ($file, $line, $spdx) =3D ($1, $2, $3);
    $spdx =3D~ s/^\s*\/?\*\s*//;
    $spdx =3D~ s/\s*\*\/\s*$//;
    $spdx =3D "// $spdx";
    open(FH, '<', $file) or die $!;
    my @lines =3D <FH>;
    close FH;
    open(FH, '>', $file) or die $!;
    print FH "$spdx\n";
    my $count =3D 0;
    foreach (@lines) {
	$count++;
	next if ($count =3D=3D $line);
	next if ($count =3D=3D $line - 1 && $_ =3D~ /^\s*\*\s*$/);
	next if ($count =3D=3D $line + 1 && $_ =3D~ /^\s*\*\s*$/);
	print FH "$_";
    }
    close FH;
}

And some typing for a few files with multiple spaces.

Signed-off-by: Joe Perches <joe@perches.com>
---
 arch/arm/boot/dts/am335x-osd3358-sm-red.dts                    | 2 +-
 arch/arm/boot/dts/am335x-pdu001.dts                            | 3 +--
 arch/arm/boot/dts/aspeed-bmc-microsoft-olympus.dts             | 2 +-
 arch/arm/boot/dts/bcm953012hr.dts                              | 3 +--
 arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts                  | 3 +--
 arch/arm/boot/dts/sun8i-h3-libretech-all-h3-cc.dts             | 3 +--
 arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts        | 3 +--
 arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts           | 3 +--
 arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts | 3 +--
 arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts             | 2 +-
 arch/arm64/boot/dts/mediatek/mt2712-evb.dts                    | 3 +--
 arch/arm64/boot/dts/mediatek/mt2712e.dtsi                      | 3 +--
 arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts       | 3 +--
 arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts                   | 3 +--
 arch/arm64/boot/dts/mediatek/mt7622.dtsi                       | 3 +--
 arch/arm64/boot/dts/realtek/rtd1295-mele-v9.dts                | 3 +--
 arch/arm64/boot/dts/realtek/rtd1295-probox2-ava.dts            | 3 +--
 arch/arm64/boot/dts/realtek/rtd1295-zidoo-x9s.dts              | 3 +--
 arch/arm64/boot/dts/realtek/rtd1295.dtsi                       | 3 +--
 arch/arm64/boot/dts/realtek/rtd129x.dtsi                       | 3 +--
 arch/arm64/boot/dts/sprd/sc2731.dtsi                           | 3 +--
 arch/arm64/boot/dts/sprd/sc9860.dtsi                           | 3 +--
 arch/arm64/boot/dts/sprd/sp9860g-1h10.dts                      | 3 +--
 arch/arm64/boot/dts/sprd/whale2.dtsi                           | 3 +--
 arch/arm64/boot/dts/zte/zx296718-pcbox.dts                     | 3 +--
 25 files changed, 25 insertions(+), 47 deletions(-)

diff --git a/arch/arm/boot/dts/am335x-osd3358-sm-red.dts b/arch/arm/boot/dt=
s/am335x-osd3358-sm-red.dts
index f47cc9fea253..2d50ac4a8960 100644
--- a/arch/arm/boot/dts/am335x-osd3358-sm-red.dts
+++ b/arch/arm/boot/dts/am335x-osd3358-sm-red.dts
@@ -1,4 +1,4 @@
-//SPDX-License-Identifier: GPL-2.0
+// SPDX-License-Identifier: GPL-2.0
 /* Copyright (C) 2018 Octavo Systems LLC - http://www.octavosystems.com/
  *
  * This program is free software; you can redistribute it and/or modify
diff --git a/arch/arm/boot/dts/am335x-pdu001.dts b/arch/arm/boot/dts/am335x=
-pdu001.dts
index 3141255f72c2..869d0257d9f8 100644
--- a/arch/arm/boot/dts/am335x-pdu001.dts
+++ b/arch/arm/boot/dts/am335x-pdu001.dts
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * pdu001.dts
  *
@@ -6,8 +7,6 @@
  * Copyright (C) 2018 EETS GmbH - http://www.eets.ch/
  *
  * Copyright (C) 2011, Texas Instruments, Incorporated - http://www.ti.com/
- *
- * SPDX-License-Identifier:  GPL-2.0+
  */
 =

 /dts-v1/;
diff --git a/arch/arm/boot/dts/aspeed-bmc-microsoft-olympus.dts b/arch/arm/=
boot/dts/aspeed-bmc-microsoft-olympus.dts
index 73319917cb74..f8f9f71b878c 100644
--- a/arch/arm/boot/dts/aspeed-bmc-microsoft-olympus.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-microsoft-olympus.dts
@@ -1,4 +1,4 @@
-//SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0+
 =

 /dts-v1/;
 =

diff --git a/arch/arm/boot/dts/bcm953012hr.dts b/arch/arm/boot/dts/bcm95301=
2hr.dts
index 9140be7ec053..6dee6974d4a0 100644
--- a/arch/arm/boot/dts/bcm953012hr.dts
+++ b/arch/arm/boot/dts/bcm953012hr.dts
@@ -1,6 +1,5 @@
+// SPDX-License-Identifier: BSD-3-Clause
 /*
- *  SPDX-License-Identifier: BSD-3-Clause
- *
  *  Copyright(c) 2017 Broadcom
  *
  *  Redistribution and use in source and binary forms, with or without
diff --git a/arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts b/arch/arm/boot/=
dts/mt7623n-bananapi-bpi-r2.dts
index 2b760f90f38c..fcc20e6d405c 100644
--- a/arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts
+++ b/arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts
@@ -1,7 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
  * Copyright 2017-2018 Sean Wang <sean.wang@mediatek.com>
- *
- * SPDX-License-Identifier: (GPL-2.0+ OR MIT)
  */
 =

 /dts-v1/;
diff --git a/arch/arm/boot/dts/sun8i-h3-libretech-all-h3-cc.dts b/arch/arm/=
boot/dts/sun8i-h3-libretech-all-h3-cc.dts
index a8b2f0f1c11d..50f2fb30d2d4 100644
--- a/arch/arm/boot/dts/sun8i-h3-libretech-all-h3-cc.dts
+++ b/arch/arm/boot/dts/sun8i-h3-libretech-all-h3-cc.dts
@@ -1,7 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
  * Copyright (C) 2017 Chen-Yu Tsai <wens@csie.org>
- *
- * SPDX-License-Identifier: (GPL-2.0+ OR MIT)
  */
 =

 /dts-v1/;
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts b/arch=
/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
index 72d6961dc312..2ca36580436c 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
@@ -1,6 +1,5 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
- * SPDX-License-Identifier: (GPL-2.0+ OR MIT)
- *
  * Copyright (c) 2018 ARM Ltd.
  */
 =

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/ar=
m64/boot/dts/allwinner/sun50i-a64-teres-i.dts
index 1069e7012c9c..af44cd0e9b8e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
@@ -1,8 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright (C) Harald Geyer <harald@ccbib.org>
  * based on sun50i-a64-olinuxino.dts by Jagan Teki <jteki@openedev.com>
- *
- * SPDX-License-Identifier: (GPL-2.0 OR MIT)
  */
 =

 /dts-v1/;
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts=
 b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts
index db6ea7b58999..a56ac6a28df0 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts
@@ -1,8 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR X11)
 /*
  * Copyright (C) 2016 ARM Ltd.
  * Copyright (C) 2018 Hauke Mehrtens <hauke@hauke-m.de>
- *
- * SPDX-License-Identifier: (GPL-2.0+ OR X11)
  */
 =

 /dts-v1/;
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts b/arch/arm6=
4/boot/dts/intel/socfpga_agilex_socdk.dts
index 7814a9e8eb08..f5ff8571eb13 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier:     GPL-2.0
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2019, Intel Corporation
  */
diff --git a/arch/arm64/boot/dts/mediatek/mt2712-evb.dts b/arch/arm64/boot/=
dts/mediatek/mt2712-evb.dts
index 2b91daf5c1a6..4a55f3a71c12 100644
--- a/arch/arm64/boot/dts/mediatek/mt2712-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt2712-evb.dts
@@ -1,8 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright (c) 2017 MediaTek Inc.
  * Author: YT Shen <yt.shen@mediatek.com>
- *
- * SPDX-License-Identifier: (GPL-2.0 OR MIT)
  */
 =

 /dts-v1/;
diff --git a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi b/arch/arm64/boot/dt=
s/mediatek/mt2712e.dtsi
index 43307bad3f0d..96777f0373ec 100644
--- a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
@@ -1,8 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright (c) 2017 MediaTek Inc.
  * Author: YT Shen <yt.shen@mediatek.com>
- *
- * SPDX-License-Identifier: (GPL-2.0 OR MIT)
  */
 =

 #include <dt-bindings/clock/mt2712-clk.h>
diff --git a/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts b/arc=
h/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
index 83e10591e0e5..0cab2bd5e79f 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
@@ -1,8 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright (c) 2018 MediaTek Inc.
  * Author: Ryder Lee <ryder.lee@mediatek.com>
- *
- * SPDX-License-Identifier: (GPL-2.0 OR MIT)
  */
 =

 /dts-v1/;
diff --git a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts b/arch/arm64/boot=
/dts/mediatek/mt7622-rfb1.dts
index 3f783348c66a..b13ab8b3411f 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
@@ -1,9 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright (c) 2017 MediaTek Inc.
  * Author: Ming Huang <ming.huang@mediatek.com>
  *	   Sean Wang <sean.wang@mediatek.com>
- *
- * SPDX-License-Identifier: (GPL-2.0 OR MIT)
  */
 =

 /dts-v1/;
diff --git a/arch/arm64/boot/dts/mediatek/mt7622.dtsi b/arch/arm64/boot/dts=
/mediatek/mt7622.dtsi
index dac51e98204c..4ed2e231f693 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7622.dtsi
@@ -1,9 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright (c) 2017 MediaTek Inc.
  * Author: Ming Huang <ming.huang@mediatek.com>
  *	   Sean Wang <sean.wang@mediatek.com>
- *
- * SPDX-License-Identifier: (GPL-2.0 OR MIT)
  */
 =

 #include <dt-bindings/interrupt-controller/irq.h>
diff --git a/arch/arm64/boot/dts/realtek/rtd1295-mele-v9.dts b/arch/arm64/b=
oot/dts/realtek/rtd1295-mele-v9.dts
index bd584e99fff9..88687591ac83 100644
--- a/arch/arm64/boot/dts/realtek/rtd1295-mele-v9.dts
+++ b/arch/arm64/boot/dts/realtek/rtd1295-mele-v9.dts
@@ -1,7 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
  * Copyright (c) 2017 Andreas F=E4rber
- *
- * SPDX-License-Identifier: (GPL-2.0+ OR MIT)
  */
 =

 /dts-v1/;
diff --git a/arch/arm64/boot/dts/realtek/rtd1295-probox2-ava.dts b/arch/arm=
64/boot/dts/realtek/rtd1295-probox2-ava.dts
index 8e2b0e75298a..4e917d4f880f 100644
--- a/arch/arm64/boot/dts/realtek/rtd1295-probox2-ava.dts
+++ b/arch/arm64/boot/dts/realtek/rtd1295-probox2-ava.dts
@@ -1,7 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
  * Copyright (c) 2017 Andreas F=E4rber
- *
- * SPDX-License-Identifier: (GPL-2.0+ OR MIT)
  */
 =

 /dts-v1/;
diff --git a/arch/arm64/boot/dts/realtek/rtd1295-zidoo-x9s.dts b/arch/arm64=
/boot/dts/realtek/rtd1295-zidoo-x9s.dts
index da19faab29d5..8b52c907f9bf 100644
--- a/arch/arm64/boot/dts/realtek/rtd1295-zidoo-x9s.dts
+++ b/arch/arm64/boot/dts/realtek/rtd1295-zidoo-x9s.dts
@@ -1,7 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
  * Copyright (c) 2016-2017 Andreas F=E4rber
- *
- * SPDX-License-Identifier: (GPL-2.0+ OR MIT)
  */
 =

 /dts-v1/;
diff --git a/arch/arm64/boot/dts/realtek/rtd1295.dtsi b/arch/arm64/boot/dts=
/realtek/rtd1295.dtsi
index 41d7858da826..0c413e710930 100644
--- a/arch/arm64/boot/dts/realtek/rtd1295.dtsi
+++ b/arch/arm64/boot/dts/realtek/rtd1295.dtsi
@@ -1,9 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
  * Realtek RTD1295 SoC
  *
  * Copyright (c) 2016-2017 Andreas F=E4rber
- *
- * SPDX-License-Identifier: (GPL-2.0+ OR MIT)
  */
 =

 #include "rtd129x.dtsi"
diff --git a/arch/arm64/boot/dts/realtek/rtd129x.dtsi b/arch/arm64/boot/dts=
/realtek/rtd129x.dtsi
index b9cb92466fc7..ea109855718b 100644
--- a/arch/arm64/boot/dts/realtek/rtd129x.dtsi
+++ b/arch/arm64/boot/dts/realtek/rtd129x.dtsi
@@ -1,9 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
  * Realtek RTD1293/RTD1295/RTD1296 SoC
  *
  * Copyright (c) 2016-2017 Andreas F=E4rber
- *
- * SPDX-License-Identifier: (GPL-2.0+ OR MIT)
  */
 =

 /memreserve/	0x0000000000000000 0x0000000000030000;
diff --git a/arch/arm64/boot/dts/sprd/sc2731.dtsi b/arch/arm64/boot/dts/spr=
d/sc2731.dtsi
index e15409f55f43..fc4e2b1e160e 100644
--- a/arch/arm64/boot/dts/sprd/sc2731.dtsi
+++ b/arch/arm64/boot/dts/sprd/sc2731.dtsi
@@ -1,9 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
  * Spreadtrum SC2731 PMIC dts file
  *
  * Copyright (C) 2018, Spreadtrum Communications Inc.
- *
- * SPDX-License-Identifier: (GPL-2.0+ OR MIT)
  */
 =

 &adi_bus {
diff --git a/arch/arm64/boot/dts/sprd/sc9860.dtsi b/arch/arm64/boot/dts/spr=
d/sc9860.dtsi
index e27eb3ed1d47..9dad0cefafc0 100644
--- a/arch/arm64/boot/dts/sprd/sc9860.dtsi
+++ b/arch/arm64/boot/dts/sprd/sc9860.dtsi
@@ -1,9 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
  * Spreadtrum SC9860 SoC
  *
  * Copyright (C) 2016, Spreadtrum Communications Inc.
- *
- * SPDX-License-Identifier: (GPL-2.0+ OR MIT)
  */
 =

 #include <dt-bindings/interrupt-controller/arm-gic.h>
diff --git a/arch/arm64/boot/dts/sprd/sp9860g-1h10.dts b/arch/arm64/boot/dt=
s/sprd/sp9860g-1h10.dts
index 6b95fd94cee3..4423acd0c9c0 100644
--- a/arch/arm64/boot/dts/sprd/sp9860g-1h10.dts
+++ b/arch/arm64/boot/dts/sprd/sp9860g-1h10.dts
@@ -1,9 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
  * Spreadtrum SP9860g board
  *
  * Copyright (C) 2017, Spreadtrum Communications Inc.
- *
- * SPDX-License-Identifier: (GPL-2.0+ OR MIT)
  */
 =

 /dts-v1/;
diff --git a/arch/arm64/boot/dts/sprd/whale2.dtsi b/arch/arm64/boot/dts/spr=
d/whale2.dtsi
index 79b9591c37aa..b6e1378e2297 100644
--- a/arch/arm64/boot/dts/sprd/whale2.dtsi
+++ b/arch/arm64/boot/dts/sprd/whale2.dtsi
@@ -1,9 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
  * Spreadtrum Whale2 platform peripherals
  *
  * Copyright (C) 2016, Spreadtrum Communications Inc.
- *
- * SPDX-License-Identifier: (GPL-2.0+ OR MIT)
  */
 =

 #include <dt-bindings/clock/sprd,sc9860-clk.h>
diff --git a/arch/arm64/boot/dts/zte/zx296718-pcbox.dts b/arch/arm64/boot/d=
ts/zte/zx296718-pcbox.dts
index e02509f7082b..8fd6cf518a2f 100644
--- a/arch/arm64/boot/dts/zte/zx296718-pcbox.dts
+++ b/arch/arm64/boot/dts/zte/zx296718-pcbox.dts
@@ -1,8 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
  * Copyright (C) 2017 Sanechips Technology Co., Ltd.
  * Copyright 2017 Linaro Ltd.
- *
- * SPDX-License-Identifier: (GPL-2.0+ OR MIT)
  */
 =

 /dts-v1/;



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
