Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB106AC09
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 17:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nogEJWmCLwWFFm1FwRGuNnmLzWEF0OBEkpI373aSm0M=; b=k5wx0HrOpTAOYCx3/tw1vd4K8T
	erCmvC8uGc5vV721vG9N8SwmiIP/4HWfZEt4a+lA9wjYG+VypCs20cnIEjgV/cBlw26/ws3R3sAJv
	xr2ykjzL57qZn7pn7ZVtWHo3LSq9OmSJi3jf4GYshImerdB/Q+VcuQXnNnOvhQh20eM2FHp1LsIoA
	t8dG16IpI+89KDX7at/n+aZJUYqT9bhjYsa6k9PhyhnaR91f0fxRc3Wg1ASgAdf2I10P11ofYqdfz
	3SgGREaeo75dwl8cXA9LBYWdgYqIut1Qly6d0vLs3Rve4yLTKpg0/VNPntqvJyGvd7yIrCZ7YK6yS
	qfV/5c7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnPXv-0006YU-7y; Tue, 16 Jul 2019 15:39:15 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnPVc-00052F-Cr
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 15:36:54 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1BDD12000F3;
 Tue, 16 Jul 2019 17:36:51 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9FCD620008E;
 Tue, 16 Jul 2019 17:36:44 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A45EA402EE;
 Tue, 16 Jul 2019 23:36:36 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 06/15] arm64: dts: imx8: add adma lpcg clocks
Date: Tue, 16 Jul 2019 23:14:40 +0800
Message-Id: <1563290089-11085-7-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_083652_818159_DF263914 
X-CRM114-Status: UNSURE (   7.33  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, devicetree@vger.kernel.org,
 dongas86@gmail.com, catalin.marinas@arm.com, will.deacon@arm.com,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, Mark Rutland <mark.rutland@arm.com>,
 shawnguo@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add adma lpcg clocks

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v1->v2:
 * Use old SCU clock binding temporarily to avoid build warning due to SCU
   clock cell will be changed to 2.
 * add power domain property
---
 arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi | 98 +++++++++++++++++++++++++
 1 file changed, 98 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
index 8738028..f0681a7 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
@@ -4,12 +4,22 @@
  *	Dong Aisheng <aisheng.dong@nxp.com>
  */
 
+#include <dt-bindings/firmware/imx/rsrc.h>
+
 adma_subsys: bus@59000000 {
 	compatible = "simple-bus";
 	#address-cells = <1>;
 	#size-cells = <1>;
 	ranges = <0x59000000 0x0 0x59000000 0x2000000>;
 
+	dma_ipg_clk: clock-dma-ipg {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <120000000>;
+		clock-output-names = "dma_ipg_clk";
+	};
+
+	/* LPCG clocks */
 	adma_lpcg: clock-controller@59000000 {
 		reg = <0x59000000 0x2000000>;
 		#clock-cells = <1>;
@@ -55,6 +65,50 @@ adma_subsys: bus@59000000 {
 		status = "disabled";
 	};
 
+	uart0_lpcg: clock-controller@5a460000 {
+		reg = <0x5a460000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_ADMA_UART0_CLK>,
+			 <&dma_ipg_clk>;
+		bit-offset = <0 16>;
+		clock-output-names = "uart0_lpcg_baud_clk",
+				     "uart0_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_UART_0>;
+	};
+
+	uart1_lpcg: clock-controller@5a470000 {
+		reg = <0x5a470000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_ADMA_UART1_CLK>,
+			 <&dma_ipg_clk>;
+		bit-offset = <0 16>;
+		clock-output-names = "uart1_lpcg_baud_clk",
+				     "uart1_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_UART_1>;
+	};
+
+	uart2_lpcg: clock-controller@5a480000 {
+		reg = <0x5a480000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_ADMA_UART2_CLK>,
+			 <&dma_ipg_clk>;
+		bit-offset = <0 16>;
+		clock-output-names = "uart2_lpcg_baud_clk",
+				     "uart2_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_UART_2>;
+	};
+
+	uart3_lpcg: clock-controller@5a490000 {
+		reg = <0x5a490000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_ADMA_UART3_CLK>,
+			 <&dma_ipg_clk>;
+		bit-offset = <0 16>;
+		clock-output-names = "uart3_lpcg_baud_clk",
+				     "uart3_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_UART_3>;
+	};
+
 	adma_i2c0: i2c@5a800000 {
 		reg = <0x5a800000 0x4000>;
 		interrupts = <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>;
@@ -102,4 +156,48 @@ adma_subsys: bus@59000000 {
 		power-domains = <&pd IMX_SC_R_I2C_3>;
 		status = "disabled";
 	};
+
+	i2c0_lpcg: clock-controller@5ac00000 {
+		reg = <0x5ac00000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_ADMA_I2C0_CLK>,
+			 <&dma_ipg_clk>;
+		bit-offset = <0 16>;
+		clock-output-names = "i2c0_lpcg_clk",
+				     "i2c0_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_I2C_0>;
+	};
+
+	i2c1_lpcg: clock-controller@5ac10000 {
+		reg = <0x5ac10000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_ADMA_I2C1_CLK>,
+			 <&dma_ipg_clk>;
+		bit-offset = <0 16>;
+		clock-output-names = "i2c1_lpcg_clk",
+				     "i2c1_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_I2C_1>;
+	};
+
+	i2c2_lpcg: clock-controller@5ac20000 {
+		reg = <0x5ac20000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_ADMA_I2C2_CLK>,
+			 <&dma_ipg_clk>;
+		bit-offset = <0 16>;
+		clock-output-names = "i2c2_lpcg_clk",
+				     "i2c2_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_I2C_2>;
+	};
+
+	i2c3_lpcg: clock-controller@5ac30000 {
+		reg = <0x5ac30000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_ADMA_I2C3_CLK>,
+			 <&dma_ipg_clk>;
+		bit-offset = <0 16>;
+		clock-output-names = "i2c3_lpcg_clk",
+				     "i2c3_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_I2C_3>;
+	};
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
