Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5AA130F09
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 09:59:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1qTpDc1Ytsq2Wps6XfHewzy4z5taQ5OnxFPc3WA1iuY=; b=pPv0vVPp6fEuRk
	3BOLRO2Wp1gHaJozsiUtQtNAyl5b8SX+y0JuULqWmxcAOygwADo5XXomyUdwAVz9SLjZ+afIb71jE
	vqDCvloIidSlqbZdtYra6Bap4pGsSsItdOJlCEGeOeQ16BtzQ1B6DnS5Q7JzPdiaBWryNV9Zu1Qe2
	+nZlh7o99xGnLuzILV5azzhgMx0ptJEWv99XzqL5tju/1ZKfyQHcDVJ32iHxN4QTT78SAdhOSDH2H
	nnOT4oy2oID/hvqKUMDm8wAZTnS5pDiMFqPuEeFMU5F36b9JlUD+WvJKADQccfMBwsBXT6zULpf7k
	sxR/DjnMPOCY7DvrR9RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOEi-0001uq-DG; Mon, 06 Jan 2020 08:59:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOEZ-0001uS-PD
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 08:59:37 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 57A5020848;
 Mon,  6 Jan 2020 08:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578301175;
 bh=+xN2ZWTp443STxyJTpKaiqk0aiJnRo7N2aSPxx6FD+4=;
 h=From:To:Cc:Subject:Date:From;
 b=kkFtEM6sFIV+cv5vdVPOxrusKs+9p0cbvYoGSjh1NGIS56vVzUtUynmesIeOMcj+J
 MYawpmbCdrOK4i86m3grRJ9mpyO1JQSLSw7yus2CN/a80MpmQ3vbVPkxz5HvQInF76
 cDSIpMc7Nli2Hw1ft22EisUz2gC9lTyyOUHdzP1Y=
Received: by wens.tw (Postfix, from userid 1000)
 id 49A065FC12; Mon,  6 Jan 2020 16:59:34 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH] ARM: dts: sunxi: Use macros for references to CCU clocks
Date: Mon,  6 Jan 2020 16:59:33 +0800
Message-Id: <20200106085933.9102-1-wens@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_005935_857016_B3EF420D 
X-CRM114-Status: GOOD (  12.70  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

A few clocks from the CCU were exported later, and references to them in
the device tree were using raw numbers.

Now that the DT binding header changes are in as well, switch to the
macros for more clarity.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm/boot/dts/sun5i.dtsi       | 2 +-
 arch/arm/boot/dts/sun8i-a83t.dtsi  | 6 +++---
 arch/arm/boot/dts/sun8i-r40.dtsi   | 2 +-
 arch/arm/boot/dts/sunxi-h3-h5.dtsi | 7 ++++---
 4 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/sun5i.dtsi b/arch/arm/boot/dts/sun5i.dtsi
index 9f0b645fd45e..0b526e6e5a95 100644
--- a/arch/arm/boot/dts/sun5i.dtsi
+++ b/arch/arm/boot/dts/sun5i.dtsi
@@ -185,7 +185,7 @@ ve_sram: sram-section@0 {
 		mbus: dram-controller@1c01000 {
 			compatible = "allwinner,sun5i-a13-mbus";
 			reg = <0x01c01000 0x1000>;
-			clocks = <&ccu 99>;
+			clocks = <&ccu CLK_MBUS>;
 			dma-ranges = <0x00000000 0x40000000 0x20000000>;
 			#interconnect-cells = <1>;
 		};
diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index 93a6df11cb18..74ac7ee9383c 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -1006,9 +1006,9 @@ emac: ethernet@1c30000 {
 			reg = <0x01c30000 0x104>;
 			interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
-			resets = <&ccu 13>;
+			resets = <&ccu CLK_BUS_EMAC>;
 			reset-names = "stmmaceth";
-			clocks = <&ccu 27>;
+			clocks = <&ccu RST_BUS_EMAC>;
 			clock-names = "stmmaceth";
 			status = "disabled";
 
@@ -1102,7 +1102,7 @@ r_ccu: clock@1f01400 {
 			compatible = "allwinner,sun8i-a83t-r-ccu";
 			reg = <0x01f01400 0x400>;
 			clocks = <&osc24M>, <&osc16Md512>, <&osc16M>,
-				 <&ccu 6>;
+				 <&ccu CLK_PLL_PERIPH>;
 			clock-names = "hosc", "losc", "iosc", "pll-periph";
 			#clock-cells = <1>;
 			#reset-cells = <1>;
diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 84d240c39f0f..40e2f9b710cd 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -913,7 +913,7 @@ hdmi_phy: hdmi-phy@1ef0000 {
 			compatible = "allwinner,sun8i-r40-hdmi-phy";
 			reg = <0x01ef0000 0x10000>;
 			clocks = <&ccu CLK_BUS_HDMI1>, <&ccu CLK_HDMI_SLOW>,
-				 <&ccu 7>, <&ccu 16>;
+				 <&ccu CLK_PLL_VIDEO0>, <&ccu CLK_PLL_VIDEO1>;
 			clock-names = "bus", "mod", "pll-0", "pll-1";
 			resets = <&ccu RST_BUS_HDMI0>;
 			reset-names = "phy";
diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
index 6e68ed831015..5e9c3060aa08 100644
--- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
+++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
@@ -559,7 +559,7 @@ external_mdio: mdio@2 {
 		mbus: dram-controller@1c62000 {
 			compatible = "allwinner,sun8i-h3-mbus";
 			reg = <0x01c62000 0x1000>;
-			clocks = <&ccu 113>;
+			clocks = <&ccu CLK_MBUS>;
 			dma-ranges = <0x00000000 0x40000000 0xc0000000>;
 			#interconnect-cells = <1>;
 		};
@@ -817,7 +817,7 @@ hdmi_phy: hdmi-phy@1ef0000 {
 			compatible = "allwinner,sun8i-h3-hdmi-phy";
 			reg = <0x01ef0000 0x10000>;
 			clocks = <&ccu CLK_BUS_HDMI>, <&ccu CLK_HDMI_DDC>,
-				 <&ccu 6>;
+				 <&ccu CLK_PLL_VIDEO>;
 			clock-names = "bus", "mod", "pll-0";
 			resets = <&ccu RST_BUS_HDMI0>;
 			reset-names = "phy";
@@ -837,7 +837,8 @@ rtc: rtc@1f00000 {
 		r_ccu: clock@1f01400 {
 			compatible = "allwinner,sun8i-h3-r-ccu";
 			reg = <0x01f01400 0x100>;
-			clocks = <&osc24M>, <&rtc 0>, <&rtc 2>, <&ccu 9>;
+			clocks = <&osc24M>, <&rtc 0>, <&rtc 2>,
+				 <&ccu CLK_PLL_PERIPH0>;
 			clock-names = "hosc", "losc", "iosc", "pll-periph";
 			#clock-cells = <1>;
 			#reset-cells = <1>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
