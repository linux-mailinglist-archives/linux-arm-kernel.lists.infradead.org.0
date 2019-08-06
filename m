Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE4D82B34
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 07:45:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RKij7lDuGgc25r8Sm6497Kbl436Zb2zuDYP6PLbTtZ4=; b=ssb
	TQLzH+M0MHWnH66Au5QtYZRguGlvugU5//bT79B9lh+HBfZUAwLtskpNS9KxukZJeeEgItGE3PNxP
	GPV6fuTrEAMQNtIqb/lvF7avvxlTaLEdxQhQ3W49MAjJa7iGlylJOC6jct1h/P1brwNG6wk33XzoT
	YOW+lNKMt/v5FK0snSzHxRYRDeOmt8+28atltdrlfishAwJhOkrfZYEwznVHvpz1uQshikkdhXROp
	PRUcOYtHj4cCtfkPIbjoA9ZiJGIpKM95FGW1e2FrT8Bz6RlOlfkrrP419gYrHQZp393KGGGtElZIw
	Nu3krMif73ve5BcwjprxTWInOgypW4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1husHN-0005GG-Gq; Tue, 06 Aug 2019 05:45:01 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1husHE-0005Fa-8m
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 05:44:53 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5D0FF1A01B4;
 Tue,  6 Aug 2019 07:44:46 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A86651A00C1;
 Tue,  6 Aug 2019 07:44:41 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id EE818402B5;
 Tue,  6 Aug 2019 13:44:35 +0800 (SGT)
From: Yuantian Tang <andy.tang@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH v2] arm64: dts: ls1028a: Add Thermal Monitor Unit node
Date: Tue,  6 Aug 2019 13:35:07 +0800
Message-Id: <20190806053507.37069-1-andy.tang@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_224452_587001_EEAA7366 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Yuantian Tang <andy.tang@nxp.com>, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Thermal Monitoring Unit (TMU) monitors and reports the
temperature from 2 remote temperature measurement sites
located on ls1028a chip.
Add TMU dts node to enable this feature.

Signed-off-by: Yuantian Tang <andy.tang@nxp.com>
Acked-by: Eduardo Valentin <edubezval@gmail.com>
---
v2:
	- remove multiple sensors support

 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 85 +++++++++++++++++++
 1 file changed, 85 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index aef5b06a98d5..20d7e7db5dcb 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -29,6 +29,7 @@
 			clocks = <&clockgen 1 0>;
 			next-level-cache = <&l2>;
 			cpu-idle-states = <&CPU_PW20>;
+			#cooling-cells = <2>;
 		};
 
 		cpu1: cpu@1 {
@@ -39,6 +40,7 @@
 			clocks = <&clockgen 1 0>;
 			next-level-cache = <&l2>;
 			cpu-idle-states = <&CPU_PW20>;
+			#cooling-cells = <2>;
 		};
 
 		l2: l2-cache {
@@ -503,6 +505,89 @@
 			status = "disabled";
 		};
 
+		tmu: tmu@1f00000 {
+			compatible = "fsl,qoriq-tmu";
+			reg = <0x0 0x1f80000 0x0 0x10000>;
+			interrupts = <0 23 0x4>;
+			fsl,tmu-range = <0xb0000 0xa0026 0x80048 0x70061>;
+			fsl,tmu-calibration = <0x00000000 0x00000024
+					       0x00000001 0x0000002b
+					       0x00000002 0x00000031
+					       0x00000003 0x00000038
+					       0x00000004 0x0000003f
+					       0x00000005 0x00000045
+					       0x00000006 0x0000004c
+					       0x00000007 0x00000053
+					       0x00000008 0x00000059
+					       0x00000009 0x00000060
+					       0x0000000a 0x00000066
+					       0x0000000b 0x0000006d
+
+					       0x00010000 0x0000001c
+					       0x00010001 0x00000024
+					       0x00010002 0x0000002c
+					       0x00010003 0x00000035
+					       0x00010004 0x0000003d
+					       0x00010005 0x00000045
+					       0x00010006 0x0000004d
+					       0x00010007 0x00000045
+					       0x00010008 0x0000005e
+					       0x00010009 0x00000066
+					       0x0001000a 0x0000006e
+
+					       0x00020000 0x00000018
+					       0x00020001 0x00000022
+					       0x00020002 0x0000002d
+					       0x00020003 0x00000038
+					       0x00020004 0x00000043
+					       0x00020005 0x0000004d
+					       0x00020006 0x00000058
+					       0x00020007 0x00000063
+					       0x00020008 0x0000006e
+
+					       0x00030000 0x00000010
+					       0x00030001 0x0000001c
+					       0x00030002 0x00000029
+					       0x00030003 0x00000036
+					       0x00030004 0x00000042
+					       0x00030005 0x0000004f
+					       0x00030006 0x0000005b
+					       0x00030007 0x00000068>;
+			little-endian;
+			#thermal-sensor-cells = <1>;
+		};
+
+		thermal-zones {
+			core-cluster {
+				polling-delay-passive = <1000>;
+				polling-delay = <5000>;
+				thermal-sensors = <&tmu 0>;
+
+				trips {
+					core_cluster_alert: core-cluster-alert {
+						temperature = <85000>;
+						hysteresis = <2000>;
+						type = "passive";
+					};
+
+					core_cluster_crit: core-cluster-crit {
+						temperature = <95000>;
+						hysteresis = <2000>;
+						type = "critical";
+					};
+				};
+
+				cooling-maps {
+					map0 {
+						trip = <&core_cluster_alert>;
+						cooling-device =
+							<&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+					};
+				};
+			};
+		};
+
 		pcie@1f0000000 { /* Integrated Endpoint Root Complex */
 			compatible = "pci-host-ecam-generic";
 			reg = <0x01 0xf0000000 0x0 0x100000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
