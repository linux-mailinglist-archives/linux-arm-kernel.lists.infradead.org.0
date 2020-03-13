Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00513183E1A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 02:00:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h7vtRH+haRxDWcSTq04sLawEG9UenMjYj4csGch/zMI=; b=YuxU6TI9we/M9tGe5IzHxDcvMK
	4Vom86oQfblJ0dvKY9eX8TJKpbZ7qsRxwMeTzVF92frsdAh7Hxd+Dl9xsalryMPlhw61bvz5JvmDU
	stb/9x+pqlkqBSXlRRFX8FHUgvsRuezPuxhZBIFr2bnguhjxAIdlxDusUiF4T59HPHq72f4U2DpYj
	rlq1fEOrTDxdfcJYW0pM+ekbBiYGPJH2JfK8WMbIQZASN3A2xDF0+rlTOjnOm2xA2Q244+s1D77Qf
	/qdW63IUYACTWjWnuJT7LOBGj6eEL9YBw5kO8i7MY12uBpsVIFVYo1x1F43uiizBQ0hR1lzgfoMNG
	uxM0URUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCYg8-0005C9-At; Fri, 13 Mar 2020 00:59:56 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCYes-0004Cz-O2
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 00:58:40 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 13 Mar 2020 09:58:37 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 11939603AB;
 Fri, 13 Mar 2020 09:58:38 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 13 Mar 2020 09:58:38 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 74BFA1A01BB;
 Fri, 13 Mar 2020 09:58:36 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 03/10] ARM: dts: uniphier: Add USB3 controller nodes for Pro5
Date: Fri, 13 Mar 2020 09:58:09 +0900
Message-Id: <1584061096-23686-4-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584061096-23686-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1584061096-23686-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_175839_136723_B4FDE30A 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Jassi Brar <jaswinder.singh@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add USB3 controller nodes for Pro5 SoC and the boards.

Pro5 SoC has 2 controllers. USB0 includes 1 SS-PHY and 1 HS-PHY, and USB1
includes 1 SS-PHY and 2 HS-PHY.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm/boot/dts/uniphier-pro5.dtsi | 148 +++++++++++++++++++++++++++++++++++
 1 file changed, 148 insertions(+)

diff --git a/arch/arm/boot/dts/uniphier-pro5.dtsi b/arch/arm/boot/dts/uniphier-pro5.dtsi
index ecab061..fe8d306 100644
--- a/arch/arm/boot/dts/uniphier-pro5.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro5.dtsi
@@ -461,6 +461,154 @@
 			};
 		};
 
