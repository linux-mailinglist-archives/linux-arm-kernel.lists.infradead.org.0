Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E53B08B144
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 09:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=28AZq3ho+TdM3RjZGvaLvQ2HIr/LkaUdjRUDAEJ1DUo=; b=GewFUP4VipzUCO
	LDpo2dcVc7nMj3tOwbwmR3HB85ovCdQ41qO7aQiTesY3nSqhGtZSGqRKUZYTJHdCxI4g/ciK1vn+0
	U2mmVv856mYD1jgsNUSKlfq2yXbvaddPqDQ6ncFwY+A5dCvlRyXUsweq40Ymg3BKFXTlm0q66NMoY
	8OUgBzBkX14YBEJgP9xHN6OJqWo5KOXbQc8Rb5ZO6aeegLCpy562EdGd2t6OotKpEYY6MDfCBj6tQ
	lvB+/rAZOZODiY5+4D0pCpiHmF4i3gAKPBQrPOpHfhVWL9JFaZXqhmSVmOOaj2qExXBz+kvxbAHgu
	lVfK2nUN52CsdFpvGsfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxRMN-0002jr-4T; Tue, 13 Aug 2019 07:36:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxRLw-0002jP-JV; Tue, 13 Aug 2019 07:36:22 +0000
X-UUID: 0b42bd2512274efe866b1f740225c05b-20190812
X-UUID: 0b42bd2512274efe866b1f740225c05b-20190812
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1283167495; Mon, 12 Aug 2019 23:36:03 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 13 Aug 2019 00:36:01 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 13 Aug 2019 15:36:00 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 13 Aug 2019 15:36:00 +0800
From: Biao Huang <biao.huang@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] arm64: dts: mt2712: add ethernet device node
Date: Tue, 13 Aug 2019 15:35:42 +0800
Message-ID: <20190813073542.6569-1-biao.huang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_003620_649615_601F5541 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, biao.huang@mediatek.com,
 linux-kernel@vger.kernel.org, jianguo.zhang@mediatek.com,
 linux-mediatek@lists.infradead.org, yt.shen@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add device node for mt2712 ethernet.

Signed-off-by: Biao Huang <biao.huang@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt2712-evb.dts | 69 +++++++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt2712e.dtsi   | 65 +++++++++++++++++++
 2 files changed, 134 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt2712-evb.dts b/arch/arm64/boot/dts/mediatek/mt2712-evb.dts
index 1353dad2f53c..3118f96706d9 100644
--- a/arch/arm64/boot/dts/mediatek/mt2712-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt2712-evb.dts
@@ -107,7 +107,76 @@
 	proc-supply = <&cpus_fixed_vproc1>;
 };
 
