Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEFB12351E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 19:40:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=faGqDCdkqV0Pp7sQmmxFccSTCiy6kxAdHJF8tgcvdBQ=; b=iqD/77XHGD2c7gh4WHcwN9YMzJ
	XWLLcs6UH1OLLfgzWNM+dUH6Uc2V5vaWgp6PLeSOGr9HcajLKnSWgClYFSzIW0b76vT2HI7BAa16n
	iDnk5p3W1VNLf/ml5YJ2PEHCe0bUbPvllNHyaThBGh8+qQVnR6NsBS3pF5AtJyxuS95c9cnjy5uvH
	+KnbDTFXMkfQNCzmD/uKGMcCQ+gUDUm8aB5HnVt1Dm3JKlYJwQTc5ALr+wkcSWqFZc8Ot0+gPkKf3
	PgRMPAY0BN3FPMZBwpRHezYLQazrqAQrBZrne06h+huvLYHIf6drERAB3c+u8krMFuaKhk3JOz+0e
	taZtfSVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihHlU-00044s-FZ; Tue, 17 Dec 2019 18:40:12 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihHkA-0003EK-OO
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 18:38:53 +0000
Received: from ramsan ([84.195.182.253]) by xavier.telenet-ops.be with bizsmtp
 id f6ei2100P5USYZQ016eiWp; Tue, 17 Dec 2019 19:38:44 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ihHk2-0003aG-JH; Tue, 17 Dec 2019 19:38:42 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ihHk2-00007x-HX; Tue, 17 Dec 2019 19:38:42 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Eugeniu Rosca <erosca@de.adit-jv.com>
Subject: [PATCH 1/5] arm64: dts: renesas: Rename r8a7795{-es1,
 }* to r8a7795[01]*
Date: Tue, 17 Dec 2019 19:38:37 +0100
Message-Id: <20191217183841.432-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217183841.432-1-geert+renesas@glider.be>
References: <20191217183841.432-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_103851_136917_8D0275C7 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Despite using the same compatible values ("r8a7795"-based) because of
historical reasons, R-Car H3 ES1.x (R8A77950) and R-Car H3 ES2.0+
(R8A77951) are really different SoCs, with different part numbers.

Reflect this in the DTS files by changing their base names from
"r8a7795-es1" and "r8a7795" to "r8a77950" resp. "r8a77951".
Drop all "ES" references next to part numbers, as they are implied by
the part numbers, and thus redundant.

Note that DT binding headers, definitions, and compatible values are
not renamed, to preserve backward compatibility.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm64/boot/dts/renesas/Makefile                   | 10 +++++-----
 .../{r8a7795-h3ulcb-kf.dts => r8a77950-h3ulcb-kf.dts}  |  4 ++--
 .../{r8a7795-es1-h3ulcb.dts => r8a77950-h3ulcb.dts}    |  4 ++--
 ...7795-es1-salvator-x.dts => r8a77950-salvator-x.dts} |  4 ++--
 .../dts/renesas/{r8a7795-es1.dtsi => r8a77950.dtsi}    |  4 ++--
 ...8a7795-es1-h3ulcb-kf.dts => r8a77951-h3ulcb-kf.dts} |  4 ++--
 .../{r8a7795-h3ulcb.dts => r8a77951-h3ulcb.dts}        |  4 ++--
 ...{r8a7795-salvator-x.dts => r8a77951-salvator-x.dts} |  4 ++--
 ...8a7795-salvator-xs.dts => r8a77951-salvator-xs.dts} |  8 ++++----
 .../boot/dts/renesas/{r8a7795.dtsi => r8a77951.dtsi}   |  2 +-
 10 files changed, 24 insertions(+), 24 deletions(-)
 rename arch/arm64/boot/dts/renesas/{r8a7795-h3ulcb-kf.dts => r8a77950-h3ulcb-kf.dts} (75%)
 rename arch/arm64/boot/dts/renesas/{r8a7795-es1-h3ulcb.dts => r8a77950-h3ulcb.dts} (89%)
 rename arch/arm64/boot/dts/renesas/{r8a7795-es1-salvator-x.dts => r8a77950-salvator-x.dts} (96%)
 rename arch/arm64/boot/dts/renesas/{r8a7795-es1.dtsi => r8a77950.dtsi} (98%)
 rename arch/arm64/boot/dts/renesas/{r8a7795-es1-h3ulcb-kf.dts => r8a77951-h3ulcb-kf.dts} (75%)
 rename arch/arm64/boot/dts/renesas/{r8a7795-h3ulcb.dts => r8a77951-h3ulcb.dts} (92%)
 rename arch/arm64/boot/dts/renesas/{r8a7795-salvator-x.dts => r8a77951-salvator-x.dts} (96%)
 rename arch/arm64/boot/dts/renesas/{r8a7795-salvator-xs.dts => r8a77951-salvator-xs.dts} (96%)
 rename arch/arm64/boot/dts/renesas/{r8a7795.dtsi => r8a77951.dtsi} (99%)

