Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B607AFF9AD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 13:48:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=acboWwqtHRzxGxLgDu3dU9sHAkq62sAfMwWr/JR1Nm4=; b=DHBncus1KKvPbKZCJM1adMmAko
	XhV+hihHS+P/fColSWaeZHkBMu9OlEiUQdDDDIZULuF67v+uroLl8XrsAX5YoVG0b9qi1Cp9448m+
	Kh6f0vEW2pnt7V3iDUz5RcOObA/0SxIbQ5jhJcTcQltASMQOzm7q1Fw8EMlAM8cGXv58dJN2Gy9VU
	P9RvR7g5t4QWdZCkqpOrgi8K+uh0cYbAdC3G+jwf9fwefdSROefRJ6uFuuLTg5MZXzMWKpn13rCA2
	pJJcL8RUlU0N+sY9GOM0zRl8DwDxsYvp2dMSabHHiQY6pbwYvhzotIsa7YN8jVuC3BZ+EZWqmsSIn
	3Tzl0HSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWJz0-0000lk-02; Sun, 17 Nov 2019 12:48:50 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWJwQ-0007HW-G1
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 12:46:16 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C52322007F0;
 Sun, 17 Nov 2019 13:46:08 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1E6962007E9;
 Sun, 17 Nov 2019 13:46:04 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 89B00402A7;
 Sun, 17 Nov 2019 20:45:58 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH RESEND v3 07/15] arm64: dts: imx8: switch to two cell scu
 clock binding
Date: Sun, 17 Nov 2019 20:43:47 +0800
Message-Id: <1573994635-14479-8-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573994635-14479-1-git-send-email-aisheng.dong@nxp.com>
References: <1573994635-14479-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_044611_061363_F18EA5B2 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, sboyd@kernel.org,
 mturquette@baylibre.com, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, shawnguo@kernel.org, linux-clk@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

switch to two cell scu clock binding

Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v2->v3:
 * no changes except rebase
v1->v2:
 * split from lpcg binding changes
---
 .../boot/dts/freescale/imx8-ss-adma.dtsi      | 24 +++----
 .../boot/dts/freescale/imx8-ss-conn.dtsi      | 14 ++--
 .../boot/dts/freescale/imx8-ss-lsio.dtsi      | 64 ++++++++++++-------
 .../boot/dts/freescale/imx8qxp-ai_ml.dts      |  4 +-
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts |  4 +-
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi    | 10 +--
 6 files changed, 68 insertions(+), 52 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
