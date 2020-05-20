Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A29DF1DAABD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 08:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VuZN2OmeVhi5gAkOBTxOn1dz1+AFs+VnxiPO1SkBqpc=; b=l7/
	0V6iUiK8EBEHRJoagFEPmxzdV0UcRLWaeAk2LTnr67v1NAnyfoklO4Iay9ibXioFaU1DQOYbdkvRM
	+zLV7LBfb7WD4aT+aK/7pYz/DxKo29/rpIU4/Dcg+t3bcD+mvbl8DM1GU6etz9CKBR5HMvjw4guQm
	53PPV839WiXKvEF2Xiuy5SPtDKz37gB5B724O6B+QE2WWbSYKVtbfMGPvuE0Zxy6QuudYpZWhayY+
	moB1YdtrvP6hY5Jj2/Z/EY4s9xl8iVeTnSo2GBW9Xv7NUKHl1c3preK3B1gCZPlhSsh5svVuZPwPj
	R5nzV/94iAYMjXhYtdOj0gQ1ndHpQNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbIOp-0006M2-1l; Wed, 20 May 2020 06:40:19 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbIOd-0004sj-EF
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 06:40:09 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 446571A02DF;
 Wed, 20 May 2020 08:40:04 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4F71C1A02D9;
 Wed, 20 May 2020 08:40:00 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 181F4402B3;
 Wed, 20 May 2020 14:39:54 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: imx: Make tempmon node as child of anatop node
Date: Wed, 20 May 2020 14:30:16 +0800
Message-Id: <1589956216-22499-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_234007_785163_01B96F73 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX6/7 SoCs' temperature sensor is inside anatop module from HW
perspective, so it should be a child node of anatop.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6qdl.dtsi | 22 +++++++++++-----------
 arch/arm/boot/dts/imx6sl.dtsi  | 20 ++++++++++----------
 arch/arm/boot/dts/imx6sll.dtsi | 20 ++++++++++----------
 arch/arm/boot/dts/imx6sx.dtsi  | 20 ++++++++++----------
 arch/arm/boot/dts/imx6ul.dtsi  | 20 ++++++++++----------
 arch/arm/boot/dts/imx7s.dtsi   | 20 ++++++++++----------
 6 files changed, 61 insertions(+), 61 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index 39d4afd..43d44d5 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -69,17 +69,6 @@
 		};
 	};
 
-	tempmon: tempmon {
-		compatible = "fsl,imx6q-tempmon";
-		interrupt-parent = <&gpc>;
-		interrupts = <0 49 IRQ_TYPE_LEVEL_HIGH>;
-		fsl,tempmon = <&anatop>;
-		nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
-		nvmem-cell-names = "calib", "temp_grade";
-		clocks = <&clks IMX6QDL_CLK_PLL3_USB_OTG>;
-		#thermal-sensor-cells = <0>;
-	};
-
 	ldb: ldb {
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -795,6 +784,17 @@
 					anatop-min-voltage = <725000>;
 					anatop-max-voltage = <1450000>;
 				};
+
+				tempmon: tempmon {
+					compatible = "fsl,imx6q-tempmon";
+					interrupt-parent = <&gpc>;
+					interrupts = <0 49 IRQ_TYPE_LEVEL_HIGH>;
+					fsl,tempmon = <&anatop>;
+					nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
+					nvmem-cell-names = "calib", "temp_grade";
+					clocks = <&clks IMX6QDL_CLK_PLL3_USB_OTG>;
+					#thermal-sensor-cells = <0>;
+				};
 			};
 
 			usbphy1: usbphy@20c9000 {
diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
index 911d8cf..d8efc0a 100644
--- a/arch/arm/boot/dts/imx6sl.dtsi
+++ b/arch/arm/boot/dts/imx6sl.dtsi
@@ -93,16 +93,6 @@
 		};
 	};
 
-	tempmon: tempmon {
-		compatible = "fsl,imx6q-tempmon";
-		interrupts = <0 49 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-parent = <&gpc>;
-		fsl,tempmon = <&anatop>;
-		nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
-		nvmem-cell-names = "calib", "temp_grade";
-		clocks = <&clks IMX6SL_CLK_PLL3_USB_OTG>;
-	};
-
 	pmu {
 		compatible = "arm,cortex-a9-pmu";
 		interrupt-parent = <&gpc>;
@@ -628,6 +618,16 @@
 					anatop-min-voltage = <725000>;
 					anatop-max-voltage = <1450000>;
 				};
+
+				tempmon: tempmon {
+					compatible = "fsl,imx6q-tempmon";
+					interrupts = <0 49 IRQ_TYPE_LEVEL_HIGH>;
+					interrupt-parent = <&gpc>;
+					fsl,tempmon = <&anatop>;
+					nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
+					nvmem-cell-names = "calib", "temp_grade";
+					clocks = <&clks IMX6SL_CLK_PLL3_USB_OTG>;
+				};
 			};
 
 			usbphy1: usbphy@20c9000 {
diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll.dtsi
index edd3abb..bf7f048 100644
--- a/arch/arm/boot/dts/imx6sll.dtsi
+++ b/arch/arm/boot/dts/imx6sll.dtsi
@@ -105,16 +105,6 @@
 		clock-output-names = "ipp_di1";
 	};
 
