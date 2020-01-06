Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D4D130F03
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 09:58:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lj/qObLtM/EnSkF4rpIyH17B2lO1L5omSkAP3eGthOA=; b=Bk4WimOfSqIiNq
	UDnN1/hGPCtgeECoWc61iVKGTgFAGJlKoCBxc8fuyPFQetKLu2VYXKGE0OkWRM+809IpMJ7vDRht5
	TsWa3TkEXfeR1bYaJ54o2QBmDPjc3Hu5DmVw1Hnjy8WZP/HrwrLATMQNy2o7AZWgjZzczh2U9dm9l
	ldOjsE6R/BMpCOl+qwWfZlG1lxd75GjhNYBlVWJM+G/4QfomlqWnRW6PUVXSNRoCAu/15AVSffH+R
	6M3knjTgKfjWp/sVdhaMwzMmsXRh2AChqSwDTfgKRhLOVMkL+Tx50Zaus0eGSxcZrflViCuLTWxy4
	K8TRuXvXwCOQg6ZzCLdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioODg-0001dp-18; Mon, 06 Jan 2020 08:58:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioODY-0001dT-B4
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 08:58:33 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBAB020848;
 Mon,  6 Jan 2020 08:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578301112;
 bh=PM6tQDY3S9hYgHrxWz2QJsPaSBxxGwz5ukhamBiZ/qU=;
 h=From:To:Cc:Subject:Date:From;
 b=j1jGC9mWPBlAwTAZNn7b3Wn0Po4MmwWAuEDHA9AF5WkvLC5zXBn6uEq4PO6FUIr3b
 CniQuTpixC861XPSnH2ujOWgpikNCM4PY73a90KCxXGANWqnNfckbsniUt9eeSk8IA
 bI7s670ACfE7GqyW/ghEG/Blj0rkZb8ecI4ajKgY=
Received: by wens.tw (Postfix, from userid 1000)
 id 3712E5FC12; Mon,  6 Jan 2020 16:58:29 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] arm64: dts: allwinner: h5: Add Libre Computer ALL-H5-CC H5
 board
Date: Mon,  6 Jan 2020 16:58:20 +0800
Message-Id: <20200106085820.7082-1-wens@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_005832_425623_DBF0ED61 
X-CRM114-Status: GOOD (  16.27  )
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

The Libre Computer ALL-H5-CC board is an upgraded version of the
ALL-H3-CC. Changes include:

  - Gigabit Ethernet via external RTL8211E Ethernet PHY
  - 16 MiB SPI NOR flash memory
  - PoE tap header
  - Line out jack removed

Only H5 variant test samples were made available, and the vendor is not
certain whether other SoC variants would be made or not. Furthermore the
board is a minor upgrade compared to the ALL-H3-CC. Thus the device tree
simply includes the one for the ALL-H3-CC, and adds the changes on top.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 .../devicetree/bindings/arm/sunxi.yaml        |  5 ++
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../sun50i-h5-libretech-all-h5-cc.dts         | 61 +++++++++++++++++++
 3 files changed, 67 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h5-libretech-all-h5-cc.dts

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index dc035a06454e..327ce6730823 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -347,6 +347,11 @@ properties:
           - const: libretech,all-h3-it-h5
           - const: allwinner,sun50i-h5
 
+      - description: Libre Computer Board ALL-H5-CC H5
+        items:
+          - const: libretech,all-h5-cc-h5
+          - const: allwinner,sun50i-h5
+
       - description: Lichee Pi One
         items:
           - const: licheepi,licheepi-one
diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index a7fdf04ffca2..cf4f78617c3f 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -16,6 +16,7 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-bananapi-m2-plus-v1.2.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-emlid-neutis-n5-devboard.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-libretech-all-h3-cc.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-libretech-all-h3-it.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-libretech-all-h5-cc.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-nanopi-neo2.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-nanopi-neo-plus2.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-orangepi-pc2.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-libretech-all-h5-cc.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-libretech-all-h5-cc.dts
new file mode 100644
index 000000000000..df1b9263ad0e
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-libretech-all-h5-cc.dts
@@ -0,0 +1,61 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+// Copyright (C) 2020 Chen-Yu Tsai <wens@csie.org>
+
+#include "sun50i-h5-libretech-all-h3-cc.dts"
+
+/ {
+	model = "Libre Computer Board ALL-H5-CC H5";
+	compatible = "libretech,all-h5-cc-h5", "allwinner,sun50i-h5";
+
+	aliases {
+		spi0 = &spi0;
+	};
+
+	reg_gmac_3v3: gmac-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "gmac-3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <5000>;
+		enable-active-high;
+		gpio = <&pio 3 6 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&reg_vcc5v0>;
+	};
+};
+
+&codec {
+	/* No line out; only onboard microphone */
+	allwinner,audio-routing =
+		"MIC1", "Mic",
+		"Mic",  "MBIAS";
+};
+
+/* This board has external PHY */
+&emac {
+	pinctrl-names = "default";
+	pinctrl-0 = <&emac_rgmii_pins>;
+	phy-supply = <&reg_gmac_3v3>;
+	phy-handle = <&ext_rgmii_phy>;
+	phy-mode = "rgmii";
+	/delete-property/ allwinner,leds-active-low;
+	status = "okay";
+};
+
+&external_mdio {
+	ext_rgmii_phy: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <1>;
+	};
+};
+
+&spi0  {
+	status = "okay";
+
+	flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+	};
+};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
