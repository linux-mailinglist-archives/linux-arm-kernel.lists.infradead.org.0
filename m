Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F7F16FA91
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 10:21:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6kylf78dKqGXDXtvxSHQosD1/MNqu0c57R35g5+qGSo=; b=pF7
	H+mCdEgGLL14L79y8R3C+Yn5qKH6FCI2R4rUdYlKL6PX+sW+YmKf/MrTa96A9S11v7zeqyIVkIFwU
	6oLx9u7s+QXmYulHfLEueZ5MkrDOXLdUniJwS0CjE5NEIFCwTzQabVeji6UtzkgSc0iEJLfH36wl+
	bLcHD+8dBlaPUA1eUAaR6UGXX/diBNEUL8y1fv2JgouLq9EaWuZFQ5hc0oVy8aUJS59k2j/uVS7kk
	wJM37/iukjfSk1/tq30nhgqbUz4mqAl45fBiTQA5gVKbLpqYI7LrIqYQVe7KPHVFMFdGQGvnPRmHF
	bwx4o9Rs/DkJ6PVJ9LR49F+rCcf617g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ssA-00037X-Sj; Wed, 26 Feb 2020 09:20:54 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6sr8-0001Gx-Ft
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 09:19:53 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 81E501A713E;
 Wed, 26 Feb 2020 10:19:44 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 880D11A70CB;
 Wed, 26 Feb 2020 10:19:38 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 6CA9640246;
 Wed, 26 Feb 2020 17:19:31 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: p.zabel@pengutronix.de, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: reset: imx7: Add support for i.MX8MN
Date: Wed, 26 Feb 2020 17:13:48 +0800
Message-Id: <1582708431-14161-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_011950_819577_93AE74D7 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

i.MX8MN can reuse i.MX8MQ's reset driver, update the compatible
property and related info to support i.MX8MN.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/reset/fsl,imx7-src.txt     |  4 +-
 include/dt-bindings/reset/imx8mq-reset.h           | 56 +++++++++++-----------
 2 files changed, 31 insertions(+), 29 deletions(-)

diff --git a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
index c2489e4..38ac251 100644
--- a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
+++ b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
@@ -9,6 +9,7 @@ Required properties:
 	- For i.MX7 SoCs should be "fsl,imx7d-src", "syscon"
 	- For i.MX8MQ SoCs should be "fsl,imx8mq-src", "syscon"
 	- For i.MX8MM SoCs should be "fsl,imx8mm-src", "fsl,imx8mq-src", "syscon"
+	- For i.MX8MN SoCs should be "fsl,imx8mn-src", "fsl,imx8mq-src", "syscon"
 - reg: should be register base and length as documented in the
   datasheet
 - interrupts: Should contain SRC interrupt
@@ -49,4 +50,5 @@ Example:
 For list of all valid reset indices see
 <dt-bindings/reset/imx7-reset.h> for i.MX7,
 <dt-bindings/reset/imx8mq-reset.h> for i.MX8MQ and
-<dt-bindings/reset/imx8mq-reset.h> for i.MX8MM
+<dt-bindings/reset/imx8mq-reset.h> for i.MX8MM and
+<dt-bindings/reset/imx8mq-reset.h> for i.MX8MN
diff --git a/include/dt-bindings/reset/imx8mq-reset.h b/include/dt-bindings/reset/imx8mq-reset.h
index 9a30108..a5b5707 100644
--- a/include/dt-bindings/reset/imx8mq-reset.h
+++ b/include/dt-bindings/reset/imx8mq-reset.h
@@ -28,36 +28,36 @@
 #define IMX8MQ_RESET_A53_L2RESET		17
 #define IMX8MQ_RESET_SW_NON_SCLR_M4C_RST	18
 #define IMX8MQ_RESET_OTG1_PHY_RESET		19
-#define IMX8MQ_RESET_OTG2_PHY_RESET		20
-#define IMX8MQ_RESET_MIPI_DSI_RESET_BYTE_N	21
-#define IMX8MQ_RESET_MIPI_DSI_RESET_N		22
-#define IMX8MQ_RESET_MIPI_DSI_DPI_RESET_N	23
-#define IMX8MQ_RESET_MIPI_DSI_ESC_RESET_N	24
-#define IMX8MQ_RESET_MIPI_DSI_PCLK_RESET_N	25
-#define IMX8MQ_RESET_PCIEPHY			26
-#define IMX8MQ_RESET_PCIEPHY_PERST		27
-#define IMX8MQ_RESET_PCIE_CTRL_APPS_EN		28
-#define IMX8MQ_RESET_PCIE_CTRL_APPS_TURNOFF	29
-#define IMX8MQ_RESET_HDMI_PHY_APB_RESET		30	/* i.MX8MM does NOT support */
+#define IMX8MQ_RESET_OTG2_PHY_RESET		20	/* i.MX8MN does NOT support */
+#define IMX8MQ_RESET_MIPI_DSI_RESET_BYTE_N	21	/* i.MX8MN does NOT support */
+#define IMX8MQ_RESET_MIPI_DSI_RESET_N		22	/* i.MX8MN does NOT support */
+#define IMX8MQ_RESET_MIPI_DSI_DPI_RESET_N	23	/* i.MX8MN does NOT support */
+#define IMX8MQ_RESET_MIPI_DSI_ESC_RESET_N	24	/* i.MX8MN does NOT support */
+#define IMX8MQ_RESET_MIPI_DSI_PCLK_RESET_N	25	/* i.MX8MN does NOT support */
+#define IMX8MQ_RESET_PCIEPHY			26	/* i.MX8MN does NOT support */
+#define IMX8MQ_RESET_PCIEPHY_PERST		27	/* i.MX8MN does NOT support */
+#define IMX8MQ_RESET_PCIE_CTRL_APPS_EN		28	/* i.MX8MN does NOT support */
+#define IMX8MQ_RESET_PCIE_CTRL_APPS_TURNOFF	29	/* i.MX8MN does NOT support */
+#define IMX8MQ_RESET_HDMI_PHY_APB_RESET		30	/* i.MX8MM/i.MX8MN does NOT support */
 #define IMX8MQ_RESET_DISP_RESET			31
 #define IMX8MQ_RESET_GPU_RESET			32
