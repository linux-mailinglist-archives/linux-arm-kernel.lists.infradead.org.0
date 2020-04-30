Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B6B1BF871
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 14:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JqdTSUi5MkoKXSVHOKlJAIcyCaYgS7rLN4LtfzVrzqo=; b=XsEq1H7Rbe2gxr
	d2MXzpNh7JSBnR0DFX4LvlG17MkJT8QNJe1G5cQ1o1aWUqzBHcI2dPnklnPDD46qu1HusUKO95xZW
	ceRguVfvWsxa26xaOpdnlcFbCzbUYKcCHpjPILhovLkozLvdgEaEmY3HhVlmZNNo9rH/65ljhZeTf
	Rwo8Vdy+cMy9tORZ05Xna//136j7Uz0EVUrlGzTnRCxoyVJLfJ5uNYNMCFf8Qq5TGYlH+72gJfyav
	A+Nnkm56wVbphJeMryYGAjBlZUEhZ9I5f4tc5uL0XIvkTlBu321hRraYr8BQL5KjPruGvPNDEcNYr
	tFldqD9/C964EVsDVC/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU8bN-0001De-9x; Thu, 30 Apr 2020 12:47:41 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU8a3-0000Fs-Sb
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 12:46:21 +0000
Received: from sntmail11s.snt-is.com (unknown [10.203.32.181])
 by skedge03.snt-world.com (Postfix) with ESMTP id C054A67A902;
 Thu, 30 Apr 2020 14:46:17 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail11s.snt-is.com
 (10.203.32.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Thu, 30 Apr
 2020 14:46:17 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.007; Thu, 30 Apr 2020 14:46:17 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Adam Ford <aford173@gmail.com>, Anson Huang <Anson.Huang@nxp.com>,
 Christian Gmeiner <christian.gmeiner@gmail.com>, Daniel Baluta
 <daniel.baluta@nxp.com>, Fabio Estevam <festevam@gmail.com>, Schrempf Frieder
 <frieder.schrempf@kontron.de>, Leonard Crestez <leonard.crestez@nxp.com>, "Li
 Jun" <jun.li@nxp.com>, Lucas Stach <l.stach@pengutronix.de>, NXP Linux Team
 <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Russell King <linux+etnaviv@armlinux.org.uk>,
 "Sascha Hauer" <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>
Subject: [RFC PATCH 4/4] arm64: dts: imx8mm: Add GPU nodes for 2D and 3D core
 using Etnaviv
Thread-Topic: [RFC PATCH 4/4] arm64: dts: imx8mm: Add GPU nodes for 2D and 3D
 core using Etnaviv
Thread-Index: AQHWHu1XU8cnqZiR7kmt3VxL/7fb7Q==
Date: Thu, 30 Apr 2020 12:46:17 +0000
Message-ID: <20200430124602.14463-5-frieder.schrempf@kontron.de>
References: <20200430124602.14463-1-frieder.schrempf@kontron.de>
In-Reply-To: <20200430124602.14463-1-frieder.schrempf@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: C054A67A902.A0242
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: aford173@gmail.com, anson.huang@nxp.com,
 christian.gmeiner@gmail.com, daniel.baluta@nxp.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 etnaviv@lists.freedesktop.org, festevam@gmail.com, jun.li@nxp.com,
 kernel@pengutronix.de, l.stach@pengutronix.de,
 leonard.crestez@nxp.com, linux+etnaviv@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, peng.fan@nxp.com,
 s.hauer@pengutronix.de, shawnguo@kernel.org, shengjiu.wang@nxp.com
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_054620_274264_79786937 
X-CRM114-Status: UNSURE (   6.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.68 listed in list.dnswl.org]
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "etnaviv@lists.freedesktop.org" <etnaviv@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Frieder Schrempf <frieder.schrempf@kontron.de>

According to the documents, the i.MX8M-Mini features a GC320 and a
GCNanoUltra GPU core. Etnaviv detects them as:

	etnaviv-gpu 38000000.gpu: model: GC600, revision: 4653
	etnaviv-gpu 38008000.gpu: model: GC520, revision: 5341

This seems to work fine more or less without any changes to the HWDB,
which still might be needed in the future to correct some features,
etc.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 36 +++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index cc7152ecedd9..1dd0a6e849d3 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -937,6 +937,42 @@
 			status = "disabled";
 		};
 
+		gpu_3d: gpu@38000000 {
+			compatible = "vivante,gc";
+			reg = <0x38000000 0x8000>;
+			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX8MM_CLK_GPU_AHB>,
+				 <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
+				 <&clk IMX8MM_CLK_GPU3D_ROOT>;
+			clock-names = "reg", "bus", "core";
+			assigned-clocks = <&clk IMX8MM_CLK_GPU3D_SRC>,
+					<&clk IMX8MM_CLK_GPU_AXI>,
+					<&clk IMX8MM_CLK_GPU_AHB>,
+					<&clk IMX8MM_GPU_PLL_OUT>;
+			assigned-clock-parents = <&clk IMX8MM_GPU_PLL_OUT>,
+					<&clk IMX8MM_SYS_PLL1_800M>,
+					<&clk IMX8MM_SYS_PLL1_800M>;
+			assigned-clock-rates = <0>, <0>,<400000000>,<1000000000>;
+		};
+
+		gpu_2d: gpu@38008000 {
+			compatible = "vivante,gc";
+			reg = <0x38008000 0x8000>;
+			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX8MM_CLK_GPU_AHB>,
+				 <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
+				 <&clk IMX8MM_CLK_GPU2D_ROOT>;
+			clock-names = "reg", "bus", "core";
+			assigned-clocks = <&clk IMX8MM_CLK_GPU2D_SRC>,
+					<&clk IMX8MM_CLK_GPU_AXI>,
+					<&clk IMX8MM_CLK_GPU_AHB>,
+					<&clk IMX8MM_GPU_PLL_OUT>;
+			assigned-clock-parents = <&clk IMX8MM_GPU_PLL_OUT>,
+					<&clk IMX8MM_SYS_PLL1_800M>,
+					<&clk IMX8MM_SYS_PLL1_800M>;
+			assigned-clock-rates = <0>, <0>,<400000000>,<1000000000>;
+		};
+
 		gic: interrupt-controller@38800000 {
 			compatible = "arm,gic-v3";
 			reg = <0x38800000 0x10000>, /* GIC Dist */
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
