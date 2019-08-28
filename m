Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A879FA7C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 08:23:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1ZzsVzUT5XmI+ynWgASO/LRS1Yap+EUdH0L9WpYqMU=; b=Sv9F3pdBVwSTsl
	oKNcAUV7Z/VNGOcNMnQb3DZFxURe6eS9CPQYWh/VtVmeOpdFMBSqYaCp6EUFT3SBc3g0RCrzVAPWR
	BRA/I8Y7LBLOg0K7UUiK5hQsPFFJ94Aidvq8DJhp35jBsK98pzsf0Ae3NwY5N6Ss6zDmF13pUYDgG
	PaCZhlUFsGuWaF81YOjcX6Q9t6eoBQfDdYELpRL7RsRfpTzXiLRBNF7ih/Qg8IhD8qcl6nYNU4Nh7
	NIZpfCRd7k6GPZEmZZ1ViUSR0HZaOR3fntWEA5T5vseR/w0i1yYn/fsbclZNeKCDC0iw+sttvgJZQ
	IsA5Z/y1PgTDT+g/U22A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2rMb-0003S1-Ke; Wed, 28 Aug 2019 06:23:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2rKm-0001zM-Nv; Wed, 28 Aug 2019 06:21:35 +0000
X-UUID: cbd85d55db8e4826b81a2133291fdea0-20190827
X-UUID: cbd85d55db8e4826b81a2133291fdea0-20190827
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1159581991; Tue, 27 Aug 2019 22:21:38 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 27 Aug 2019 23:21:36 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 14:21:33 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 28 Aug 2019 14:21:33 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 5/6] arm64: dts: mt8183: add usb and phy nodes
Date: Wed, 28 Aug 2019 14:21:00 +0800
Message-ID: <1566973261-21677-6-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1566973261-21677-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1566973261-21677-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 53D6CA82753AEEC1FC6F490F0EEC5A3268B2DE9F664A7B39C4DB9466082A3A8D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_232132_777949_7B7B4575 
X-CRM114-Status: GOOD (  12.13  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Mathias Nyman <mathias.nyman@intel.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng
 Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add USB related nodes for MT8183, set it as host mode by default.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts | 22 +++++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 55 +++++++++++++++++++++
 2 files changed, 77 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index d8e555cbb5d3..142ff52f0f42 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -6,7 +6,9 @@
  */
 
 /dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
 #include "mt8183.dtsi"
+#include "mt6358.dtsi"
 
 / {
 	model = "MediaTek MT8183 evaluation board";
@@ -24,6 +26,16 @@
 	chosen {
 		stdout-path = "serial0:921600n8";
 	};
+
+	usb_vbus: regulator@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "p0_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&pio 42 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
 };
 
 &auxadc {
@@ -135,6 +147,16 @@
 
 };
 
+&ssusb {
+	vusb33-supply = <&mt6358_vusb_reg>;
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usb_host {
+	status = "okay";
+};
+
 &uart0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index c2749c4631bc..28da334237c6 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/clock/mt8183-clk.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/phy/phy.h>
 #include "mt8183-pinfunc.h"
 
 / {
@@ -372,6 +373,35 @@
 			status = "disabled";
 		};
 
+		ssusb: usb@11201000 {
+			compatible = "mediatek,mt8183-mtu3", "mediatek,mtu3";
+			reg = <0 0x11201000 0 0x2e00>,
+			      <0 0x11203e00 0 0x0100>;
+			reg-names = "mac", "ippc";
+			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_LOW>;
+			phys = <&u2port0 PHY_TYPE_USB2>,
+			       <&u3port0 PHY_TYPE_USB3>;
+			clocks = <&infracfg CLK_INFRA_UNIPRO_SCK>,
+				 <&infracfg CLK_INFRA_USB>;
+			clock-names = "sys_ck", "ref_ck";
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+			status = "disabled";
+
+			usb_host: xhci@11200000 {
+				compatible = "mediatek,mt8183-xhci",
+					     "mediatek,mtk-xhci";
+				reg = <0 0x11200000 0 0x1000>;
+				reg-names = "mac";
+				interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_LOW>;
+				clocks = <&infracfg CLK_INFRA_UNIPRO_SCK>,
+					 <&infracfg CLK_INFRA_USB>;
+				clock-names = "sys_ck", "ref_ck";
+				status = "disabled";
+			};
+		};
+
 		audiosys: syscon@11220000 {
 			compatible = "mediatek,mt8183-audiosys", "syscon";
 			reg = <0 0x11220000 0 0x1000>;
@@ -384,6 +414,31 @@
 			reg = <0 0x11f10000 0 0x1000>;
 		};
 
+		u3phy: usb-phy@11f40000 {
+			compatible = "mediatek,mt8183-tphy",
+				     "mediatek,generic-tphy-v2";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0 0x11f40000 0x1000>;
+			status = "okay";
+
+			u2port0: usb-phy@0 {
+				reg = <0x0 0x700>;
+				clocks = <&clk26m>;
+				clock-names = "ref";
+				#phy-cells = <1>;
+				status = "okay";
+			};
+
+			u3port0: usb-phy@0700 {
+				reg = <0x0700 0x900>;
+				clocks = <&clk26m>;
+				clock-names = "ref";
+				#phy-cells = <1>;
+				status = "okay";
+			};
+		};
+
 		mfgcfg: syscon@13000000 {
 			compatible = "mediatek,mt8183-mfgcfg", "syscon";
 			reg = <0 0x13000000 0 0x1000>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