diff --git a/arch/arm64/boot/dts/renesas/Makefile b/arch/arm64/boot/dts/renesas/Makefile
index d4cc3323d0668dba..12c2382c0a5427e2 100644
--- a/arch/arm64/boot/dts/renesas/Makefile
+++ b/arch/arm64/boot/dts/renesas/Makefile
@@ -4,11 +4,11 @@ dtb-$(CONFIG_ARCH_R8A774A1) += r8a774a1-hihope-rzg2m-ex.dtb
 dtb-$(CONFIG_ARCH_R8A774B1) += r8a774b1-hihope-rzg2n.dtb
 dtb-$(CONFIG_ARCH_R8A774B1) += r8a774b1-hihope-rzg2n-ex.dtb
 dtb-$(CONFIG_ARCH_R8A774C0) += r8a774c0-cat874.dtb r8a774c0-ek874.dtb
-dtb-$(CONFIG_ARCH_R8A7795) += r8a7795-salvator-x.dtb r8a7795-h3ulcb.dtb
-dtb-$(CONFIG_ARCH_R8A7795) += r8a7795-h3ulcb-kf.dtb
-dtb-$(CONFIG_ARCH_R8A7795) += r8a7795-salvator-xs.dtb
-dtb-$(CONFIG_ARCH_R8A7795) += r8a7795-es1-salvator-x.dtb r8a7795-es1-h3ulcb.dtb
-dtb-$(CONFIG_ARCH_R8A7795) += r8a7795-es1-h3ulcb-kf.dtb
+dtb-$(CONFIG_ARCH_R8A7795) += r8a77951-salvator-x.dtb r8a77951-h3ulcb.dtb
+dtb-$(CONFIG_ARCH_R8A7795) += r8a77951-h3ulcb-kf.dtb
+dtb-$(CONFIG_ARCH_R8A7795) += r8a77951-salvator-xs.dtb
+dtb-$(CONFIG_ARCH_R8A7795) += r8a77950-salvator-x.dtb r8a77950-h3ulcb.dtb
+dtb-$(CONFIG_ARCH_R8A7795) += r8a77950-h3ulcb-kf.dtb
 dtb-$(CONFIG_ARCH_R8A77960) += r8a77960-salvator-x.dtb r8a77960-m3ulcb.dtb
 dtb-$(CONFIG_ARCH_R8A77960) += r8a77960-m3ulcb-kf.dtb
 dtb-$(CONFIG_ARCH_R8A77960) += r8a77960-salvator-xs.dtb
diff --git a/arch/arm64/boot/dts/renesas/r8a7795-h3ulcb-kf.dts b/arch/arm64/boot/dts/renesas/r8a77950-h3ulcb-kf.dts
similarity index 75%
rename from arch/arm64/boot/dts/renesas/r8a7795-h3ulcb-kf.dts
rename to arch/arm64/boot/dts/renesas/r8a77950-h3ulcb-kf.dts
index 80791ed27539bf8f..1e84a40f1dcab353 100644
--- a/arch/arm64/boot/dts/renesas/r8a7795-h3ulcb-kf.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77950-h3ulcb-kf.dts
@@ -6,11 +6,11 @@
  * Copyright (C) 2017 Cogent Embedded, Inc.
  */
 
-#include "r8a7795-h3ulcb.dts"
+#include "r8a77950-h3ulcb.dts"
 #include "ulcb-kf.dtsi"
 
 / {
-	model = "Renesas H3ULCB Kingfisher board based on r8a7795 ES2.0+";
+	model = "Renesas H3ULCB Kingfisher board based on r8a77950";
 	compatible = "shimafuji,kingfisher", "renesas,h3ulcb",
 		     "renesas,r8a7795";
 };
