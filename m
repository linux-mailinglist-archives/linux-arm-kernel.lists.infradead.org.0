Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3B6D85D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 04:18:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YHezBOATR5vC/caeE+5WK9d2U2jE0DPvB2nk5js3raw=; b=geertU0BJqe2qW3ph/vNNmLzaG
	k6DUEe6tsyC1XaAN1diTJeahzX0fXB41vLIjbU1q0ygwPnIh6d7C+NJ/p3EiXv8ZihVpYFrXUEh5G
	O1555TwSajHrbRdtnDJJlkZFincK8JIZRQ35JQnu/xxWPz8P038Kb00H9OJbQdTUtOQ1KzvcYvAMR
	GRfVBmwxbCkhhdlXKcQYclM189IjvgkOtEnZ0Fw4pzir/H/23a4un9QFqITfC7Lk4zIOumaPU55oe
	CsI2bZpA3ytmIDiPyUY84KBpQSJmgwEs6RMh/AZi28pSHn57E6Rj5Q3BMfXsRqG2MN9S13zGLbwE8
	CPLHptUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKYtA-0003bK-MP; Wed, 16 Oct 2019 02:18:12 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKYsa-0003NG-EQ
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 02:17:38 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A22381A04D8;
 Wed, 16 Oct 2019 04:17:32 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 298DD1A02E0;
 Wed, 16 Oct 2019 04:17:15 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 88C7F40305;
 Wed, 16 Oct 2019 10:17:01 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 jun.li@nxp.com, ping.bai@nxp.com, daniel.baluta@nxp.com,
 leonard.crestez@nxp.com, daniel.lezcano@linaro.org, l.stach@pengutronix.de,
 ccaione@baylibre.com, abel.vesa@nxp.com, andrew.smirnov@gmail.com,
 jon@solid-run.com, baruch@tkos.co.il, angus@akkea.ca, pavel@ucw.cz,
 agx@sigxcpu.org, troy.kisky@boundarydevices.com,
 gary.bisson@boundarydevices.com, dafna.hirschfeld@collabora.com,
 richard.hu@technexion.com, andradanciu1997@gmail.com,
 manivannan.sadhasivam@linaro.org, aisheng.dong@nxp.com, peng.fan@nxp.com,
 fugang.duan@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] arm64: dts: imx8mq: Move usdhc clocks assignment to board
 DT
Date: Wed, 16 Oct 2019 10:14:24 +0800
Message-Id: <1571192067-19600-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571192067-19600-1-git-send-email-Anson.Huang@nxp.com>
References: <1571192067-19600-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_191736_758970_B25D1A2B 
X-CRM114-Status: UNSURE (   8.76  )
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

usdhc's clock rate is different according to different devices
connected, so clock rate assignment should be placed in board
DT according to different devices connected on each usdhc port.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq-evk.dts                | 4 ++++
 arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts | 2 ++
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts     | 4 ++++
 arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dts           | 2 ++
 arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts            | 4 ++++
 arch/arm64/boot/dts/freescale/imx8mq-sr-som.dtsi            | 2 ++
 arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi         | 4 ++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi                   | 2 --
 8 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
index 4e0a281..40fa390 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
@@ -278,6 +278,8 @@
 };
 
 &usdhc1 {
+	assigned-clocks = <&clk IMX8MQ_CLK_USDHC1>;
+	assigned-clock-rates = <400000000>;
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc1>;
 	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
@@ -291,6 +293,8 @@
 };
 
 &usdhc2 {
+	assigned-clocks = <&clk IMX8MQ_CLK_USDHC2>;
+	assigned-clock-rates = <200000000>;
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc2>;
 	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts b/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts
index f52e872..b8cb20c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts
@@ -110,6 +110,8 @@
 };
 
 &usdhc2 {
+	assigned-clocks = <&clk IMX8MQ_CLK_USDHC2>;
+	assigned-clock-rates = <200000000>;
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
 	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 683a110..2a759df 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -780,6 +780,8 @@
 };
 
 &usdhc1 {
+	assigned-clocks = <&clk IMX8MQ_CLK_USDHC1>;
+	assigned-clock-rates = <400000000>;
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc1>;
 	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
@@ -790,6 +792,8 @@
 };
 
 &usdhc2 {
+	assigned-clocks = <&clk IMX8MQ_CLK_USDHC2>;
+	assigned-clock-rates = <200000000>;
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc2>;
 	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dts b/arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dts
index c832bf0..81d2692 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dts
@@ -191,6 +191,8 @@
 };
 
 &usdhc1 {
+	assigned-clocks = <&clk IMX8MQ_CLK_USDHC1>;
+	assigned-clock-rates = <400000000>;
 	bus-width = <8>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc1>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts b/arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts
index 8a4aee2..59da96b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts
@@ -207,6 +207,8 @@
 };
 
 &usdhc1 {
+	assigned-clocks = <&clk IMX8MQ_CLK_USDHC1>;
+	assigned-clock-rates = <400000000>;
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc1>;
 	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
@@ -217,6 +219,8 @@
 };
 
 &usdhc2 {
+	assigned-clocks = <&clk IMX8MQ_CLK_USDHC2>;
+	assigned-clock-rates = <200000000>;
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
 	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-sr-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-sr-som.dtsi
index d7f03c6..3dc44114 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-sr-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-sr-som.dtsi
@@ -170,6 +170,8 @@
 };
 
 &usdhc1 {
+	assigned-clocks = <&clk IMX8MQ_CLK_USDHC1>;
+	assigned-clock-rates = <400000000>;
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc1>;
 	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
index 087b5b6..333c4e2 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
@@ -486,6 +486,8 @@
 };
 
 &usdhc1 {
+	assigned-clocks = <&clk IMX8MQ_CLK_USDHC1>;
+	assigned-clock-rates = <400000000>;
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc1>;
 	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
@@ -499,6 +501,8 @@
 };
 
 &usdhc2 {
+	assigned-clocks = <&clk IMX8MQ_CLK_USDHC2>;
+	assigned-clock-rates = <200000000>;
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc2>;
 	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index a6d57fb..7f93194 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -868,8 +868,6 @@
 				         <&clk IMX8MQ_CLK_NAND_USDHC_BUS>,
 				         <&clk IMX8MQ_CLK_USDHC1_ROOT>;
 				clock-names = "ipg", "ahb", "per";
-				assigned-clocks = <&clk IMX8MQ_CLK_USDHC1>;
-				assigned-clock-rates = <400000000>;
 				fsl,tuning-start-tap = <20>;
 				fsl,tuning-step = <2>;
 				bus-width = <4>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
