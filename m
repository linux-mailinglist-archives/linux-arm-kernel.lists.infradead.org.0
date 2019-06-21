Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C68DA4E49F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:51:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DP83cohoVco7X0t99qzIpwbDokkGN3q4vRZP1PMpDrM=; b=NzY5beOS6w5nMa+UX7OQYfTuCV
	tDzBUYP8LRtWc3zLL2+Jw5EZ+aTRWQAPAUBRyN92/LQxQj4SGlMoueo1tTdgmReioHoFnSXtHxqLR
	aJV1hIovKtL3mZnKjZ5vvlOin2zc5hkoAFAhqWUZoVlEONGRl2DyYTMJ9QfUSKmsoPsvQUBSTAVcu
	xTtUvACl/PsBzEZW9Sao//Aep5uxv77B5b90p1kS8TsQzvg6QVgo8thXi2jXXfO2+z31xiapqOQsX
	t45nbLB9U9w/r4XaSU8kJHy7EXHx/UbfHnIwzP2eEaAN/99kBLXkzUYjMUCAK168g1GQQ+GbTHk43
	JLF3rC9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGCb-0001s4-4i; Fri, 21 Jun 2019 09:51:25 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFgy-0002tV-UY
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:18:46 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 97E7625BECE;
 Fri, 21 Jun 2019 19:16:43 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 7ED0394333F; Fri, 21 Jun 2019 11:16:34 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 31/53] arm64: dts: renesas: Add HiHope RZ/G2M sub board support
Date: Fri, 21 Jun 2019 11:16:09 +0200
Message-Id: <7433f1fb8ec8fe40d069215ae431d5c33235bfb5.1561107232.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561107232.git.horms+renesas@verge.net.au>
References: <cover.1561107232.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021845_324623_55386C35 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Simon Horman <horms+renesas@verge.net.au>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Biju Das <biju.das@bp.renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Biju Das <biju.das@bp.renesas.com>

The HiHope RZ/G2M sub board sits below the HiHope RZ/G2M main board.
This patch also adds ethernet support along with a dtsi common to
both HiHope RZ/G2M and RZ/G2N sub boards.

Signed-off-by: Biju Das <biju.das@bp.renesas.com>
Reviewed-by: Chris Paterson <Chris.Paterson2@renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm64/boot/dts/renesas/Makefile               |  1 +
 arch/arm64/boot/dts/renesas/hihope-common.dtsi     |  2 +
 arch/arm64/boot/dts/renesas/hihope-rzg2-ex.dtsi    | 55 ++++++++++++++++++++++
 .../boot/dts/renesas/r8a774a1-hihope-rzg2m-ex.dts  | 15 ++++++
 4 files changed, 73 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/hihope-rzg2-ex.dtsi
 create mode 100644 arch/arm64/boot/dts/renesas/r8a774a1-hihope-rzg2m-ex.dts

diff --git a/arch/arm64/boot/dts/renesas/Makefile b/arch/arm64/boot/dts/renesas/Makefile
index aa33074b7360..42b74c283289 100644
--- a/arch/arm64/boot/dts/renesas/Makefile
+++ b/arch/arm64/boot/dts/renesas/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_R8A774A1) += r8a774a1-hihope-rzg2m.dtb
+dtb-$(CONFIG_ARCH_R8A774A1) += r8a774a1-hihope-rzg2m-ex.dtb
 dtb-$(CONFIG_ARCH_R8A774C0) += r8a774c0-cat874.dtb r8a774c0-ek874.dtb
 dtb-$(CONFIG_ARCH_R8A7795) += r8a7795-salvator-x.dtb r8a7795-h3ulcb.dtb
 dtb-$(CONFIG_ARCH_R8A7795) += r8a7795-h3ulcb-kf.dtb
diff --git a/arch/arm64/boot/dts/renesas/hihope-common.dtsi b/arch/arm64/boot/dts/renesas/hihope-common.dtsi
index de206b7ae4e0..4cc924d38cf6 100644
--- a/arch/arm64/boot/dts/renesas/hihope-common.dtsi
+++ b/arch/arm64/boot/dts/renesas/hihope-common.dtsi
@@ -5,6 +5,8 @@
  * Copyright (C) 2019 Renesas Electronics Corp.
  */
 
+#include <dt-bindings/gpio/gpio.h>
+
 / {
 	aliases {
 		serial0 = &scif2;
diff --git a/arch/arm64/boot/dts/renesas/hihope-rzg2-ex.dtsi b/arch/arm64/boot/dts/renesas/hihope-rzg2-ex.dtsi
new file mode 100644
index 000000000000..b1e459447d1a
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/hihope-rzg2-ex.dtsi
@@ -0,0 +1,55 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree Source for the RZ/G2[MN] HiHope sub board common parts
+ *
+ * Copyright (C) 2019 Renesas Electronics Corp.
+ */
+
+/ {
+	aliases {
+		ethernet0 = &avb;
+	};
+
+	chosen {
+		bootargs = "ignore_loglevel rw root=/dev/nfs ip=on";
+	};
+};
+
+&avb {
+	pinctrl-0 = <&avb_pins>;
+	pinctrl-names = "default";
+	phy-handle = <&phy0>;
+	phy-mode = "rgmii-txid";
+	status = "okay";
+
+	phy0: ethernet-phy@0 {
+		rxc-skew-ps = <1500>;
+		reg = <0>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+		reset-gpios = <&gpio2 10 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&pfc {
+	pinctrl-0 = <&scif_clk_pins>;
+	pinctrl-names = "default";
+
+	avb_pins: avb {
+		mux {
+			groups = "avb_link", "avb_mdio", "avb_mii";
+			function = "avb";
+		};
+
+		pins_mdio {
+			groups = "avb_mdio";
+			drive-strength = <24>;
+		};
+
+		pins_mii_tx {
+			pins = "PIN_AVB_TX_CTL", "PIN_AVB_TXC", "PIN_AVB_TD0",
+			       "PIN_AVB_TD1", "PIN_AVB_TD2", "PIN_AVB_TD3";
+			drive-strength = <12>;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/renesas/r8a774a1-hihope-rzg2m-ex.dts b/arch/arm64/boot/dts/renesas/r8a774a1-hihope-rzg2m-ex.dts
new file mode 100644
index 000000000000..6e33a3b27706
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r8a774a1-hihope-rzg2m-ex.dts
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree Source for the HiHope RZ/G2M sub board
+ *
+ * Copyright (C) 2019 Renesas Electronics Corp.
+ */
+
+#include "r8a774a1-hihope-rzg2m.dts"
+#include "hihope-rzg2-ex.dtsi"
+
+/ {
+	model = "HopeRun HiHope RZ/G2M with sub board";
+	compatible = "hoperun,hihope-rzg2-ex", "hoperun,hihope-rzg2m",
+		     "renesas,r8a774a1";
+};
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