+		usb0: usb@65a00000 {
+			compatible = "socionext,uniphier-dwc3", "snps,dwc3";
+			status = "disabled";
+			reg = <0x65a00000 0xcd00>;
+			interrupt-names = "host";
+			interrupts = <0 134 4>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_usb0>;
+			clock-names = "ref", "bus_early", "suspend";
+			clocks = <&sys_clk 12>, <&sys_clk 12>, <&sys_clk 12>;
+			resets = <&usb0_rst 15>;
+			phys = <&usb0_hsphy0>, <&usb0_ssphy0>;
+			dr_mode = "host";
+		};
+
+		usb-glue@65b00000 {
+			compatible = "socionext,uniphier-pro5-dwc3-glue",
+				     "simple-mfd";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0x65b00000 0x400>;
+
+			usb0_rst: reset@0 {
+				compatible = "socionext,uniphier-pro5-usb3-reset";
+				reg = <0x0 0x4>;
+				#reset-cells = <1>;
+				clock-names = "gio", "link";
+				clocks = <&sys_clk 12>, <&sys_clk 14>;
+				reset-names = "gio", "link";
+				resets = <&sys_rst 12>, <&sys_rst 14>;
+			};
+
+			usb0_vbus0: regulator@100 {
+				compatible = "socionext,uniphier-pro5-usb3-regulator";
+				reg = <0x100 0x10>;
+				clock-names = "gio", "link";
+				clocks = <&sys_clk 12>, <&sys_clk 14>;
+				reset-names = "gio", "link";
+				resets = <&sys_rst 12>, <&sys_rst 14>;
+			};
+
+			usb0_hsphy0: hs-phy@280 {
+				compatible = "socionext,uniphier-pro5-usb3-hsphy";
+				reg = <0x280 0x10>;
+				#phy-cells = <0>;
+				clock-names = "gio", "link";
+				clocks = <&sys_clk 12>, <&sys_clk 14>;
+				reset-names = "gio", "link";
+				resets = <&sys_rst 12>, <&sys_rst 14>;
+				vbus-supply = <&usb0_vbus0>;
+			};
+
+			usb0_ssphy0: ss-phy@380 {
+				compatible = "socionext,uniphier-pro5-usb3-ssphy";
+				reg = <0x380 0x10>;
+				#phy-cells = <0>;
+				clock-names = "gio", "link";
+				clocks = <&sys_clk 12>, <&sys_clk 14>;
+				reset-names = "gio", "link";
+				resets = <&sys_rst 12>, <&sys_rst 14>;
+				vbus-supply = <&usb0_vbus0>;
+			};
+		};
+
+		usb1: usb@65c00000 {
+			compatible = "socionext,uniphier-dwc3", "snps,dwc3";
+			status = "disabled";
+			reg = <0x65c00000 0xcd00>;
+			interrupt-names = "host";
+			interrupts = <0 137 4>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_usb1>, <&pinctrl_usb2>;
+			clock-names = "ref", "bus_early", "suspend";
+			clocks = <&sys_clk 12>, <&sys_clk 12>, <&sys_clk 12>;
+			resets = <&usb1_rst 15>;
+			phys = <&usb1_hsphy0>, <&usb1_hsphy1>, <&usb1_ssphy0>;
+			dr_mode = "host";
+		};
+
+		usb-glue@65d00000 {
+			compatible = "socionext,uniphier-pro5-dwc3-glue",
+				     "simple-mfd";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0x65d00000 0x400>;
+
+			usb1_rst: reset@0 {
+				compatible = "socionext,uniphier-pro5-usb3-reset";
+				reg = <0x0 0x4>;
+				#reset-cells = <1>;
+				clock-names = "gio", "link";
+				clocks = <&sys_clk 12>, <&sys_clk 15>;
+				reset-names = "gio", "link";
+				resets = <&sys_rst 12>, <&sys_rst 15>;
+			};
+
+			usb1_vbus0: regulator@100 {
+				compatible = "socionext,uniphier-pro5-usb3-regulator";
+				reg = <0x100 0x10>;
+				clock-names = "gio", "link";
+				clocks = <&sys_clk 12>, <&sys_clk 15>;
+				reset-names = "gio", "link";
+				resets = <&sys_rst 12>, <&sys_rst 15>;
+			};
+
+			usb1_vbus1: regulator@110 {
+				compatible = "socionext,uniphier-pro5-usb3-regulator";
+				reg = <0x110 0x10>;
+				clock-names = "gio", "link";
+				clocks = <&sys_clk 12>, <&sys_clk 15>;
+				reset-names = "gio", "link";
+				resets = <&sys_rst 12>, <&sys_rst 15>;
+			};
+
+			usb1_hsphy0: hs-phy@280 {
+				compatible = "socionext,uniphier-pro5-usb3-hsphy";
+				reg = <0x280 0x10>;
+				#phy-cells = <0>;
+				clock-names = "gio", "link";
+				clocks = <&sys_clk 12>, <&sys_clk 15>;
+				reset-names = "gio", "link";
+				resets = <&sys_rst 12>, <&sys_rst 15>;
+				vbus-supply = <&usb1_vbus0>;
+			};
+
+			usb1_hsphy1: hs-phy@290 {
+				compatible = "socionext,uniphier-pro5-usb3-hsphy";
+				reg = <0x290 0x10>;
+				#phy-cells = <0>;
+				clock-names = "gio", "link";
+				clocks = <&sys_clk 12>, <&sys_clk 15>;
+				reset-names = "gio", "link";
+				resets = <&sys_rst 12>, <&sys_rst 15>;
+				vbus-supply = <&usb1_vbus1>;
+			};
+
+			usb1_ssphy0: ss-phy@380 {
+				compatible = "socionext,uniphier-pro5-usb3-ssphy";
+				reg = <0x380 0x10>;
+				#phy-cells = <0>;
+				clock-names = "gio", "link";
+				clocks = <&sys_clk 12>, <&sys_clk 15>;
+				reset-names = "gio", "link";
+				resets = <&sys_rst 12>, <&sys_rst 15>;
+				vbus-supply = <&usb1_vbus0>;
+			};
+		};
+
 		nand: nand@68000000 {
 			compatible = "socionext,uniphier-denali-nand-v5b";
 			status = "disabled";
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
