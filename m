Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD98B1AD615
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 08:30:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VWdqRbsDkH6C6EmlJVhlwaPl0eGN6dH4IoMcTAsMoj8=; b=i90
	mT3rK0SNOfSt3IIDfwSKiJrl44CbXfmekpMlwV/BJPLjeAgN96Mb7Dgg8+8oNcX65l2/9CDm11dEq
	wdBhcmtE7I16M/GMw9KhIQcphiSOR7988HnsnRfFPKZJeO298NvSelQYfNwx0M4k6liz77je0BJAJ
	Dfp9D0fc57JLlSbHJZTbg/miluOQHGa+z77Q34K1OxVKvwrdOiccfsQwG/59uK4OWpv82SkbQF9DI
	Ee561ndPkB/Jgi4NBVDIZvz4umAN2rVOUqJsmqFeKzpgXMWht/JG8zB/fiphLpvgLJXdEn2RwAkjA
	diXrqV9390/ckubeFa4Aty9GlSmvRIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPKWc-0003sm-4d; Fri, 17 Apr 2020 06:30:54 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPKWV-0003ry-Hr
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 06:30:49 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A29C91A10E4;
 Fri, 17 Apr 2020 08:30:43 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 946541A10EF;
 Fri, 17 Apr 2020 08:30:39 +0200 (CEST)
Received: from titan.ap.freescale.net (titan.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BDDE0402EB;
 Fri, 17 Apr 2020 14:30:33 +0800 (SGT)
From: Yuantian Tang <andy.tang@nxp.com>
To: shawnguo@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCH] arm64: dts: lx2160a: add more thermal zone support
Date: Fri, 17 Apr 2020 14:16:18 +0800
Message-Id: <20200417061618.48032-1-andy.tang@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_233047_872302_27774C39 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Yuantian Tang <andy.tang@nxp.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are 7 thermal zones in lx2160a soc. Add the
rest thermal zone node to enable them.
Also correct one of the values for tmu-calibration property.

Signed-off-by: Yuantian Tang <andy.tang@nxp.com>
---
 .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 130 +++++++++++++++++-
 1 file changed, 125 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index ae1b113ab162..abaeb587de48 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -436,19 +436,19 @@
 	};
 
 	thermal-zones {
-		core_thermal1: core-thermal1 {
+		cluster6-7 {
 			polling-delay-passive = <1000>;
 			polling-delay = <5000>;
 			thermal-sensors = <&tmu 0>;
 
 			trips {
-				core_cluster_alert: core-cluster-alert {
+				cluster6_7_alert: cluster6-7-alert {
 					temperature = <85000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
-				core_cluster_crit: core-cluster-crit {
+				cluster6_7_crit: cluster6-7-crit {
 					temperature = <95000>;
 					hysteresis = <2000>;
 					type = "critical";
@@ -457,7 +457,7 @@
 
 			cooling-maps {
 				map0 {
-					trip = <&core_cluster_alert>;
+					trip = <&cluster6_7_alert>;
 					cooling-device =
 						<&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
 						<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
@@ -478,6 +478,126 @@
 				};
 			};
 		};
+
+		ddr-cluster5 {
+			polling-delay-passive = <1000>;
+			polling-delay = <5000>;
+			thermal-sensors = <&tmu 1>;
+
+			trips {
+				ddr-cluster5-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				ddr-cluster5-crit {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+
+		wriop {
+			polling-delay-passive = <1000>;
+			polling-delay = <5000>;
+			thermal-sensors = <&tmu 2>;
+
+			trips {
+				wriop-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				wriop-crit {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+
+		dce-qbman-hsio2 {
+			polling-delay-passive = <1000>;
+			polling-delay = <5000>;
+			thermal-sensors = <&tmu 3>;
+
+			trips {
+				dce-qbman-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				dce-qbman-crit {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+
+		ccn-dpaa-tbu {
+			polling-delay-passive = <1000>;
+			polling-delay = <5000>;
+			thermal-sensors = <&tmu 4>;
+
+			trips {
+				ccn-dpaa-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				ccn-dpaa-crit {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cluster4-hsio3 {
+			polling-delay-passive = <1000>;
+			polling-delay = <5000>;
+			thermal-sensors = <&tmu 5>;
+
+			trips {
+				clust4-hsio3-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				clust4-hsio3-crit {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cluster2-3 {
+			polling-delay-passive = <1000>;
+			polling-delay = <5000>;
+			thermal-sensors = <&tmu 6>;
+
+			trips {
+				cluster2-3-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cluster2-3-crit {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
 	};
 
 	soc {
@@ -549,7 +669,7 @@
 				/* Calibration data group 1 */
 				<0x00000000 0x00000035
 				/* Calibration data group 2 */
-				0x00010001 0x00000154>;
+				0x00000001 0x00000154>;
 			little-endian;
 			#thermal-sensor-cells = <1>;
 		};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
