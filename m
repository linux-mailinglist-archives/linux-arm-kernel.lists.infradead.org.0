Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0982A19E26
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 15:28:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQxrQR1b9jc9zmFW/NdkXu9EmmoPWxwdkqrgglKrKMY=; b=fu9thcJGXB0KH6
	a4ROhUaFfF7aJmqYxhSgf7Img7nrtIutrm7xilxl6NCIItdKvAmFLElg+eFaYnuJMyk9tHPRzQbuc
	vxBUnuYF1VYs8pQ7Byr+Hpkv3JSDP+hVHcNYLc69cINi1q9R5eGZhdqZ/3ABaBvdjSxISydZjm9vJ
	a3iEqpmOhA9xEL5dhxlDGeLRrPmQYreQwer6eEgWdqUAuxwMvXMSebDJCJygaffNEI49fG/SoNeay
	LqG3j4OsXXf/gEW4xjExzxJmYwa/WWSak0lvJPX8IFCTk8qMombUkj1b24Y4zQQlaTlxihNYEUp0l
	L8P2bfh+LLyqLafxrWPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5ZV-0002of-Rw; Fri, 10 May 2019 13:28:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5YV-0001d0-Cb; Fri, 10 May 2019 13:27:24 +0000
X-UUID: c2ed43a6a6ac450d9c29cab3cf21343f-20190510
X-UUID: c2ed43a6a6ac450d9c29cab3cf21343f-20190510
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1086594668; Fri, 10 May 2019 05:27:13 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 06:27:12 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 21:27:09 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 10 May 2019 21:27:10 +0800
From: michael.kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>
Subject: [PATCH v2 1/8] arm64: dts: mt8183: add thermal zone node
Date: Fri, 10 May 2019 21:26:59 +0800
Message-ID: <1557494826-6044-2-git-send-email-michael.kao@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
References: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_062719_713885_3DE712BC 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Add thermal zone node to Mediatek MT8183 dts file.

Signed-off-by: Michael Kao <michael.kao@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 85 ++++++++++++++++++++++++++++++++
 1 file changed, 85 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 926df75..52ad47e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -334,6 +334,88 @@
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
+				polling-delay-passive = <1000>;
+				polling-delay = <1000>;
+				thermal-sensors = <&thermal 0>;
+				sustainable-power = <1500>;
+			};
+
+			/* The tzts1 ~ tzts6 don't need to polling */
+			/* The tzts1 ~ tzts6 don't need to thermal throttle */
+
+			tzts1: tzts1 {
+				polling-delay-passive = <0>;
+				polling-delay = <0>;
+				thermal-sensors = <&thermal 1>;
+				sustainable-power = <0>;
+				trips {};
+				cooling-maps {};
+			};
+
+			tzts2: tzts2 {
+				polling-delay-passive = <0>;
+				polling-delay = <0>;
+				thermal-sensors = <&thermal 2>;
+				sustainable-power = <0>;
+				trips {};
+				cooling-maps {};
+			};
+
+			tzts3: tzts3 {
+				polling-delay-passive = <0>;
+				polling-delay = <0>;
+				thermal-sensors = <&thermal 3>;
+				sustainable-power = <0>;
+				trips {};
+				cooling-maps {};
+			};
+
+			tzts4: tzts4 {
+				polling-delay-passive = <0>;
+				polling-delay = <0>;
+				thermal-sensors = <&thermal 4>;
+				sustainable-power = <0>;
+				trips {};
+				cooling-maps {};
+			};
+
+			tzts5: tzts5 {
+				polling-delay-passive = <0>;
+				polling-delay = <0>;
+				thermal-sensors = <&thermal 5>;
+				sustainable-power = <0>;
+				trips {};
+				cooling-maps {};
+			};
+
+			tztsABB: tztsABB {
+				polling-delay-passive = <0>;
+				polling-delay = <0>;
+				thermal-sensors = <&thermal 6>;
+				sustainable-power = <0>;
+				trips {};
+				cooling-maps {};
+			};
+		};
+
 		audiosys: syscon@11220000 {
 			compatible = "mediatek,mt8183-audiosys", "syscon";
 			reg = <0 0x11220000 0 0x1000>;
@@ -368,6 +450,9 @@
 			compatible = "mediatek,mt8183-efuse",
 				     "mediatek,efuse";
 			reg = <0 0x11f10000 0 0x1000>;
+			thermal_calibration: calib@180 {
+				reg = <0x180 0xc>;
+			};
 		};
 
 		mfgcfg: syscon@13000000 {
-- 
2.6.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
