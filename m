Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 256B68D05B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:09:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zE1mS6CVJGJrAVQ725N2JLLO8dsS8AS9qGTy2ROKPro=; b=AWInYragj0wls8
	SP7KZsAC6If6UvUo+fubm+4/0eKm9xdazwLpk/gmerUVk5QmuoBq8aNWOn9W0myRC+cim2Hqu8c7W
	2XBs5dzkXFz6a6MUQd92IpJxTvqohloG9zg7mWah6QOFS5TT2EwyOl2rHLTTAMiG30wEPH+P/pnYn
	u0aruC6AhoAbebcCJFFZimAnSEXMR/ILRqTiXXr8DlwmVId1m+CjLAycUJltmnpqoHsleMTQ+u8uv
	4zkaZUIOGj0syxUKg7xeN5mNsSSrQrpQU8F1CKgGKTPevcIsvzyQm5UMxTWAdWyxPaq04lbmLf1MT
	LhggsC+N5q3Yjg3ZGhuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqD5-0004W8-DB; Wed, 14 Aug 2019 10:08:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqBT-0003RP-BJ; Wed, 14 Aug 2019 10:07:12 +0000
X-UUID: 52071bc7c3e6442581b49582aad0cb67-20190814
X-UUID: 52071bc7c3e6442581b49582aad0cb67-20190814
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1136644216; Wed, 14 Aug 2019 02:06:55 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 14 Aug 2019 03:06:55 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 14 Aug 2019 18:06:53 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 14 Aug 2019 18:06:53 +0800
From: Michael Kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>
Subject: [PATCH 1/4] arm64: dts: mt8183: add thermal zone node
Date: Wed, 14 Aug 2019 18:06:46 +0800
Message-ID: <1565777209-21869-2-git-send-email-michael.kao@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1565777209-21869-1-git-send-email-michael.kao@mediatek.com>
References: <1565777209-21869-1-git-send-email-michael.kao@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2C3FC9F54D4A3B45688BFECCE865BDEA24A86DB3200092A738F3AD1CF186E3D72000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_030711_411780_37D16181 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, "michael.kao" <michael.kao@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "michael.kao" <michael.kao@mediatek.com>

Add thermal zone node to Mediatek MT8183 dts file.

Signed-off-by: Michael Kao <michael.kao@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 67 ++++++++++++++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index c2749c4..47bde49 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -372,6 +372,70 @@
 			status = "disabled";
 		};
 
+		thermal: thermal@1100b000 {
+			#thermal-sensor-cells = <1>;
+			compatible = "mediatek,mt8183-thermal";
+			reg = <0 0x1100b000 0 0x1000>;
+			interrupts = <0 76 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_INFRA_THERM>,
+				 <&infracfg CLK_INFRA_AUXADC>;
+			clock-names = "therm", "auxadc";
+			resets = <&infracfg  MT8183_INFRACFG_AO_THERM_SW_RST>;
+			mediatek,auxadc = <&auxadc>;
+			mediatek,apmixedsys = <&apmixedsys>;
+			mediatek,hw-reset-temp = <117000>;
+			nvmem-cells = <&thermal_calibration>;
+			nvmem-cell-names = "calibration-data";
+		};
+
+		thermal-zones {
+			cpu_thermal: cpu_thermal {
+				polling-delay-passive = <100>;
+				polling-delay = <500>;
+				thermal-sensors = <&thermal 0>;
+				sustainable-power = <4500>;
+			};
+
+			/* The tzts1 ~ tzts6 don't need to polling */
+			/* The tzts1 ~ tzts6 don't need to thermal throttle */
+
+			tzts1: tzts1 {
+				polling-delay-passive = <0>;
+				polling-delay = <0>;
+				thermal-sensors = <&thermal 1>;
+			};
+
+			tzts2: tzts2 {
+				polling-delay-passive = <0>;
+				polling-delay = <0>;
+				thermal-sensors = <&thermal 2>;
+			};
+
+			tzts3: tzts3 {
+				polling-delay-passive = <0>;
+				polling-delay = <0>;
+				thermal-sensors = <&thermal 3>;
+			};
+
+			tzts4: tzts4 {
+				polling-delay-passive = <0>;
+				polling-delay = <0>;
+				thermal-sensors = <&thermal 4>;
+			};
+
+			tzts5: tzts5 {
+				polling-delay-passive = <0>;
+				polling-delay = <0>;
+				thermal-sensors = <&thermal 5>;
+			};
+
+			tztsABB: tztsABB {
+				polling-delay-passive = <0>;
+				polling-delay = <0>;
+				thermal-sensors = <&thermal 6>;
+			};
+		};
+
 		audiosys: syscon@11220000 {
 			compatible = "mediatek,mt8183-audiosys", "syscon";
 			reg = <0 0x11220000 0 0x1000>;
@@ -382,6 +446,9 @@
 			compatible = "mediatek,mt8183-efuse",
 				     "mediatek,efuse";
 			reg = <0 0x11f10000 0 0x1000>;
+			thermal_calibration: calib@180 {
+				reg = <0x180 0xc>;
+			};
 		};
 
 		mfgcfg: syscon@13000000 {
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
