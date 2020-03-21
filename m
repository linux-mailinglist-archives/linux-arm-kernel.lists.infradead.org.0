Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BAF18DE9A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 08:59:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QAV1Xf9KJjQsL05al3+r/tWg2Gs/ysTXk0rgWffM8PU=; b=NFvoFbLww9WEEqIBQ15NpNg38j
	mzAfRV2vPp77QA6f6138UovotirHGNR+aik7U0oUPmHkFB/74gFDt1sz0B4y4RvJpj704NPbF71fe
	G9zBb9FldYaIbg+KCf+IJRiSXuFn9VHGXBiCkMFXCpyqw5vVdwf70gGxqKCVIGc6ljDT+vcj6gBzB
	jVuvgTRZz8qsQDeGYGJ60WoWFjkJqTGCpeR5WRI/3chE0Pp49cqp3OQW5VP69Qe4udsxRQBGTA2Tl
	pR9tDvsCMMBe2u2Ynlcmi7VDIIStFuOFrrDlcKYKjHlLSOqiS17mY752GJTvvFJRnQVVulNAMnD9u
	l6Nr0gCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFZ1s-0003zo-H6; Sat, 21 Mar 2020 07:58:48 +0000
Received: from olimex.com ([184.105.72.32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFZ1U-0003sF-BD
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 07:58:25 +0000
Received: from localhost.localdomain ([89.25.85.162])
 by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Sat, 21 Mar 2020 00:58:14 -0700
From: Stefan Mavrodiev <stefan@olimex.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Corentin Labbe <clabbe@baylibre.com>, Stefan Mavrodiev <stefan@olimex.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Allwinner sunXi SoC
 support), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 1/2] ARM: dts: sun7i: Add A20-OLinuXino-LIME-eMMC
Date: Sat, 21 Mar 2020 09:57:56 +0200
Message-Id: <20200321075757.15853-2-stefan@olimex.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200321075757.15853-1-stefan@olimex.com>
References: <20200321075757.15853-1-stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_005824_388060_C1EEE29D 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-sunxi@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is new version of A20-OLinuXino-LIME with eMMC storage. The
card routing is the same as in A20-OLinuXino-LIME2-eMMC, so this
is basically copy/paste.

Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
---
 arch/arm/boot/dts/Makefile                    |  1 +
 .../dts/sun7i-a20-olinuxino-lime-emmc.dts     | 32 +++++++++++++++++++
 2 files changed, 33 insertions(+)
 create mode 100644 arch/arm/boot/dts/sun7i-a20-olinuxino-lime-emmc.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index d6546d2676b9..6bf3c5a98a0f 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1093,6 +1093,7 @@ dtb-$(CONFIG_MACH_SUN7I) += \
 	sun7i-a20-olimex-som204-evb.dtb \
 	sun7i-a20-olimex-som204-evb-emmc.dtb \
 	sun7i-a20-olinuxino-lime.dtb \
+	sun7i-a20-olinuxino-lime-emmc.dtb \
 	sun7i-a20-olinuxino-lime2.dtb \
 	sun7i-a20-olinuxino-lime2-emmc.dtb \
 	sun7i-a20-olinuxino-micro.dtb \
diff --git a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime-emmc.dts b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime-emmc.dts
new file mode 100644
index 000000000000..033cab3443f8
--- /dev/null
+++ b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime-emmc.dts
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2020 Olimex Ltd.
+ *   Author: Stefan Mavrodiev <stefan@olimex.com>
+ */
+
+#include "sun7i-a20-olinuxino-lime.dts"
+
+/ {
+	model = "Olimex A20-OLinuXino-LIME-eMMC";
+	compatible = "olimex,a20-olinuxino-lime-emmc", "allwinner,sun7i-a20";
+
+	mmc2_pwrseq: pwrseq {
+		compatible = "mmc-pwrseq-emmc";
+		reset-gpios = <&pio 2 16 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&mmc2 {
+	vmmc-supply = <&reg_vcc3v3>;
+	vqmmc-supply = <&reg_vcc3v3>;
+	bus-width = <4>;
+	non-removable;
+	mmc-pwrseq = <&mmc2_pwrseq>;
+	status = "okay";
+
+	emmc: emmc@0 {
+		reg = <0>;
+		compatible = "mmc-card";
+		broken-hpi;
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
