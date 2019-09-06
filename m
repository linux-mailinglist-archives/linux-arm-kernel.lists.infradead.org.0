Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7B2AB55E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 12:06:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mbRGr/kokFKLYTdp9LbALYLLZBppi8oxAfKU/0c1Qh4=; b=k/AhyShw0RGd3d
	/ocE4gLWwuCgfn5h1ETXaqLx3C5qWysmV9cCwrYv5eDrNfZRlsNJSMQiEhA9PBgyRem42x04xtOgf
	Bm8AU8uYX5HPqn//rdA/cFt7vp1Fs71IzG2Iueg76fFePQ+P9h52Pamickbk/Ai0zbpOrMND6MYcQ
	XLSv+1vzYd4qRDuohzZl2pNCS2i52e4M1g88sjz+MRf98na/YURpi/35hVBWcpbJotmP6D9iqRzL9
	HClVibTzoZyRJiG4ipiPFeiQZM3cbrBogHhrA0lCoTAkjwcH5djz0VP/UCBvM43o1Ey+f/wQoD2c+
	Qlrq28rtGep0/v187cfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6B8a-00020t-By; Fri, 06 Sep 2019 10:06:40 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6B7m-0001Ws-GZ; Fri, 06 Sep 2019 10:05:52 +0000
X-UUID: cbe1168c6bc84d9e9e880dc9657f2184-20190906
X-UUID: cbe1168c6bc84d9e9e880dc9657f2184-20190906
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <roger.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1640664627; Fri, 06 Sep 2019 02:05:46 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Sep 2019 03:05:44 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Sep 2019 18:05:38 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 6 Sep 2019 18:05:36 +0800
From: Roger Lu <roger.lu@mediatek.com>
To: Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Nicolas Boichat <drinkcat@google.com>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v5 2/3] arm64: dts: mt8183: add svs device information
Date: Fri, 6 Sep 2019 18:05:14 +0800
Message-ID: <20190906100514.30803-3-roger.lu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190906100514.30803-1-roger.lu@mediatek.com>
References: <20190906100514.30803-1-roger.lu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9FBA1D41D325C9551F47247846E57E9AC6F34033007F8A5A4C42B98883029E182000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_030550_697958_4738AE70 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth
 Menon <nm@ti.com>, Angus Lin <Angus.Lin@mediatek.com>,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Roger Lu <roger.lu@mediatek.com>, linux-kernel@vger.kernel.org,
 HenryC Chen <HenryC.Chen@mediatek.com>, yt.lee@mediatek.com,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add pmic/clock/irq/efuse setting in svs noce

Signed-off-by: Roger Lu <roger.lu@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts | 16 +++++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 38 +++++++++++++++++++++
 2 files changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index d8e555cbb5d3..7c1d6e6a2a85 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -135,6 +135,22 @@
 
 };
 
+&svs_cpu_little {
+	vcpu-little-supply = <&mt6358_vproc12_reg>;
+};
+
+&svs_cpu_big {
+	vcpu-big-supply = <&mt6358_vproc11_reg>;
+};
+
+&svs_cci {
+	vcci-supply = <&mt6358_vproc12_reg>;
+};
+
+&svs_gpu {
+	vgpu-spply = <&mt6358_vgpu_reg>;
+};
+
 &uart0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 66aaa07f6cec..48343328bec2 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -351,6 +351,39 @@
 			status = "disabled";
 		};
 
+		svs: svs@1100b000 {
+			compatible = "mediatek,mt8183-svs";
+			reg = <0 0x1100b000 0 0x1000>;
+			interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_INFRA_THERM>;
+			clock-names = "main_clk";
+			nvmem-cells = <&svs_calibration>,
+				      <&thermal_calibration>;
+			nvmem-cell-names = "svs-calibration-data",
+					   "calibration-data";
+
+			svs_cpu_little: svs_cpu_little {
+				compatible = "mediatek,mt8183-svs-cpu-little";
+				operating-points-v2 = <&cluster0_opp>;
+			};
+
+			svs_cpu_big: svs_cpu_big {
+				compatible = "mediatek,mt8183-svs-cpu-big";
+				operating-points-v2 = <&cluster1_opp>;
+			};
+
+			svs_cci: svs_cci {
+				compatible = "mediatek,mt8183-svs-cci";
+				operating-points-v2 = <&cci_opp>;
+			};
+
+			svs_gpu: svs_gpu {
+				compatible = "mediatek,mt8183-svs-gpu";
+				power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
+				operating-points-v2 = <&gpu_opp_table>;
+			};
+		};
+
 		spi0: spi@1100a000 {
 			compatible = "mediatek,mt8183-spi";
 			#address-cells = <1>;
@@ -439,6 +472,11 @@
 			compatible = "mediatek,mt8183-efuse",
 				     "mediatek,efuse";
 			reg = <0 0x11f10000 0 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			svs_calibration: calib@580 {
+				reg = <0x580 0x64>;
+			};
 		};
 
 		mfgcfg: syscon@13000000 {
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