-	tempmon: temperature-sensor {
-		compatible = "fsl,imx6sll-tempmon", "fsl,imx6sx-tempmon";
-		interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-parent = <&gpc>;
-		fsl,tempmon = <&anatop>;
-		nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
-		nvmem-cell-names = "calib", "temp_grade";
-		clocks = <&clks IMX6SLL_CLK_PLL3_USB_OTG>;
-	};
-
 	soc {
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -531,6 +521,16 @@
 					anatop-max-voltage = <3400000>;
 					anatop-enable-bit = <0>;
 				};
+
+				tempmon: temperature-sensor {
+					compatible = "fsl,imx6sll-tempmon", "fsl,imx6sx-tempmon";
+					interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
+					interrupt-parent = <&gpc>;
+					fsl,tempmon = <&anatop>;
+					nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
+					nvmem-cell-names = "calib", "temp_grade";
+					clocks = <&clks IMX6SLL_CLK_PLL3_USB_OTG>;
+				};
 			};
 
 			usbphy1: usb-phy@20c9000 {
diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index e031337..8c4473b 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -134,16 +134,6 @@
 		clock-output-names = "anaclk2";
 	};
 
-	tempmon: tempmon {
-		compatible = "fsl,imx6sx-tempmon", "fsl,imx6q-tempmon";
-		interrupt-parent = <&gpc>;
-		interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
-		fsl,tempmon = <&anatop>;
-		nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
-		nvmem-cell-names = "calib", "temp_grade";
-		clocks = <&clks IMX6SX_CLK_PLL3_USB_OTG>;
-	};
-
 	pmu {
 		compatible = "arm,cortex-a9-pmu";
 		interrupt-parent = <&gpc>;
@@ -696,6 +686,16 @@
 					anatop-min-voltage = <725000>;
 					anatop-max-voltage = <1450000>;
 				};
+
+				tempmon: tempmon {
+					compatible = "fsl,imx6sx-tempmon", "fsl,imx6q-tempmon";
+					interrupt-parent = <&gpc>;
+					interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
+					fsl,tempmon = <&anatop>;
+					nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
+					nvmem-cell-names = "calib", "temp_grade";
+					clocks = <&clks IMX6SX_CLK_PLL3_USB_OTG>;
+				};
 			};
 
 			usbphy1: usbphy@20c9000 {
diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index 35e7301..505fd4f 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -131,16 +131,6 @@
 		clock-output-names = "ipp_di1";
 	};
 
-	tempmon: tempmon {
-		compatible = "fsl,imx6ul-tempmon", "fsl,imx6sx-tempmon";
-		interrupt-parent = <&gpc>;
-		interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
-		fsl,tempmon = <&anatop>;
-		nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
-		nvmem-cell-names = "calib", "temp_grade";
-		clocks = <&clks IMX6UL_CLK_PLL3_USB_OTG>;
-	};
-
 	pmu {
 		compatible = "arm,cortex-a7-pmu";
 		interrupt-parent = <&gpc>;
@@ -611,6 +601,16 @@
 					anatop-min-voltage = <725000>;
 					anatop-max-voltage = <1450000>;
 				};
+
+				tempmon: tempmon {
+					compatible = "fsl,imx6ul-tempmon", "fsl,imx6sx-tempmon";
+					interrupt-parent = <&gpc>;
+					interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
+					fsl,tempmon = <&anatop>;
+					nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
+					nvmem-cell-names = "calib", "temp_grade";
+					clocks = <&clks IMX6UL_CLK_PLL3_USB_OTG>;
+				};
 			};
 
 			usbphy1: usbphy@20c9000 {
diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index 8bac491..3904558 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -147,16 +147,6 @@
 		};
 	};
 
-	tempmon: tempmon {
-		compatible = "fsl,imx7d-tempmon";
-		interrupt-parent = <&gpc>;
-		interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
-		fsl,tempmon = <&anatop>;
-		nvmem-cells = <&tempmon_calib>,	<&fuse_grade>;
-		nvmem-cell-names = "calib", "temp_grade";
-		clocks = <&clks IMX7D_PLL_SYS_MAIN_CLK>;
-	};
-
 	timer {
 		compatible = "arm,armv7-timer";
 		interrupt-parent = <&intc>;
@@ -586,6 +576,16 @@
 					anatop-max-voltage = <1300000>;
 					anatop-enable-bit = <0>;
 				};
+
+				tempmon: tempmon {
+					compatible = "fsl,imx7d-tempmon";
+					interrupt-parent = <&gpc>;
+					interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
+					fsl,tempmon = <&anatop>;
+					nvmem-cells = <&tempmon_calib>,	<&fuse_grade>;
+					nvmem-cell-names = "calib", "temp_grade";
+					clocks = <&clks IMX7D_PLL_SYS_MAIN_CLK>;
+				};
 			};
 
 			snvs: snvs@30370000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