diff --git a/arch/arm64/boot/dts/renesas/r8a7795-es1-h3ulcb.dts b/arch/arm64/boot/dts/renesas/r8a77950-h3ulcb.dts
similarity index 89%
rename from arch/arm64/boot/dts/renesas/r8a7795-es1-h3ulcb.dts
rename to arch/arm64/boot/dts/renesas/r8a77950-h3ulcb.dts
index 598b98168559e0e4..38a6d6a108d488ed 100644
--- a/arch/arm64/boot/dts/renesas/r8a7795-es1-h3ulcb.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77950-h3ulcb.dts
@@ -7,11 +7,11 @@
  */
 
 /dts-v1/;
-#include "r8a7795-es1.dtsi"
+#include "r8a77950.dtsi"
 #include "ulcb.dtsi"
 
 / {
-	model = "Renesas H3ULCB board based on r8a7795 ES1.x";
+	model = "Renesas H3ULCB board based on r8a77950";
 	compatible = "renesas,h3ulcb", "renesas,r8a7795";
 
 	memory@48000000 {
diff --git a/arch/arm64/boot/dts/renesas/r8a7795-es1-salvator-x.dts b/arch/arm64/boot/dts/renesas/r8a77950-salvator-x.dts
similarity index 96%
rename from arch/arm64/boot/dts/renesas/r8a7795-es1-salvator-x.dts
rename to arch/arm64/boot/dts/renesas/r8a77950-salvator-x.dts
index c72968623e94b790..2438825c9b22e26d 100644
--- a/arch/arm64/boot/dts/renesas/r8a7795-es1-salvator-x.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77950-salvator-x.dts
@@ -6,11 +6,11 @@
  */
 
 /dts-v1/;
-#include "r8a7795-es1.dtsi"
+#include "r8a77950.dtsi"
 #include "salvator-x.dtsi"
 
 / {
-	model = "Renesas Salvator-X board based on r8a7795 ES1.x";
+	model = "Renesas Salvator-X board based on r8a77950";
 	compatible = "renesas,salvator-x", "renesas,r8a7795";
 
 	memory@48000000 {
diff --git a/arch/arm64/boot/dts/renesas/r8a7795-es1.dtsi b/arch/arm64/boot/dts/renesas/r8a77950.dtsi
similarity index 98%
rename from arch/arm64/boot/dts/renesas/r8a7795-es1.dtsi
rename to arch/arm64/boot/dts/renesas/r8a77950.dtsi
index 14d8513d2a47336f..15216495e1c8b31c 100644
--- a/arch/arm64/boot/dts/renesas/r8a7795-es1.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77950.dtsi
@@ -1,11 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Device Tree Source for the R-Car H3 (R8A77950) ES1.x SoC
+ * Device Tree Source for the R-Car H3 (R8A77950) SoC
  *
  * Copyright (C) 2015 Renesas Electronics Corp.
  */
 
-#include "r8a7795.dtsi"
+#include "r8a77951.dtsi"
 
 &audma0 {
 	iommus = <&ipmmu_mp1 0>, <&ipmmu_mp1 1>,
diff --git a/arch/arm64/boot/dts/renesas/r8a7795-es1-h3ulcb-kf.dts b/arch/arm64/boot/dts/renesas/r8a77951-h3ulcb-kf.dts
similarity index 75%
rename from arch/arm64/boot/dts/renesas/r8a7795-es1-h3ulcb-kf.dts
rename to arch/arm64/boot/dts/renesas/r8a77951-h3ulcb-kf.dts
index 2f24dfc45617baf6..647198bb3bf7746a 100644
--- a/arch/arm64/boot/dts/renesas/r8a7795-es1-h3ulcb-kf.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77951-h3ulcb-kf.dts
@@ -6,11 +6,11 @@
  * Copyright (C) 2017 Cogent Embedded, Inc.
  */
 
-#include "r8a7795-es1-h3ulcb.dts"
+#include "r8a77951-h3ulcb.dts"
 #include "ulcb-kf.dtsi"
 
 / {
-	model = "Renesas H3ULCB Kingfisher board based on r8a7795 ES1.x";
+	model = "Renesas H3ULCB Kingfisher board based on r8a77951";
 	compatible = "shimafuji,kingfisher", "renesas,h3ulcb",
 		     "renesas,r8a7795";
 };
diff --git a/arch/arm64/boot/dts/renesas/r8a7795-h3ulcb.dts b/arch/arm64/boot/dts/renesas/r8a77951-h3ulcb.dts
similarity index 92%
rename from arch/arm64/boot/dts/renesas/r8a7795-h3ulcb.dts
rename to arch/arm64/boot/dts/renesas/r8a77951-h3ulcb.dts
index 54515eaf0310f172..8ad8f2a539771de8 100644
--- a/arch/arm64/boot/dts/renesas/r8a7795-h3ulcb.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77951-h3ulcb.dts
@@ -7,11 +7,11 @@
  */
 
 /dts-v1/;
-#include "r8a7795.dtsi"
+#include "r8a77951.dtsi"
 #include "ulcb.dtsi"
 
 / {
-	model = "Renesas H3ULCB board based on r8a7795 ES2.0+";
+	model = "Renesas H3ULCB board based on r8a77951";
 	compatible = "renesas,h3ulcb", "renesas,r8a7795";
 
 	memory@48000000 {
diff --git a/arch/arm64/boot/dts/renesas/r8a7795-salvator-x.dts b/arch/arm64/boot/dts/renesas/r8a77951-salvator-x.dts
similarity index 96%
rename from arch/arm64/boot/dts/renesas/r8a7795-salvator-x.dts
rename to arch/arm64/boot/dts/renesas/r8a77951-salvator-x.dts
index 72874f675359e7a4..a402a2fb6e3c313b 100644
--- a/arch/arm64/boot/dts/renesas/r8a7795-salvator-x.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77951-salvator-x.dts
@@ -6,11 +6,11 @@
  */
 
 /dts-v1/;
-#include "r8a7795.dtsi"
+#include "r8a77951.dtsi"
 #include "salvator-x.dtsi"
 
 / {
-	model = "Renesas Salvator-X board based on r8a7795 ES2.0+";
+	model = "Renesas Salvator-X board based on r8a77951";
 	compatible = "renesas,salvator-x", "renesas,r8a7795";
 
 	memory@48000000 {
diff --git a/arch/arm64/boot/dts/renesas/r8a7795-salvator-xs.dts b/arch/arm64/boot/dts/renesas/r8a77951-salvator-xs.dts
similarity index 96%
rename from arch/arm64/boot/dts/renesas/r8a7795-salvator-xs.dts
rename to arch/arm64/boot/dts/renesas/r8a77951-salvator-xs.dts
index 36667c81d43d517b..cef9da4376a3f673 100644
--- a/arch/arm64/boot/dts/renesas/r8a7795-salvator-xs.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77951-salvator-xs.dts
@@ -1,16 +1,16 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Device Tree Source for the Salvator-X 2nd version board with R-Car H3 ES2.0
+ * Device Tree Source for the Salvator-X 2nd version board with R-Car H3 ES2.0+
  *
  * Copyright (C) 2015-2017 Renesas Electronics Corp.
  */
 
 /dts-v1/;
-#include "r8a7795.dtsi"
+#include "r8a77951.dtsi"
 #include "salvator-xs.dtsi"
 
 / {
-	model = "Renesas Salvator-X 2nd version board based on r8a7795 ES2.0+";
+	model = "Renesas Salvator-X 2nd version board based on r8a77951";
 	compatible = "renesas,salvator-xs", "renesas,r8a7795";
 
 	memory@48000000 {
@@ -136,7 +136,7 @@
 	 * - On Salvator-X[S], GP6_3[01] are connected to ADV7482 as irq pins
 	 *   (when SW31 is the default setting on Salvator-XS).
 	 * - If SW31 is the default setting, you cannot use USB2.0 ch3 on
-	 *   r8a7795 with Salvator-XS.
+	 *   r8a77951 with Salvator-XS.
 	 *   Hence the SW31 setting must be changed like 2) below.
 	 *   1) Default setting of SW31: ON-ON-OFF-OFF-OFF-OFF:
 	 *	- Connect GP6_3[01] to ADV7842.
diff --git a/arch/arm64/boot/dts/renesas/r8a7795.dtsi b/arch/arm64/boot/dts/renesas/r8a77951.dtsi
similarity index 99%
rename from arch/arm64/boot/dts/renesas/r8a7795.dtsi
rename to arch/arm64/boot/dts/renesas/r8a77951.dtsi
index fde6ec122d3b4006..821891548d5fde0f 100644
--- a/arch/arm64/boot/dts/renesas/r8a7795.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77951.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Device Tree Source for the R-Car H3 (R8A77950) SoC
+ * Device Tree Source for the R-Car H3 (R8A77951) SoC
  *
  * Copyright (C) 2015 Renesas Electronics Corp.
  */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
