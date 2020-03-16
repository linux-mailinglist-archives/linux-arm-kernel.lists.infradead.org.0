Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D612A1865BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 08:35:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2lE9SWGRaZ7UDzXVMQG647dFWjsvtPb0XamC81MJTM=; b=SMPRNMFWPLRbGC
	uSTYnF6EdxKGFic2hxrr0k20BoODd1ibfdW0Mco0Zsq01FEI0tZowYgqVI95OSLCfVOt8WP7xv4Wx
	YCqCTyDOwH3ibbG42/ymp1iplQffBGj064x26gF7RFTMQZprYzIvBcnZLSg4phps+VFGyAVRlArFr
	O535ROu/ZQ7VgJ+XNg0q4Svu1cEzqsxeSXg4sKDeE595a6Cm8756paSX9TNGBZpySEBxxBR3smP73
	eGpmWAb2A98vd34BjcMVjf/n38r+FAcYUMGUNaSCnyDyzUa7nV8gZrJKLF04oDEhaMtlE/ahV0UUn
	WTTOD+FiT8FV1OYHxUpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDkH2-00008n-K5; Mon, 16 Mar 2020 07:34:56 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDkGs-00007Q-Kb; Mon, 16 Mar 2020 07:34:48 +0000
X-UUID: 0211b5b73e764e1e95c0c63e8017f36e-20200315
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=39ItGNth9VrE85n3VIY5Tt/fJgOiTIGshUGjxE8ZVBQ=; 
 b=Uf7xUX1OYTeqo0ZDks2kCHHHabbzKo4vDQ5WfDJCDtVuWtxZnRN48Gbs6PICta3J5M3lPxGJNXw2ZqI7j3/evDtsMWj7Vt1J9Yck2Uwff3qU3LnINZTmEpy6EZOUSucEggjq6SQz+poIVndYixI4vqcvNQ14EFEA9Rx7YY77AtM=;
X-UUID: 0211b5b73e764e1e95c0c63e8017f36e-20200315
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <roger.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2041479299; Sun, 15 Mar 2020 23:34:42 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Mar 2020 00:24:57 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Mar 2020 15:23:22 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 16 Mar 2020 15:21:41 +0800
From: Roger Lu <roger.lu@mediatek.com>
To: Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Nicolas Boichat <drinkcat@google.com>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v7 2/3] arm64: dts: mt8183: add svs device information
Date: Mon, 16 Mar 2020 15:23:16 +0800
Message-ID: <20200316072316.7156-3-roger.lu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200316072316.7156-1-roger.lu@mediatek.com>
References: <20200316072316.7156-1-roger.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_003446_685402_14416EC4 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 Angus Lin <Angus.Lin@mediatek.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Roger Lu <roger.lu@mediatek.com>,
 linux-kernel@vger.kernel.org, Xiaoqing Liu <Xiaoqing.Liu@mediatek.com>,
 YT Lee <yt.lee@mediatek.com>, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, HenryC Chen <HenryC.Chen@mediatek.com>,
 Charles Yang <Charles.Yang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add pmic/clock/irq/efuse setting in svs node

Signed-off-by: Roger Lu <roger.lu@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts | 16 ++++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 41 +++++++++++++++++++++
 2 files changed, 57 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index 1fb195c683c3..6ae1d9a1bcbf 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -231,6 +231,22 @@
 
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
index 433c62efab2d..78f3cd0940e7 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -457,6 +457,39 @@
 			status = "disabled";
 		};
 
+		svs: svs@1100b000 {
+			compatible = "mediatek,mt8183-svs";
+			reg = <0 0x1100b000 0 0x1000>;
+			interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_INFRA_THERM>;
+			clock-names = "main";
+			nvmem-cells = <&svs_calibration>,
+				      <&thermal_calibration>;
+			nvmem-cell-names = "svs-calibration-data",
+					   "calibration-data";
+
+			svs_cpu_little: svs-cpu-little {
+				compatible = "mediatek,mt8183-svs-cpu-little";
+				operating-points-v2 = <&cluster0_opp>;
+			};
+
+			svs_cpu_big: svs-cpu-big {
+				compatible = "mediatek,mt8183-svs-cpu-big";
+				operating-points-v2 = <&cluster1_opp>;
+			};
+
+			svs_cci: svs-cci {
+				compatible = "mediatek,mt8183-svs-cci";
+				operating-points-v2 = <&cci_opp>;
+			};
+
+			svs_gpu: svs-gpu {
+				compatible = "mediatek,mt8183-svs-gpu";
+				power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
+				operating-points-v2 = <&gpu_opp_table>;
+			};
+		};
+
 		i2c3: i2c@1100f000 {
 			compatible = "mediatek,mt8183-i2c";
 			reg = <0 0x1100f000 0 0x1000>,
@@ -648,6 +681,14 @@
 			compatible = "mediatek,mt8183-efuse",
 				     "mediatek,efuse";
 			reg = <0 0x11f10000 0 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			thermal_calibration: calib@180 {
+				reg = <0x180 0xc>;
+			};
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
