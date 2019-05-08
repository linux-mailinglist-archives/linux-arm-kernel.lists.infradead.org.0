Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDD316F29
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 04:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XgUezBYlv8/19zfcGo3HqWuclNpzlkkqOb/FVN4bYZg=; b=iyOXaT4VLCEIJM
	JRaxL9SaGnk+kBMw1eaDD+yzHx7kjh1L8M4KG/yjEeu3594FcfVb1w/9qEXlYU+IZSYm3V8O+STGx
	LBDl/PQnkGESADbHntRBlR4G/eEpcn1VSr4JkLPUu1OdHkv4ykfBWPu11Ul520EJQgUY1veiXKXIb
	RcwUSHwFZVMCaSfSNfCmezoou7l9HEDVeqqOy16S9qSNCAHKJEF9Dqx9nrbjxrzyMytBabK10vCf3
	9A1v8P6g4ZJmvflwcL+GpfHYhyRaQRxIjc208nGJT/U7m1RhYLwV4gqn245yjt6sCaiY7YPdO+mzh
	S1MpdKYpMvwDOWfZfAxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOCXo-00053e-3L; Wed, 08 May 2019 02:42:56 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCXh-000539-3D; Wed, 08 May 2019 02:42:50 +0000
X-UUID: c90a60dd8b574413938f296a8466436f-20190507
X-UUID: c90a60dd8b574413938f296a8466436f-20190507
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1316383185; Tue, 07 May 2019 18:42:12 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 19:42:10 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 May 2019 10:42:08 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 8 May 2019 10:42:08 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2] arm64: dts: mediatek: add cpufreq and cci devfreq nodes
 for mt8183
Date: Wed, 8 May 2019 10:42:06 +0800
Message-ID: <1557283326-6739-1-git-send-email-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_194249_144340_193F575B 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>

add cpufreq and cci devfreq nodes for mt8183

Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts |  36 ++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 245 ++++++++++++++++++++++++++++
 2 files changed, 281 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index 9b525597e5ec..27a4f96324a4 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -26,6 +26,42 @@
 	};
 };
 
+&cci {
+	proc-supply = <&mt6358_vproc12_reg>;
+};
+
+&cpu0 {
+	proc-supply = <&mt6358_vproc12_reg>;
+};
+
+&cpu1 {
+	proc-supply = <&mt6358_vproc12_reg>;
+};
+
+&cpu2 {
+	proc-supply = <&mt6358_vproc12_reg>;
+};
+
+&cpu3 {
+	proc-supply = <&mt6358_vproc12_reg>;
+};
+
+&cpu4 {
+	proc-supply = <&mt6358_vproc11_reg>;
+};
+
+&cpu5 {
+	proc-supply = <&mt6358_vproc11_reg>;
+};
+
+&cpu6 {
+	proc-supply = <&mt6358_vproc11_reg>;
+};
+
+&cpu7 {
+	proc-supply = <&mt6358_vproc11_reg>;
+};
+
 &uart0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 75c4881bbe5e..a2cdf8db13fe 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -16,6 +16,219 @@
 	#address-cells = <2>;
 	#size-cells = <2>;
 
