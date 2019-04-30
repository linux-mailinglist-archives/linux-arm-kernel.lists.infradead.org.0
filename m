Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8EAF56A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 13:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hfq6rAz5D2i+v5htnOXRaItbTLISHFCTDI8bqWkxfhI=; b=K47M4fKef7DmJa
	H163LzsdIUdr6GXofA96/rzLvEYtsgDuhaNyIV+2wrEfM4Obqhm7hgkz4T5BAICUgdFa1eBXLOHtG
	8bCdlEYxPp1r7mitnLrCmw+Bn4GZhGAYTU7lgSV7jzK1ldvi3uW+t49XC71lznPYZd7pjwUrwPbaU
	X1XlbVawApcGE9OGFUQz86SyfpyO0zHWZKrR/TeXVMnn1AfY/kMEUmp+hbD7lLisJ1ijyxiOS82FB
	XfBNrlJySC2t7ZyRNWcvdE5i4IjW07fxYPy7UwuC263LFvmquPz7bnCakv+0uNDLnpVr5vUotbfFU
	SCXft8qBxDj6zqnLNd0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLQpz-0001cW-Vw; Tue, 30 Apr 2019 11:22:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLQpU-00014z-QE; Tue, 30 Apr 2019 11:21:50 +0000
X-UUID: 6a2f285fdea44fdcac04c0197e50ad13-20190430
X-UUID: 6a2f285fdea44fdcac04c0197e50ad13-20190430
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <roger.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1436152873; Tue, 30 Apr 2019 03:21:38 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 04:21:37 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 19:21:29 +0800
Received: from mtkslt207.mediatek.inc (10.21.15.94) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 30 Apr 2019 19:21:29 +0800
From: Roger Lu <roger.lu@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Viresh Kumar <vireshk@kernel.org>, Stephen Boyd
 <sboyd@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>
Subject: [RFC v1 1/3] dt-bindings: soc: add mtk svs dt-bindings
Date: Tue, 30 Apr 2019 19:20:10 +0800
Message-ID: <20190430112012.4514-2-roger.lu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190430112012.4514-1-roger.lu@mediatek.com>
References: <20190430112012.4514-1-roger.lu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: E98BCA2A6482E39BD36EDBBB3E007502447FBA8A75806DE18C05AF44705A47AC2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_042145_392990_9FD97E22 
X-CRM114-Status: GOOD (  11.15  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org, Kevin
 Hilman <khilman@kernel.org>, Roger Lu <roger.lu@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document the binding for enabling mtk svs on MediaTek SoC.

Signed-off-by: Roger Lu <roger.lu@mediatek.com>
---
 .../devicetree/bindings/power/mtk-svs.txt     | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/mtk-svs.txt

diff --git a/Documentation/devicetree/bindings/power/mtk-svs.txt b/Documentation/devicetree/bindings/power/mtk-svs.txt
new file mode 100644
index 000000000000..355329db74ba
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/mtk-svs.txt
@@ -0,0 +1,70 @@
+* Mediatek Smart Voltage Scaling (MTK SVS)
+
+This describes the device tree binding for the MTK SVS controller
+which helps provide the optimized CPU/GPU/CCI voltages. This device also
+needs thermal data to calculate thermal slope for accurately compensate
+the voltages when temperature change.
+
+Required properties:
+- compatible:
+  - "mediatek,mt8183-svs" : For MT8183 family of SoCs
+- reg: Address range of the MTK SVS controller.
+- interrupts: IRQ for the MTK SVS controller.
+- clocks, clock-names: Clocks needed for the svs controller. required
+                       clocks are:
+		       "main_clk": Main clock needed for register access
+- nvmem-cells: Phandle to the calibration data provided by a nvmem device.
+- nvmem-cell-names: Should be "svs-calibration-data" and "calibration-data"
+- svs_xxx: Phandle of svs_bank device for controlling corresponding opp
+           table and power-domains.
+- vxxx-supply: Phandle to each regulator. vxxx can be "vcpu_little",
+	       "vcpu_big", "vcci" and "vgpu".
+
+Example:
+
+	svs: svs@1100b000 {
+		compatible = "mediatek,mt8183-svs";
+		reg = <0 0x1100b000 0 0x1000>;
+		interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW 0>;
+		clocks = <&infracfg CLK_INFRA_THERM>;
+		clock-names = "main_clk";
+		nvmem-cells = <&svs_calibration>, <&thermal_calibration>;
+		nvmem-cell-names = "svs-calibration-data", "calibration-data";
+
+		svs_cpu_little: svs_cpu_little {
+			compatible = "mediatek,mt8183-svs-cpu-little";
+			operating-points-v2 = <&cluster0_opp>;
+		};
+
+		svs_cpu_big: svs_cpu_big {
+			compatible = "mediatek,mt8183-svs-cpu-big";
+			operating-points-v2 = <&cluster1_opp>;
+		};
+
+		svs_cci: svs_cci {
+			compatible = "mediatek,mt8183-svs-cci";
+			operating-points-v2 = <&cluster2_opp>;
+		};
+
+		svs_gpu: svs_gpu {
+			compatible = "mediatek,mt8183-svs-gpu";
+			power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
+			operating-points-v2 = <&gpu_opp_table>;
+		};
+	};
+
+	&svs_cpu_little {
+		vcpu_little-supply = <&mt6358_vproc12_reg>;
+	};
+
+	&svs_cpu_big {
+		vcpu_big-supply = <&mt6358_vproc11_reg>;
+	};
+
+	&svs_cci {
+		vcci-supply = <&mt6358_vproc12_reg>;
+	};
+
+	&svs_gpu {
+		vgpu-spply = <&mt6358_vgpu_reg>;
+	};
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