-#define IMX8MQ_RESET_VPU_RESET			33
-#define IMX8MQ_RESET_PCIEPHY2			34	/* i.MX8MM does NOT support */
-#define IMX8MQ_RESET_PCIEPHY2_PERST		35	/* i.MX8MM does NOT support */
-#define IMX8MQ_RESET_PCIE2_CTRL_APPS_EN		36	/* i.MX8MM does NOT support */
-#define IMX8MQ_RESET_PCIE2_CTRL_APPS_TURNOFF	37	/* i.MX8MM does NOT support */
-#define IMX8MQ_RESET_MIPI_CSI1_CORE_RESET	38	/* i.MX8MM does NOT support */
-#define IMX8MQ_RESET_MIPI_CSI1_PHY_REF_RESET	39	/* i.MX8MM does NOT support */
-#define IMX8MQ_RESET_MIPI_CSI1_ESC_RESET	40	/* i.MX8MM does NOT support */
-#define IMX8MQ_RESET_MIPI_CSI2_CORE_RESET	41	/* i.MX8MM does NOT support */
-#define IMX8MQ_RESET_MIPI_CSI2_PHY_REF_RESET	42	/* i.MX8MM does NOT support */
-#define IMX8MQ_RESET_MIPI_CSI2_ESC_RESET	43	/* i.MX8MM does NOT support */
-#define IMX8MQ_RESET_DDRC1_PRST			44
-#define IMX8MQ_RESET_DDRC1_CORE_RESET		45
-#define IMX8MQ_RESET_DDRC1_PHY_RESET		46
-#define IMX8MQ_RESET_DDRC2_PRST			47	/* i.MX8MM does NOT support */
-#define IMX8MQ_RESET_DDRC2_CORE_RESET		48	/* i.MX8MM does NOT support */
-#define IMX8MQ_RESET_DDRC2_PHY_RESET		49	/* i.MX8MM does NOT support */
+#define IMX8MQ_RESET_VPU_RESET			33	/* i.MX8MN does NOT support */
+#define IMX8MQ_RESET_PCIEPHY2			34	/* i.MX8MM/i.MX8MN does NOT support */
+#define IMX8MQ_RESET_PCIEPHY2_PERST		35	/* i.MX8MM/i.MX8MN does NOT support */
+#define IMX8MQ_RESET_PCIE2_CTRL_APPS_EN		36	/* i.MX8MM/i.MX8MN does NOT support */
+#define IMX8MQ_RESET_PCIE2_CTRL_APPS_TURNOFF	37	/* i.MX8MM/i.MX8MN does NOT support */
+#define IMX8MQ_RESET_MIPI_CSI1_CORE_RESET	38	/* i.MX8MM/i.MX8MN does NOT support */
+#define IMX8MQ_RESET_MIPI_CSI1_PHY_REF_RESET	39	/* i.MX8MM/i.MX8MN does NOT support */
+#define IMX8MQ_RESET_MIPI_CSI1_ESC_RESET	40	/* i.MX8MM/i.MX8MN does NOT support */
+#define IMX8MQ_RESET_MIPI_CSI2_CORE_RESET	41	/* i.MX8MM/i.MX8MN does NOT support */
+#define IMX8MQ_RESET_MIPI_CSI2_PHY_REF_RESET	42	/* i.MX8MM/i.MX8MN does NOT support */
+#define IMX8MQ_RESET_MIPI_CSI2_ESC_RESET	43	/* i.MX8MM/i.MX8MN does NOT support */
+#define IMX8MQ_RESET_DDRC1_PRST			44	/* i.MX8MN does NOT support */
+#define IMX8MQ_RESET_DDRC1_CORE_RESET		45	/* i.MX8MN does NOT support */
+#define IMX8MQ_RESET_DDRC1_PHY_RESET		46	/* i.MX8MN does NOT support */
+#define IMX8MQ_RESET_DDRC2_PRST			47	/* i.MX8MM/i.MX8MN does NOT support */
+#define IMX8MQ_RESET_DDRC2_CORE_RESET		48	/* i.MX8MM/i.MX8MN does NOT support */
+#define IMX8MQ_RESET_DDRC2_PHY_RESET		49	/* i.MX8MM/i.MX8MN does NOT support */
 
 #define IMX8MQ_RESET_NUM			50
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
