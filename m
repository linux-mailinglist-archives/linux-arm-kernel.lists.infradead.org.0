Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5622A12F4BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 07:52:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5AoVU3vGx4vAHTLoEYCUdcYaG6KSYIUDMwWkgMZ4rNc=; b=BpfKlpy7NafbTf
	wByTOO5ZKXGvpFNtHS6Dq5ZMrnPsBq3MWhmTNEvmOh7jyrlZg7/MwSU5cE+RTRdDjNWVEbXERGOPL
	Q12pZv9w0HGzXSIN1s1IuLIBAv7+QzpEriaf/O8lvrbeN/o+RuGAS9xZXf19+FAPgne//eXWrktIw
	Rty7M2kuDVNCgfBSbIbgox4OWmYakmTmFp08/h0V6Ss99FX5ea+dWAKCE4FnlQLE7UeNI5Kq+HKls
	75LGrUK9MGvneGLSKrzFTuKn8sRYUBTcZskYLmil3kqVAuKFML0l30FA6dEbLo+riZPyoqIVckDHC
	6rC5QCVj48VC9LJYAHJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inGpD-0000W3-Cp; Fri, 03 Jan 2020 06:52:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inGp1-0000TV-2k; Fri, 03 Jan 2020 06:52:36 +0000
X-UUID: f1c6dd6d2c1e47d4a1b4c42e48081282-20200102
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=4Dvki540yQLjWmLQxGuCZSHAC3ljyLeg0vX96OrmzTk=; 
 b=o/RuM7UCK65DrG1o7s2kwUB1deo/b3ccrOsEKcrarMe9AadexQZLjJK9hiGvwZTKNczejgA53ht5mTcMkbhX2xUYXUKbGD4qtqFDLuMgQ23SYmS6sfgXhjJxSMvN6/2a1QLn9vz8a+TCgqZZ2jfl51qXF0QreLmONFcJN+Dr7i8=;
X-UUID: f1c6dd6d2c1e47d4a1b4c42e48081282-20200102
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1228098905; Thu, 02 Jan 2020 22:52:32 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Jan 2020 22:44:14 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 Jan 2020 14:43:39 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 3 Jan 2020 14:44:08 +0800
From: Michael Kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>, <linux-pm@vger.kernel.org>,
 <srv_heupstream@mediatek.com>
Subject: [PATCH v3,1/8] arm64: dts: mt8183: add thermal zone node
Date: Fri, 3 Jan 2020 14:44:00 +0800
Message-ID: <20200103064407.19861-2-michael.kao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200103064407.19861-1-michael.kao@mediatek.com>
References: <20200103064407.19861-1-michael.kao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_225235_133654_5641B890 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "michael.kao" <michael.kao@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "michael.kao" <michael.kao@mediatek.com>

Add thermal zone node to Mediatek MT8183 dts file.

Signed-off-by: Michael Kao <michael.kao@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 85 ++++++++++++++++++++++++
 1 file changed, 85 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 10b32471bc7b..a2793cf3d994 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -570,6 +570,88 @@
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
+				sustainable-power = <5000>;
+			};
+
+			/* The tzts1 ~ tzts6 don't need to polling */
+			/* The tzts1 ~ tzts6 don't need to thermal throttle */
+
+			tzts1: tzts1 {
+				polling-delay-passive = <0>;
+				polling-delay = <0>;
+				thermal-sensors = <&thermal 1>;
+				sustainable-power = <5000>;
+				trips {};
+				cooling-maps {};
+			};
+
+			tzts2: tzts2 {
+				polling-delay-passive = <0>;
+				polling-delay = <0>;
+				thermal-sensors = <&thermal 2>;
+				sustainable-power = <5000>;
+				trips {};
+				cooling-maps {};
+			};
+
+			tzts3: tzts3 {
+				polling-delay-passive = <0>;
+				polling-delay = <0>;
+				thermal-sensors = <&thermal 3>;
+				sustainable-power = <5000>;
+				trips {};
+				cooling-maps {};
+			};
+
+			tzts4: tzts4 {
+				polling-delay-passive = <0>;
+				polling-delay = <0>;
+				thermal-sensors = <&thermal 4>;
+				sustainable-power = <5000>;
+				trips {};
+				cooling-maps {};
+			};
+
+			tzts5: tzts5 {
+				polling-delay-passive = <0>;
+				polling-delay = <0>;
+				thermal-sensors = <&thermal 5>;
+				sustainable-power = <5000>;
+				trips {};
+				cooling-maps {};
+			};
+
+			tztsABB: tztsABB {
+				polling-delay-passive = <0>;
+				polling-delay = <0>;
+				thermal-sensors = <&thermal 6>;
+				sustainable-power = <5000>;
+				trips {};
+				cooling-maps {};
+			};
+		};
+
 		audiosys: syscon@11220000 {
 			compatible = "mediatek,mt8183-audiosys", "syscon";
 			reg = <0 0x11220000 0 0x1000>;
@@ -580,6 +662,9 @@
 			compatible = "mediatek,mt8183-efuse",
 				     "mediatek,efuse";
 			reg = <0 0x11f10000 0 0x1000>;
+			thermal_calibration: calib@180 {
+				reg = <0x180 0xc>;
+			};
 		};
 
 		mfgcfg: syscon@13000000 {
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
