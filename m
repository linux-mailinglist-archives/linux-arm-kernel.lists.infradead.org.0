Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FA1B3AC6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 14:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3fcVdNLYQkp3F5e9Ul3TU0kiGxFqKc6B6DbOpqC83DU=; b=SPxT6GtiJY/J8w
	1hS9US/p91thAWS5PO1iyaPI0YEF4rE/J5kNP/jdS1TDKt+Czm16Gxbhlsx4BBSmJcOL10JHP+RL1
	Mp2d0nCCONwroAzJArX1P2XAwBJhIM12BtnbcrQf0pb4i2rcSByd60JeQXwfi6IsL8FcYrwv9quQz
	+xQts+HWS0JlwPgfH2VNsQbs6dIZ3sF5o9JBpjoJpBVKJdnq9B7uGrsETwDCaYwc2bqqryNBZ49dl
	i4sogG4+UGydAnZUXtd7PJDnbSXvC5Nqz6t8Uvhp1dbg+ahbD9zAw3q3llExmhygTIdoNAZsPqrE7
	Qyy0ntLCGzNKsdfjF/Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qVS-0004aM-VV; Mon, 16 Sep 2019 12:53:27 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qSd-0002q9-EH
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 12:50:33 +0000
Received: by mail-wr1-x441.google.com with SMTP id r3so8604359wrj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 05:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+4tUhg/FYSoCjPdeGmyIF23gJp8e0cOaQveyAhmml58=;
 b=biQL4vPtAO/eRyWG2pyM/1VRI6KGVgdG5RnuFyTEFhuLwWJ0kLQemGQgyafw5Yb0gJ
 aeb3+1ZecPorUyn8KoLfh4DVYmhqryNYpNytuFGtbGL5IkmAVY87xaB8jOFJRRRPOtjc
 1d5beDepFLUIB8is3UjvUbQLHyfvb5KztvPpqTVVRw2GOaOugDnrSYHhYMBkJoSnTQBl
 4pjLcbCERC5yomdTYxsqApKyrp7RAZjbWTigH2zqTGkgV+VBlqZZhDo2BJRyK8tdtqTr
 D6nW5MmlWgGz59KjXp9S80X7hDeXR/LVifjFQ1vGMdUTiFgEjCF0fGNl7Tt3STp8oVDV
 d8vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+4tUhg/FYSoCjPdeGmyIF23gJp8e0cOaQveyAhmml58=;
 b=LEVoPoC5HBq5kHc9hLwPOxjtEMQ4H3V12RNfDwBS6lLrY2eYu0xz52NXJIc4jD2Fu3
 ApYq4MYro938CZgfMkeIp0zx+BhWRKyaNLqOku/L6BWh7nV1W/xaoBBL6vlqjQa6tbAL
 YzzzqvJ896Agwp5isJlhHLWYZRfXu8qNElXQI8neqUNMW67V2H5zGBbVgmku3rU7scW5
 lwPKE5ZfYIX8NakGp3nr/nQ2uBuv0ZyJ5hSLdIE/5pHL/wZjaZRzDYeXk/HoL0yXlUdh
 5QI8VDJ91BuxiQWYmcp5JDsg9GEecRYpw5JlfvmCrmk8Vy86LPFNIgnv9R0y6r46lNWv
 iriQ==
X-Gm-Message-State: APjAAAUouhjX6TGoqhviNQYqGTMjNMfgd2RYVFHUjgdEs1xP5Qj3sDgj
 AWucA0FQCIyqKFTMevw2vritlg==
X-Google-Smtp-Source: APXvYqy1hNq5WUJY3HgMK8Ka9tQQvMhhGJR9MlmF5V00NBgLlsE0SBGYjU7dlURi2Bms3zgjzUlcIQ==
X-Received: by 2002:adf:e48f:: with SMTP id i15mr20030170wrm.26.1568638230051; 
 Mon, 16 Sep 2019 05:50:30 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o12sm15109960wrm.23.2019.09.16.05.50.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 05:50:29 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com, lorenzo.pieralisi@arm.com, kishon@ti.com,
 bhelgaas@google.com, andrew.murray@arm.com
Subject: [PATCH v2 5/6] arm64: dts: meson-g12a: Add PCIe node
Date: Mon, 16 Sep 2019 14:50:21 +0200
Message-Id: <20190916125022.10754-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190916125022.10754-1-narmstrong@baylibre.com>
References: <20190916125022.10754-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_055031_480643_615F2811 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: gouwa@khadas.com, Neil Armstrong <narmstrong@baylibre.com>,
 linux-pci@vger.kernel.org, nick@khadas.com, linux-kernel@vger.kernel.org,
 yue.wang@Amlogic.com, repk@triplefau.lt, maz@kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the Amlogic G12A PCI Express controller node, also
using the USB3+PCIe Combo PHY.

The PHY mode selection is static, thus the USB3+PCIe Combo PHY
phandle would need to be removed from the USB control node if the
shared differential lines are used for PCIe instead of USB3.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 33 +++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    |  4 +++
 2 files changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 852cf9cf121b..7330dc37b7a6 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -95,6 +95,39 @@
 		#size-cells = <2>;
 		ranges;
 
+		pcie: pcie@fc000000 {
+			compatible = "amlogic,g12a-pcie", "snps,dw-pcie";
+			reg = <0x0 0xfc000000 0x0 0x400000
+			       0x0 0xff648000 0x0 0x2000
+			       0x0 0xfc400000 0x0 0x200000>;
+			reg-names = "elbi", "cfg", "config";
+			interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0>;
+			interrupt-map = <0 0 0 0 &gic GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
+			bus-range = <0x0 0xff>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			ranges = <0x81000000 0 0 0x0 0xfc600000 0 0x00100000
+				  0x82000000 0 0xfc700000 0x0 0xfc700000 0 0x1900000>;
+
+			clocks = <&clkc CLKID_PCIE_PHY
+				  &clkc CLKID_PCIE_COMB
+				  &clkc CLKID_PCIE_PLL>;
+			clock-names = "general",
+				      "pclk",
+				      "port";
+			resets = <&reset RESET_PCIE_CTRL_A>,
+				 <&reset RESET_PCIE_APB>;
+			reset-names = "port",
+				      "apb";
+			num-lanes = <1>;
+			phys = <&usb3_pcie_phy PHY_TYPE_PCIE>;
+			phy-names = "pcie";
+			status = "disabled";
+		};
+
 		ethmac: ethernet@ff3f0000 {
 			compatible = "amlogic,meson-axg-dwmac",
 				     "snps,dwmac-3.70a",
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
index 91492819d0d8..ee9ea3c69433 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
@@ -135,6 +135,10 @@
 	power-domains = <&pwrc PWRC_SM1_ETH_ID>;
 };
 
+&pcie {
+	power-domains = <&pwrc PWRC_SM1_PCIE_ID>;
+};
+
 &pwrc {
 	compatible = "amlogic,meson-sm1-pwrc";
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
