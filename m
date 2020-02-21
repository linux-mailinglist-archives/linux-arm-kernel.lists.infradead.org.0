Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 276AE166CCA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 03:19:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yayzkutfqcydwmtfsHY6+xwakbEYnK17bUWZxBECpW0=; b=m8d
	4dmPq7/oOD2h4GicMBfoS+HFTW+NbdBoFo9tV0N7GEjMTejHeDHx5ZoIKDzU59MOI42pB+wEz/lYu
	/txjDtUwMd9UawNh7oQbRLWSgsUXV01uCTkR4xHRH+FXM+tOuz5qEae3oQLJPAqo8bJUp2SaIKbMg
	AyDQI6/CloYPDqAVP80oDrA6Jof/JoNDOH2ejc5uBJwJfsZ/v+nhlv6x4thrWvjfgnNmt6g/ImhAb
	ZL3VydoYLuPOscRr4t/rJgJpMdVgKy5OUB4+OqPEZ0eEs4CvZzCA1Bv0t7XxNcQRVZdc8Gp0URqn6
	UySgZ4ThG3DK/MIpK8OCeAgDefLFdNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4xub-0008Py-07; Fri, 21 Feb 2020 02:19:29 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4xuR-0008PT-IG
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 02:19:21 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7F5EB1A6558;
 Fri, 21 Feb 2020 03:19:17 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 14D6E1A652F;
 Fri, 21 Feb 2020 03:19:12 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 87476402A0;
 Fri, 21 Feb 2020 10:19:05 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: imx: make wdog node name generic
Date: Fri, 21 Feb 2020 10:13:20 +0800
Message-Id: <1582251200-15562-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_181919_883367_429A5FE3 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

Node name should be generic, use "watchdog" instead of "wdog" for
wdog nodes.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6qdl.dtsi | 4 ++--
 arch/arm/boot/dts/imx6sl.dtsi  | 4 ++--
 arch/arm/boot/dts/imx6sx.dtsi  | 6 +++---
 arch/arm/boot/dts/imx6ul.dtsi  | 6 +++---
 arch/arm/boot/dts/imx7s.dtsi   | 8 ++++----
 5 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index 97c0a85..886ab81 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -669,14 +669,14 @@
 				status = "disabled";
 			};
 
-			wdog1: wdog@20bc000 {
+			wdog1: watchdog@20bc000 {
 				compatible = "fsl,imx6q-wdt", "fsl,imx21-wdt";
 				reg = <0x020bc000 0x4000>;
 				interrupts = <0 80 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6QDL_CLK_IPG>;
 			};
 
-			wdog2: wdog@20c0000 {
+			wdog2: watchdog@20c0000 {
 				compatible = "fsl,imx6q-wdt", "fsl,imx21-wdt";
 				reg = <0x020c0000 0x4000>;
 				interrupts = <0 81 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
index ea889f7..db626b2 100644
--- a/arch/arm/boot/dts/imx6sl.dtsi
+++ b/arch/arm/boot/dts/imx6sl.dtsi
@@ -499,14 +499,14 @@
 				status = "disabled";
 			};
 
-			wdog1: wdog@20bc000 {
+			wdog1: watchdog@20bc000 {
 				compatible = "fsl,imx6sl-wdt", "fsl,imx21-wdt";
 				reg = <0x020bc000 0x4000>;
 				interrupts = <0 80 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SL_CLK_IPG>;
 			};
 
-			wdog2: wdog@20c0000 {
+			wdog2: watchdog@20c0000 {
 				compatible = "fsl,imx6sl-wdt", "fsl,imx21-wdt";
 				reg = <0x020c0000 0x4000>;
 				interrupts = <0 81 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index 1198117..6db9ca09 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -567,14 +567,14 @@
 				status = "disabled";
 			};
 
-			wdog1: wdog@20bc000 {
+			wdog1: watchdog@20bc000 {
 				compatible = "fsl,imx6sx-wdt", "fsl,imx21-wdt";
 				reg = <0x020bc000 0x4000>;
 				interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SX_CLK_IPG>;
 			};
 
-			wdog2: wdog@20c0000 {
+			wdog2: watchdog@20c0000 {
 				compatible = "fsl,imx6sx-wdt", "fsl,imx21-wdt";
 				reg = <0x020c0000 0x4000>;
 				interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
@@ -1289,7 +1289,7 @@
 				status = "disabled";
 			};
 
-			wdog3: wdog@2288000 {
+			wdog3: watchdog@2288000 {
 				compatible = "fsl,imx6sx-wdt", "fsl,imx21-wdt";
 				reg = <0x02288000 0x4000>;
 				interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index 30cce35..e1807e9 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -531,14 +531,14 @@
 				status = "disabled";
 			};
 
-			wdog1: wdog@20bc000 {
+			wdog1: watchdog@20bc000 {
 				compatible = "fsl,imx6ul-wdt", "fsl,imx21-wdt";
 				reg = <0x020bc000 0x4000>;
 				interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6UL_CLK_WDOG1>;
 			};
 
-			wdog2: wdog@20c0000 {
+			wdog2: watchdog@20c0000 {
 				compatible = "fsl,imx6ul-wdt", "fsl,imx21-wdt";
 				reg = <0x020c0000 0x4000>;
 				interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
@@ -1007,7 +1007,7 @@
 				status = "disabled";
 			};
 
-			wdog3: wdog@21e4000 {
+			wdog3: watchdog@21e4000 {
 				compatible = "fsl,imx6ul-wdt", "fsl,imx21-wdt";
 				reg = <0x021e4000 0x4000>;
 				interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index 1ac5045..196bbd6 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -406,14 +406,14 @@
 				gpio-ranges = <&iomuxc 0 139 16>;
 			};
 
-			wdog1: wdog@30280000 {
+			wdog1: watchdog@30280000 {
 				compatible = "fsl,imx7d-wdt", "fsl,imx21-wdt";
 				reg = <0x30280000 0x10000>;
 				interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX7D_WDOG1_ROOT_CLK>;
 			};
 
-			wdog2: wdog@30290000 {
+			wdog2: watchdog@30290000 {
 				compatible = "fsl,imx7d-wdt", "fsl,imx21-wdt";
 				reg = <0x30290000 0x10000>;
 				interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
@@ -421,7 +421,7 @@
 				status = "disabled";
 			};
 
-			wdog3: wdog@302a0000 {
+			wdog3: watchdog@302a0000 {
 				compatible = "fsl,imx7d-wdt", "fsl,imx21-wdt";
 				reg = <0x302a0000 0x10000>;
 				interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
@@ -429,7 +429,7 @@
 				status = "disabled";
 			};
 
-			wdog4: wdog@302b0000 {
+			wdog4: watchdog@302b0000 {
 				compatible = "fsl,imx7d-wdt", "fsl,imx21-wdt";
 				reg = <0x302b0000 0x10000>;
 				interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