+&eth {
+	phy-mode ="rgmii-rxid";
+	phy-handle = <&ethernet_phy0>;
+	mediatek,tx-delay-ps = <1530>;
+	snps,reset-gpio = <&pio 87 GPIO_ACTIVE_LOW>;
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&eth_default>;
+	pinctrl-1 = <&eth_sleep>;
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		ethernet_phy0: ethernet-phy@5 {
+			compatible = "ethernet-phy-id0243.0d90";
+			reg = <0x5>;
+		};
+	};
+};
+
 &pio {
+	eth_default: eth_default {
+		tx_pins {
+			pinmux = <MT2712_PIN_71_GBE_TXD3__FUNC_GBE_TXD3>,
+				 <MT2712_PIN_72_GBE_TXD2__FUNC_GBE_TXD2>,
+				 <MT2712_PIN_73_GBE_TXD1__FUNC_GBE_TXD1>,
+				 <MT2712_PIN_74_GBE_TXD0__FUNC_GBE_TXD0>,
+				 <MT2712_PIN_75_GBE_TXC__FUNC_GBE_TXC>,
+				 <MT2712_PIN_76_GBE_TXEN__FUNC_GBE_TXEN>;
+			drive-strength = <MTK_DRIVE_8mA>;
+		};
+		rx_pins {
+			pinmux = <MT2712_PIN_78_GBE_RXD3__FUNC_GBE_RXD3>,
+				 <MT2712_PIN_79_GBE_RXD2__FUNC_GBE_RXD2>,
+				 <MT2712_PIN_80_GBE_RXD1__FUNC_GBE_RXD1>,
+				 <MT2712_PIN_81_GBE_RXD0__FUNC_GBE_RXD0>,
+				 <MT2712_PIN_82_GBE_RXDV__FUNC_GBE_RXDV>,
+				 <MT2712_PIN_84_GBE_RXC__FUNC_GBE_RXC>;
+		};
+		mdio_pins {
+			pinmux = <MT2712_PIN_85_GBE_MDC__FUNC_GBE_MDC>,
+				 <MT2712_PIN_86_GBE_MDIO__FUNC_GBE_MDIO>;
+			drive-strength = <MTK_DRIVE_8mA>;
+		};
+	};
+
+	eth_sleep: eth_sleep {
+		tx_pins {
+			pinmux = <MT2712_PIN_71_GBE_TXD3__FUNC_GPIO71>,
+				 <MT2712_PIN_72_GBE_TXD2__FUNC_GPIO72>,
+				 <MT2712_PIN_73_GBE_TXD1__FUNC_GPIO73>,
+				 <MT2712_PIN_74_GBE_TXD0__FUNC_GPIO74>,
+				 <MT2712_PIN_75_GBE_TXC__FUNC_GPIO75>,
+				 <MT2712_PIN_76_GBE_TXEN__FUNC_GPIO76>;
+		};
+		rx_pins {
+			pinmux = <MT2712_PIN_78_GBE_RXD3__FUNC_GPIO78>,
+				 <MT2712_PIN_79_GBE_RXD2__FUNC_GPIO79>,
+				 <MT2712_PIN_80_GBE_RXD1__FUNC_GPIO80>,
+				 <MT2712_PIN_81_GBE_RXD0__FUNC_GPIO81>,
+				 <MT2712_PIN_82_GBE_RXDV__FUNC_GPIO82>,
+				 <MT2712_PIN_84_GBE_RXC__FUNC_GPIO84>;
+		};
+		mdio_pins {
+			pinmux = <MT2712_PIN_85_GBE_MDC__FUNC_GPIO85>,
+				 <MT2712_PIN_86_GBE_MDIO__FUNC_GPIO86>;
+		};
+	};
+
 	usb0_id_pins_float: usb0_iddig {
 		pins_iddig {
 			pinmux = <MT2712_PIN_12_IDDIG_P0__FUNC_IDDIG_A>;
diff --git a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
index 43307bad3f0d..b2edec20c8da 100644
--- a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
@@ -632,6 +632,71 @@
 		status = "disabled";
 	};
 
+	stmmac_axi_setup: stmmac-axi-config {
+		snps,wr_osr_lmt = <0x7>;
+		snps,rd_osr_lmt = <0x7>;
+		snps,blen = <0 0 0 0 16 8 4>;
+	};
+
+	mtl_rx_setup: rx-queues-config {
+		snps,rx-queues-to-use = <1>;
+		snps,rx-sched-sp;
+		queue0 {
+			snps,dcb-algorithm;
+			snps,map-to-dma-channel = <0x0>;
+			snps,priority = <0x0>;
+		};
+	};
+
+	mtl_tx_setup: tx-queues-config {
+		snps,tx-queues-to-use = <3>;
+		snps,tx-sched-wrr;
+		queue0 {
+			snps,weight = <0x10>;
+			snps,dcb-algorithm;
+			snps,priority = <0x0>;
+		};
+		queue1 {
+			snps,weight = <0x11>;
+			snps,dcb-algorithm;
+			snps,priority = <0x1>;
+		};
+		queue2 {
+			snps,weight = <0x12>;
+			snps,dcb-algorithm;
+			snps,priority = <0x2>;
+		};
+	};
+
+	eth: ethernet@1101c000 {
+		compatible = "mediatek,mt2712-gmac";
+		reg = <0 0x1101c000 0 0x1300>;
+		interrupts = <GIC_SPI 237 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-names = "macirq";
+		mac-address = [00 55 7b b5 7d f7];
+		clock-names = "axi",
+			      "apb",
+			      "mac_main",
+			      "ptp_ref";
+		clocks = <&pericfg CLK_PERI_GMAC>,
+			 <&pericfg CLK_PERI_GMAC_PCLK>,
+			 <&topckgen CLK_TOP_ETHER_125M_SEL>,
+			 <&topckgen CLK_TOP_ETHER_50M_SEL>;
+		assigned-clocks = <&topckgen CLK_TOP_ETHER_125M_SEL>,
+				  <&topckgen CLK_TOP_ETHER_50M_SEL>;
+		assigned-clock-parents = <&topckgen CLK_TOP_ETHERPLL_125M>,
+					 <&topckgen CLK_TOP_APLL1_D3>;
+		power-domains = <&scpsys MT2712_POWER_DOMAIN_AUDIO>;
+		mediatek,pericfg = <&pericfg>;
+		snps,axi-config = <&stmmac_axi_setup>;
+		snps,mtl-rx-config = <&mtl_rx_setup>;
+		snps,mtl-tx-config = <&mtl_tx_setup>;
+		snps,txpbl = <1>;
+		snps,rxpbl = <1>;
+		clk_csr = <0>;
+		status = "disabled";
+	};
+
 	mmc0: mmc@11230000 {
 		compatible = "mediatek,mt2712-mmc";
 		reg = <0 0x11230000 0 0x1000>;
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