index 6bd194a98c36..044db3d659c0 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
@@ -117,7 +117,7 @@ adma_subsys: bus@59000000 {
 	uart0_lpcg: clock-controller@5a460000 {
 		reg = <0x5a460000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_UART0_CLK>,
+		clocks = <&clk IMX_SC_R_UART_0 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "uart0_lpcg_baud_clk",
@@ -128,7 +128,7 @@ adma_subsys: bus@59000000 {
 	uart1_lpcg: clock-controller@5a470000 {
 		reg = <0x5a470000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_UART1_CLK>,
+		clocks = <&clk IMX_SC_R_UART_1 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "uart1_lpcg_baud_clk",
@@ -139,7 +139,7 @@ adma_subsys: bus@59000000 {
 	uart2_lpcg: clock-controller@5a480000 {
 		reg = <0x5a480000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_UART2_CLK>,
+		clocks = <&clk IMX_SC_R_UART_2 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "uart2_lpcg_baud_clk",
@@ -150,7 +150,7 @@ adma_subsys: bus@59000000 {
 	uart3_lpcg: clock-controller@5a490000 {
 		reg = <0x5a490000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_UART3_CLK>,
+		clocks = <&clk IMX_SC_R_UART_3 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "uart3_lpcg_baud_clk",
@@ -164,7 +164,7 @@ adma_subsys: bus@59000000 {
 		interrupt-parent = <&gic>;
 		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C0_CLK>;
 		clock-names = "per";
-		assigned-clocks = <&clk IMX_ADMA_I2C0_CLK>;
+		assigned-clocks = <&clk IMX_SC_R_I2C_0 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
 		power-domains = <&pd IMX_SC_R_I2C_0>;
 		status = "disabled";
@@ -176,7 +176,7 @@ adma_subsys: bus@59000000 {
 		interrupt-parent = <&gic>;
 		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C1_CLK>;
 		clock-names = "per";
-		assigned-clocks = <&clk IMX_ADMA_I2C1_CLK>;
+		assigned-clocks = <&clk IMX_SC_R_I2C_1 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
 		power-domains = <&pd IMX_SC_R_I2C_1>;
 		status = "disabled";
@@ -188,7 +188,7 @@ adma_subsys: bus@59000000 {
 		interrupt-parent = <&gic>;
 		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C2_CLK>;
 		clock-names = "per";
-		assigned-clocks = <&clk IMX_ADMA_I2C2_CLK>;
+		assigned-clocks = <&clk IMX_SC_R_I2C_2 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
 		power-domains = <&pd IMX_SC_R_I2C_2>;
 		status = "disabled";
@@ -200,7 +200,7 @@ adma_subsys: bus@59000000 {
 		interrupt-parent = <&gic>;
 		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C3_CLK>;
 		clock-names = "per";
-		assigned-clocks = <&clk IMX_ADMA_I2C3_CLK>;
+		assigned-clocks = <&clk IMX_SC_R_I2C_3 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
 		power-domains = <&pd IMX_SC_R_I2C_3>;
 		status = "disabled";
@@ -209,7 +209,7 @@ adma_subsys: bus@59000000 {
 	i2c0_lpcg: clock-controller@5ac00000 {
 		reg = <0x5ac00000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_I2C0_CLK>,
+		clocks = <&clk IMX_SC_R_I2C_0 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "i2c0_lpcg_clk",
@@ -220,7 +220,7 @@ adma_subsys: bus@59000000 {
 	i2c1_lpcg: clock-controller@5ac10000 {
 		reg = <0x5ac10000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_I2C1_CLK>,
+		clocks = <&clk IMX_SC_R_I2C_1 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "i2c1_lpcg_clk",
@@ -231,7 +231,7 @@ adma_subsys: bus@59000000 {
 	i2c2_lpcg: clock-controller@5ac20000 {
 		reg = <0x5ac20000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_I2C2_CLK>,
+		clocks = <&clk IMX_SC_R_I2C_2 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "i2c2_lpcg_clk",
@@ -242,7 +242,7 @@ adma_subsys: bus@59000000 {
 	i2c3_lpcg: clock-controller@5ac30000 {
 		reg = <0x5ac30000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_I2C3_CLK>,
+		clocks = <&clk IMX_SC_R_I2C_3 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "i2c3_lpcg_clk",
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
index 66899c5feaac..c04c939be58c 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
@@ -115,7 +115,7 @@ conn_subsys: bus@5b000000 {
 	sdhc0_lpcg: clock-controller@5b200000 {
 		reg = <0x5b200000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_CONN_SDHC0_CLK>,
+		clocks = <&clk IMX_SC_R_SDHC_0 IMX_SC_PM_CLK_PER>,
 			 <&conn_ipg_clk>, <&conn_axi_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>,
 				<IMX_LPCG_CLK_5>;
@@ -128,7 +128,7 @@ conn_subsys: bus@5b000000 {
 	sdhc1_lpcg: clock-controller@5b210000 {
 		reg = <0x5b210000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_CONN_SDHC1_CLK>,
+		clocks = <&clk IMX_SC_R_SDHC_1 IMX_SC_PM_CLK_PER>,
 			 <&conn_ipg_clk>, <&conn_axi_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>,
 				<IMX_LPCG_CLK_5>;
@@ -141,7 +141,7 @@ conn_subsys: bus@5b000000 {
 	sdhc2_lpcg: clock-controller@5b220000 {
 		reg = <0x5b220000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_CONN_SDHC2_CLK>,
+		clocks = <&clk IMX_SC_R_SDHC_2 IMX_SC_PM_CLK_PER>,
 			 <&conn_ipg_clk>, <&conn_axi_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>,
 				<IMX_LPCG_CLK_5>;
@@ -154,8 +154,8 @@ conn_subsys: bus@5b000000 {
 	enet0_lpcg: clock-controller@5b230000 {
 		reg = <0x5b230000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_CONN_ENET0_ROOT_CLK>,
-			 <&clk IMX_CONN_ENET0_ROOT_CLK>,
+		clocks = <&clk IMX_SC_R_ENET_0 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_ENET_0 IMX_SC_PM_CLK_PER>,
 			 <&conn_axi_clk>, <&conn_ipg_clk>, <&conn_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_2>, <IMX_LPCG_CLK_4>,
@@ -171,8 +171,8 @@ conn_subsys: bus@5b000000 {
 	enet1_lpcg: clock-controller@5b240000 {
 		reg = <0x5b240000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_CONN_ENET1_ROOT_CLK>,
-			 <&clk IMX_CONN_ENET1_ROOT_CLK>,
+		clocks = <&clk IMX_SC_R_ENET_1 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_ENET_1 IMX_SC_PM_CLK_PER>,
 			 <&conn_axi_clk>, <&conn_ipg_clk>, <&conn_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_2>, <IMX_LPCG_CLK_4>,
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
index e839aa8ab586..4aa84c4dbb36 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
@@ -157,9 +157,11 @@ lsio_subsys: bus@5d000000 {
 	pwm0_lpcg: clock-controller@5d400000 {
 		reg = <0x5d400000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM0_CLK>, <&clk IMX_LSIO_PWM0_CLK>,
-			 <&clk IMX_LSIO_PWM0_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM0_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_0 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_0 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_0 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_0 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -174,9 +176,11 @@ lsio_subsys: bus@5d000000 {
 	pwm1_lpcg: clock-controller@5d410000 {
 		reg = <0x5d410000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM1_CLK>, <&clk IMX_LSIO_PWM1_CLK>,
-			 <&clk IMX_LSIO_PWM1_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM1_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_1 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_1 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_1 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_1 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -191,9 +195,11 @@ lsio_subsys: bus@5d000000 {
 	pwm2_lpcg: clock-controller@5d420000 {
 		reg = <0x5d420000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM2_CLK>, <&clk IMX_LSIO_PWM2_CLK>,
-			 <&clk IMX_LSIO_PWM2_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM2_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_2 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_2 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_2 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_2 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -208,9 +214,11 @@ lsio_subsys: bus@5d000000 {
 	pwm3_lpcg: clock-controller@5d430000 {
 		reg = <0x5d430000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM3_CLK>, <&clk IMX_LSIO_PWM3_CLK>,
-			 <&clk IMX_LSIO_PWM3_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM3_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_3 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_3 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_3 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_3 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -225,9 +233,11 @@ lsio_subsys: bus@5d000000 {
 	pwm4_lpcg: clock-controller@5d440000 {
 		reg = <0x5d440000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM4_CLK>, <&clk IMX_LSIO_PWM4_CLK>,
-			 <&clk IMX_LSIO_PWM4_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM4_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_4 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_4 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_4 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_4 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -242,9 +252,11 @@ lsio_subsys: bus@5d000000 {
 	pwm5_lpcg: clock-controller@5d450000 {
 		reg = <0x5d450000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM5_CLK>, <&clk IMX_LSIO_PWM5_CLK>,
-			 <&clk IMX_LSIO_PWM5_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM5_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_5 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_5 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_5 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_5 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -259,9 +271,11 @@ lsio_subsys: bus@5d000000 {
 	pwm6_lpcg: clock-controller@5d460000 {
 		reg = <0x5d460000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM6_CLK>, <&clk IMX_LSIO_PWM6_CLK>,
-			 <&clk IMX_LSIO_PWM6_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM6_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_6 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_6 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_6 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_6 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -276,9 +290,11 @@ lsio_subsys: bus@5d000000 {
 	pwm7_lpcg: clock-controller@5d470000 {
 		reg = <0x5d470000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM7_CLK>, <&clk IMX_LSIO_PWM7_CLK>,
-			 <&clk IMX_LSIO_PWM7_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM7_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_7 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_7 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_7 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_7 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
index a3f8cf195974..b5352706e3f0 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
@@ -133,7 +133,7 @@
 &usdhc1 {
 	#address-cells = <1>;
 	#size-cells = <0>;
-	assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
+	assigned-clocks = <&clk IMX_SC_R_SDHC_0 IMX_SC_PM_CLK_PER>;
 	assigned-clock-rates = <200000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc1>;
@@ -151,7 +151,7 @@
 
 /* SD */
 &usdhc2 {
-	assigned-clocks = <&clk IMX_CONN_SDHC1_CLK>;
+	assigned-clocks = <&clk IMX_SC_R_SDHC_1 IMX_SC_PM_CLK_PER>;
 	assigned-clock-rates = <200000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc2>;
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index d3d26cca7d52..bb374ea4f3bf 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -137,7 +137,7 @@
 };
 
 &usdhc1 {
-	assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
+	assigned-clocks = <&clk IMX_SC_R_SDHC_0 IMX_SC_PM_CLK_PER>;
 	assigned-clock-rates = <200000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc1>;
@@ -149,7 +149,7 @@
 };
 
 &usdhc2 {
-	assigned-clocks = <&clk IMX_CONN_SDHC1_CLK>;
+	assigned-clocks = <&clk IMX_SC_R_SDHC_1 IMX_SC_PM_CLK_PER>;
 	assigned-clock-rates = <200000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc2>;
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index e408d214943f..eb2f3765334e 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -47,7 +47,7 @@
 			reg = <0x0 0x0>;
 			enable-method = "psci";
 			next-level-cache = <&A35_L2>;
-			clocks = <&clk IMX_A35_CLK>;
+			clocks = <&clk IMX_SC_R_A35 IMX_SC_PM_CLK_CPU>;
 			operating-points-v2 = <&a35_opp_table>;
 			#cooling-cells = <2>;
 		};
@@ -58,7 +58,7 @@
 			reg = <0x0 0x1>;
 			enable-method = "psci";
 			next-level-cache = <&A35_L2>;
-			clocks = <&clk IMX_A35_CLK>;
+			clocks = <&clk IMX_SC_R_A35 IMX_SC_PM_CLK_CPU>;
 			operating-points-v2 = <&a35_opp_table>;
 			#cooling-cells = <2>;
 		};
@@ -69,7 +69,7 @@
 			reg = <0x0 0x2>;
 			enable-method = "psci";
 			next-level-cache = <&A35_L2>;
-			clocks = <&clk IMX_A35_CLK>;
+			clocks = <&clk IMX_SC_R_A35 IMX_SC_PM_CLK_CPU>;
 			operating-points-v2 = <&a35_opp_table>;
 			#cooling-cells = <2>;
 		};
@@ -80,7 +80,7 @@
 			reg = <0x0 0x3>;
 			enable-method = "psci";
 			next-level-cache = <&A35_L2>;
-			clocks = <&clk IMX_A35_CLK>;
+			clocks = <&clk IMX_SC_R_A35 IMX_SC_PM_CLK_CPU>;
 			operating-points-v2 = <&a35_opp_table>;
 			#cooling-cells = <2>;
 		};
@@ -160,7 +160,7 @@
 
 		clk: clock-controller {
 			compatible = "fsl,imx8qxp-clk";
-			#clock-cells = <1>;
+			#clock-cells = <2>;
 			clocks = <&xtal32k &xtal24m>;
 			clock-names = "xtal_32KHz", "xtal_24Mhz";
 		};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
