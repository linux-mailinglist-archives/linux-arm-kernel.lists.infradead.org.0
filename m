Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BB835A8E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 12:38:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MCmoqFR4ARpGP4zBIeYUJk+/ek31eFAQNcbd91NzBAo=; b=UB+Tbb4R60fJmhFMToAlh7Y7I6
	b/bNAHuHcs5icXubsj5bVbJcQ2Gk0BuDJxWVEgjqIcjdWJFzYXM2CfpUD/JsFyBpuMG5876BaZ4Ko
	SB5PA9cRhQ3trqORkDFmSjCcGox47KJiH7RLzndbOtC3AhgeB8HtGFm8+WVTX2LZYS0Lpak41kysG
	V3nStqT+51LstSsx/a9dBWoUGLVgoabZg/fx/J6dBB451xVIjPRSFY3X7tbnwC9I1BLHcn2PVFO/X
	wa9AWDFp2d68UmnOZlXTOgQc34r+hMkLQpS//ywYqAF9xfIbj1p2cYXgQ9sFe8qWwRlf/bBrWKDhT
	X0tItHLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYTIw-00031J-EJ; Wed, 05 Jun 2019 10:38:02 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYTIC-00029b-FC
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 10:37:17 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4437820077E;
 Wed,  5 Jun 2019 12:37:15 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 37A56200787;
 Wed,  5 Jun 2019 12:37:15 +0200 (CEST)
Received: from jana.ea.freescale.net (gw_auto.ea.freescale.net [10.171.94.100])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id B478A205FA;
 Wed,  5 Jun 2019 12:37:14 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 4/5] ARM: dts: imx7d: Update cpufreq OPP table
Date: Wed,  5 Jun 2019 13:37:08 +0300
Message-Id: <be47ecfba98b4adacd39e4a6a85897cd4ee0ec88.1559730963.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559730963.git.leonard.crestez@nxp.com>
References: <cover.1559730963.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1559730963.git.leonard.crestez@nxp.com>
References: <cover.1559730963.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_033716_654528_DCBC396A 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, linux-pm@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to latest docs imx7d chips can go from 800 to 1200 mhz.
Maximum frequency is determined from two speed grading bits present in
OCOTP fuses at same location as other imx chips.

Also update to "typical" voltages from latest datasheet, 25mv higher
than current dts.

All imx7s parts are still fixed at 800mhz

Based on:
* IMX7DCEC Rev. 6, 03/2019
* IMX7SCEC Rev. 6, 03/2019
* IMX7DRM Rev. 1, 01/2018 Page 1102

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm/boot/dts/imx7d.dtsi | 16 +++++++++++++---
 arch/arm/boot/dts/imx7s.dtsi |  4 ++++
 2 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx7d.dtsi b/arch/arm/boot/dts/imx7d.dtsi
index f33b560821b8..42528d2812a2 100644
--- a/arch/arm/boot/dts/imx7d.dtsi
+++ b/arch/arm/boot/dts/imx7d.dtsi
@@ -10,10 +10,12 @@
 	cpus {
 		cpu0: cpu@0 {
 			clock-frequency = <996000000>;
 			operating-points-v2 = <&cpu0_opp_table>;
 			#cooling-cells = <2>;
+			nvmem-cells = <&cpu_speed_grade>;
+			nvmem-cell-names = "speed_grade";
 		};
 
 		cpu1: cpu@1 {
 			compatible = "arm,cortex-a7";
 			device_type = "cpu";
@@ -37,19 +39,27 @@
 		compatible = "operating-points-v2";
 		opp-shared;
 
 		opp-792000000 {
 			opp-hz = /bits/ 64 <792000000>;
-			opp-microvolt = <975000>;
+			opp-microvolt = <1000000>;
 			clock-latency-ns = <150000>;
+			opp-supported-hw = <0xf>, <0xf>;
 		};
 
 		opp-996000000 {
 			opp-hz = /bits/ 64 <996000000>;
-			opp-microvolt = <1075000>;
+			opp-microvolt = <1100000>;
 			clock-latency-ns = <150000>;
-			opp-suspend;
+			opp-supported-hw = <0xc>, <0xf>;
+		};
+
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <1225000>;
+			clock-latency-ns = <150000>;
+			opp-supported-hw = <0x8>, <0xf>;
 		};
 	};
 
 	usbphynop2: usbphynop2 {
 		compatible = "usb-nop-xceiv";
diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index d8b4eb67146d..5b8292670b4b 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -549,10 +549,14 @@
 				};
 
 				tempmon_temp_grade: temp-grade@10 {
 					reg = <0x10 0x4>;
 				};
+
+				cpu_speed_grade: speed-grade@10 {
+					reg = <0x10 0x4>;
+				};
 			};
 
 			anatop: anatop@30360000 {
 				compatible = "fsl,imx7d-anatop", "fsl,imx6q-anatop",
 					"syscon", "simple-bus";
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
