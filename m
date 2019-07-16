Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDE36AC07
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 17:38:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VL9kNEn1l9sstGKGXNtZE9v2PHLVEU/KYj4yHlvIyNk=; b=SmsSbWCAOWkwIWnAmwBBUJdCcp
	nv1zF9PCA0fxt+4e0RosIF+HmxHp5+z1oI7eNqINfvn1hf0fu8oxqfVfMjncQS7v7aVrJ12gjLqFF
	b2+lviF9r+ItfuN5GMKELup/sdQSKmgVoToAYNkd0Lj1PMzm4x8eQuWbVUXCMYDEMJkkMYLV6F4lu
	3Fg9ZB0neWeZCh/sMHbsjPXU7cvNQAYd4iywOckpCa/yGNTiZQUF+RoASAiG5hz0O5L+JJWfjOp+U
	Q0MY9qyC6L1adJyuSb4/+dOWR5JNtkYasqFo5BBK6nMrTTiJint1lXyUPZJKG0tWtDEWiVaUCoVeo
	HidXDr+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnPXe-0006Hh-0Z; Tue, 16 Jul 2019 15:38:58 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnPVb-00051i-4x
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 15:36:53 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E080D2001FD;
 Tue, 16 Jul 2019 17:36:49 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6F0EA200079;
 Tue, 16 Jul 2019 17:36:43 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 78446402ED;
 Tue, 16 Jul 2019 23:36:35 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 05/15] arm64: dts: imx8: add conn lpcg clocks
Date: Tue, 16 Jul 2019 23:14:39 +0800
Message-Id: <1563290089-11085-6-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_083651_724697_8B254C86 
X-CRM114-Status: UNSURE (   8.43  )
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

Add conn lpcg clocks

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
 * add power domain propertyv1->v2:
---
 arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi | 96 ++++++++++++++++++++++++-
 1 file changed, 93 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
index e5f6041..1ae49c1 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
@@ -4,15 +4,33 @@
  *	Dong Aisheng <aisheng.dong@nxp.com>
  */
 
+#include <dt-bindings/firmware/imx/rsrc.h>
+
 conn_subsys: bus@5b000000 {
 	compatible = "simple-bus";
 	#address-cells = <1>;
 	#size-cells = <1>;
 	ranges = <0x5b000000 0x0 0x5b000000 0x1000000>;
 
-	conn_lpcg: clock-controller@5b200000 {
-		reg = <0x5b200000 0xb0000>;
-		#clock-cells = <1>;
+	conn_axi_clk: clock-conn-axi {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <333333333>;
+		clock-output-names = "conn_axi_clk";
+	};
+
+	conn_ahb_clk: clock-conn-ahb {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <166666666>;
+		clock-output-names = "conn_ahb_clk";
+	};
+
+	conn_ipg_clk: clock-conn-ipg {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <83333333>;
+		clock-output-names = "conn_ipg_clk";
 	};
 
 	usdhc1: mmc@5b010000 {
@@ -92,4 +110,76 @@ conn_subsys: bus@5b000000 {
 		power-domains = <&pd IMX_SC_R_ENET_1>;
 		status = "disabled";
 	};
+
+	/* LPCG clocks */
+	conn_lpcg: clock-controller-legacy@5b200000 {
+		reg = <0x5b200000 0xb0000>;
+		#clock-cells = <1>;
+	};
+
+	sdhc0_lpcg: clock-controller@5b200000 {
+		reg = <0x5b200000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_CONN_SDHC0_CLK>,
+			 <&conn_ipg_clk>, <&conn_axi_clk>;
+		bit-offset = <0 16 20>;
+		clock-output-names = "sdhc0_lpcg_per_clk",
+				     "sdhc0_lpcg_ipg_clk",
+				     "sdhc0_lpcg_ahb_clk";
+		power-domains = <&pd IMX_SC_R_SDHC_0>;
+	};
+
+	sdhc1_lpcg: clock-controller@5b210000 {
+		reg = <0x5b210000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_CONN_SDHC1_CLK>,
+			 <&conn_ipg_clk>, <&conn_axi_clk>;
+		bit-offset = <0 16 20>;
+		clock-output-names = "sdhc1_lpcg_per_clk",
+				     "sdhc1_lpcg_ipg_clk",
+				     "sdhc1_lpcg_ahb_clk";
+		power-domains = <&pd IMX_SC_R_SDHC_1>;
+	};
+
+	sdhc2_lpcg: clock-controller@5b220000 {
+		reg = <0x5b220000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_CONN_SDHC2_CLK>,
+			 <&conn_ipg_clk>, <&conn_axi_clk>;
+		bit-offset = <0 16 20>;
+		clock-output-names = "sdhc2_lpcg_per_clk",
+				     "sdhc2_lpcg_ipg_clk",
+				     "sdhc2_lpcg_ahb_clk";
+		power-domains = <&pd IMX_SC_R_SDHC_2>;
+	};
+
+	enet0_lpcg: clock-controller@5b230000 {
+		reg = <0x5b230000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_CONN_ENET0_ROOT_CLK>,
+			 <&clk IMX_CONN_ENET0_ROOT_CLK>,
+			 <&conn_axi_clk>, <&conn_ipg_clk>, <&conn_ipg_clk>;
+		bit-offset = <0 4 8 16 20>;
+		clock-output-names = "enet0_ipg_root_clk",
+				     "enet0_tx_clk",
+				     "enet0_ahb_clk",
+				     "enet0_ipg_clk",
+				     "enet0_ipg_s_clk";
+		power-domains = <&pd IMX_SC_R_ENET_0>;
+	};
+
+	enet1_lpcg: clock-controller@5b240000 {
+		reg = <0x5b240000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_CONN_ENET1_ROOT_CLK>,
+			 <&clk IMX_CONN_ENET1_ROOT_CLK>,
+			 <&conn_axi_clk>, <&conn_ipg_clk>, <&conn_ipg_clk>;
+		bit-offset = <0 4 8 16 20>;
+		clock-output-names = "enet1_ipg_root_clk",
+				     "enet1_tx_clk",
+				     "enet1_ahb_clk",
+				     "enet1_ipg_clk",
+				     "enet1_ipg_s_clk";
+		power-domains = <&pd IMX_SC_R_ENET_1>;
+	};
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