+	cluster0_opp: opp_table0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+		opp00 {
+			opp-hz = /bits/ 64 <793000000>;
+			opp-microvolt = <650000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <910000000>;
+			opp-microvolt = <687500>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <1014000000>;
+			opp-microvolt = <718750>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <1131000000>;
+			opp-microvolt = <756250>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1248000000>;
+			opp-microvolt = <800000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1326000000>;
+			opp-microvolt = <818750>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1417000000>;
+			opp-microvolt = <850000>;
+		};
+		opp07 {
+			opp-hz = /bits/ 64 <1508000000>;
+			opp-microvolt = <868750>;
+		};
+		opp08 {
+			opp-hz = /bits/ 64 <1586000000>;
+			opp-microvolt = <893750>;
+		};
+		opp09 {
+			opp-hz = /bits/ 64 <1625000000>;
+			opp-microvolt = <906250>;
+		};
+		opp10 {
+			opp-hz = /bits/ 64 <1677000000>;
+			opp-microvolt = <931250>;
+		};
+		opp11 {
+			opp-hz = /bits/ 64 <1716000000>;
+			opp-microvolt = <943750>;
+		};
+		opp12 {
+			opp-hz = /bits/ 64 <1781000000>;
+			opp-microvolt = <975000>;
+		};
+		opp13 {
+			opp-hz = /bits/ 64 <1846000000>;
+			opp-microvolt = <1000000>;
+		};
+		opp14 {
+			opp-hz = /bits/ 64 <1924000000>;
+			opp-microvolt = <1025000>;
+		};
+		opp15 {
+			opp-hz = /bits/ 64 <1989000000>;
+			opp-microvolt = <1050000>;
+		};	};
+
+	cluster1_opp: opp_table1 {
+		compatible = "operating-points-v2";
+		opp-shared;
+		opp00 {
+			opp-hz = /bits/ 64 <793000000>;
+			opp-microvolt = <650000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <910000000>;
+			opp-microvolt = <675000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <1014000000>;
+			opp-microvolt = <700000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <1131000000>;
+			opp-microvolt = <725000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1248000000>;
+			opp-microvolt = <750000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1326000000>;
+			opp-microvolt = <775000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1417000000>;
+			opp-microvolt = <800000>;
+		};
+		opp07 {
+			opp-hz = /bits/ 64 <1508000000>;
+			opp-microvolt = <825000>;
+		};
+		opp08 {
+			opp-hz = /bits/ 64 <1586000000>;
+			opp-microvolt = <850000>;
+		};
+		opp09 {
+			opp-hz = /bits/ 64 <1625000000>;
+			opp-microvolt = <862500>;
+		};
+		opp10 {
+			opp-hz = /bits/ 64 <1677000000>;
+			opp-microvolt = <881250>;
+		};
+		opp11 {
+			opp-hz = /bits/ 64 <1716000000>;
+			opp-microvolt = <900000>;
+		};
+		opp12 {
+			opp-hz = /bits/ 64 <1781000000>;
+			opp-microvolt = <925000>;
+		};
+		opp13 {
+			opp-hz = /bits/ 64 <1846000000>;
+			opp-microvolt = <950000>;
+		};
+		opp14 {
+			opp-hz = /bits/ 64 <1924000000>;
+			opp-microvolt = <975000>;
+		};
+		opp15 {
+			opp-hz = /bits/ 64 <1989000000>;
+			opp-microvolt = <1000000>;
+		};
+	};
+
+	cci_opp: opp_table2 {
+		compatible = "operating-points-v2";
+		opp-shared;
+		opp00 {
+			opp-hz = /bits/ 64 <273000000>;
+			opp-microvolt = <650000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <338000000>;
+			opp-microvolt = <687500>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <403000000>;
+			opp-microvolt = <718750>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <463000000>;
+			opp-microvolt = <756250>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <546000000>;
+			opp-microvolt = <800000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <624000000>;
+			opp-microvolt = <818750>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <689000000>;
+			opp-microvolt = <850000>;
+		};
+		opp07 {
+			opp-hz = /bits/ 64 <767000000>;
+			opp-microvolt = <868750>;
+		};
+		opp08 {
+			opp-hz = /bits/ 64 <845000000>;
+			opp-microvolt = <893750>;
+		};
+		opp09 {
+			opp-hz = /bits/ 64 <871000000>;
+			opp-microvolt = <906250>;
+		};
+		opp10 {
+			opp-hz = /bits/ 64 <923000000>;
+			opp-microvolt = <931250>;
+		};
+		opp11 {
+			opp-hz = /bits/ 64 <962000000>;
+			opp-microvolt = <943750>;
+		};
+		opp12 {
+			opp-hz = /bits/ 64 <1027000000>;
+			opp-microvolt = <975000>;
+		};
+		opp13 {
+			opp-hz = /bits/ 64 <1092000000>;
+			opp-microvolt = <1000000>;
+		};
+		opp14 {
+			opp-hz = /bits/ 64 <1144000000>;
+			opp-microvolt = <1025000>;
+		};
+		opp15 {
+			opp-hz = /bits/ 64 <1196000000>;
+			opp-microvolt = <1050000>;
+		};
+	};
+
+	cci: cci {
+		compatible = "mediatek,mt8183-cci";
+		clocks = <&apmixedsys CLK_APMIXED_CCIPLL>;
+		clock-names = "cci_clock";
+		operating-points-v2 = <&cci_opp>;
+	};
+
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -57,6 +270,10 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x000>;
 			enable-method = "psci";
+			clocks = <&mcucfg CLK_MCU_MP0_SEL>,
+				 <&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
+			clock-names = "cpu", "intermediate";
+			operating-points-v2 = <&cluster0_opp>;
 		};
 
 		cpu1: cpu@1 {
@@ -64,6 +281,10 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x001>;
 			enable-method = "psci";
+			clocks = <&mcucfg CLK_MCU_MP0_SEL>,
+				 <&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
+			clock-names = "cpu", "intermediate";
+			operating-points-v2 = <&cluster0_opp>;
 		};
 
 		cpu2: cpu@2 {
@@ -71,6 +292,10 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x002>;
 			enable-method = "psci";
+			clocks = <&mcucfg CLK_MCU_MP0_SEL>,
+				 <&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
+			clock-names = "cpu", "intermediate";
+			operating-points-v2 = <&cluster0_opp>;
 		};
 
 		cpu3: cpu@3 {
@@ -78,6 +303,10 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x003>;
 			enable-method = "psci";
+			clocks = <&mcucfg CLK_MCU_MP0_SEL>,
+				 <&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
+			clock-names = "cpu", "intermediate";
+			operating-points-v2 = <&cluster0_opp>;
 		};
 
 		cpu4: cpu@100 {
@@ -85,6 +314,10 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x100>;
 			enable-method = "psci";
+			clocks = <&mcucfg CLK_MCU_MP2_SEL>,
+				 <&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
+			clock-names = "cpu", "intermediate";
+			operating-points-v2 = <&cluster1_opp>;
 		};
 
 		cpu5: cpu@101 {
@@ -92,6 +325,10 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x101>;
 			enable-method = "psci";
+			clocks = <&mcucfg CLK_MCU_MP2_SEL>,
+				 <&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
+			clock-names = "cpu", "intermediate";
+			operating-points-v2 = <&cluster1_opp>;
 		};
 
 		cpu6: cpu@102 {
@@ -99,6 +336,10 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x102>;
 			enable-method = "psci";
+			clocks = <&mcucfg CLK_MCU_MP2_SEL>,
+				 <&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
+			clock-names = "cpu", "intermediate";
+			operating-points-v2 = <&cluster1_opp>;
 		};
 
 		cpu7: cpu@103 {
@@ -106,6 +347,10 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x103>;
 			enable-method = "psci";
+			clocks = <&mcucfg CLK_MCU_MP2_SEL>,
+				 <&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
+			clock-names = "cpu", "intermediate";
+			operating-points-v2 = <&cluster1_opp>;
 		};
 	};
 
-- 
2.12.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
