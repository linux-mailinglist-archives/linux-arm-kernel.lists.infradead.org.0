Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DF016FA8D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 10:20:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nMyPoB3F1zq9L/q/HQwHnNTh891hyUjozYVWfTwRIrw=; b=Ri93k8cBf6KphetRU2e4DhpvJt
	yx28UPbuQqogB59UU2R4zpFaXRjSK5d7IqHGHejaGHnOaxwfiNbLPhUOTRWqfeZXIvV3BdzKl4KEB
	dCeHp4s8l1c5vjBSNx9lYvo5hFe0IqEcCfgz2YE+JgDEHN68QBQqt4GK3Wst6YFDcbgjH4U5rgn+P
	iK3kGXrSMqXor2tcwOp5fPC9eQT3LHc5L45FxcXgezQ0YEXFqW+yjbiZkLEAQjm98OHegXdFyI4JU
	yr4J2Ws2YaZ0OsBVV48kAUyVUvB5H3qOBVx1cRR8D1er2ZdsESPELm0saYMOpnSnwFLf2o9wz2bID
	ooLoLphA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6srh-0001iZ-HA; Wed, 26 Feb 2020 09:20:25 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6sr8-0001Gy-Dg
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 09:19:52 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 840891A7184;
 Wed, 26 Feb 2020 10:19:45 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 80C9B1A711B;
 Wed, 26 Feb 2020 10:19:39 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 65683402AD;
 Wed, 26 Feb 2020 17:19:32 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: p.zabel@pengutronix.de, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] dt-bindings: reset: imx7: Document usage on i.MX8MP SoC
Date: Wed, 26 Feb 2020 17:13:49 +0800
Message-Id: <1582708431-14161-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582708431-14161-1-git-send-email-Anson.Huang@nxp.com>
References: <1582708431-14161-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_011950_741586_FCB0C188 
X-CRM114-Status: UNSURE (   9.57  )
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

The driver now supports i.MX8MP, so update bindings accordingly.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/reset/fsl,imx7-src.txt     |  4 +-
 include/dt-bindings/reset/imx8mp-reset.h           | 50 ++++++++++++++++++++++
 2 files changed, 53 insertions(+), 1 deletion(-)
 create mode 100644 include/dt-bindings/reset/imx8mp-reset.h

diff --git a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
index 38ac251..e10502d 100644
--- a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
+++ b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
@@ -10,6 +10,7 @@ Required properties:
 	- For i.MX8MQ SoCs should be "fsl,imx8mq-src", "syscon"
 	- For i.MX8MM SoCs should be "fsl,imx8mm-src", "fsl,imx8mq-src", "syscon"
 	- For i.MX8MN SoCs should be "fsl,imx8mn-src", "fsl,imx8mq-src", "syscon"
+	- For i.MX8MP SoCs should be "fsl,imx8mp-src", "syscon"
 - reg: should be register base and length as documented in the
   datasheet
 - interrupts: Should contain SRC interrupt
@@ -51,4 +52,5 @@ For list of all valid reset indices see
 <dt-bindings/reset/imx7-reset.h> for i.MX7,
 <dt-bindings/reset/imx8mq-reset.h> for i.MX8MQ and
 <dt-bindings/reset/imx8mq-reset.h> for i.MX8MM and
-<dt-bindings/reset/imx8mq-reset.h> for i.MX8MN
+<dt-bindings/reset/imx8mq-reset.h> for i.MX8MN and
+<dt-bindings/reset/imx8mp-reset.h> for i.MX8MP
diff --git a/include/dt-bindings/reset/imx8mp-reset.h b/include/dt-bindings/reset/imx8mp-reset.h
new file mode 100644
index 0000000..ee37769
--- /dev/null
+++ b/include/dt-bindings/reset/imx8mp-reset.h
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2020 NXP
+ */
+
+#ifndef DT_BINDING_RESET_IMX8MP_H
+#define DT_BINDING_RESET_IMX8MP_H
+
+#define IMX8MP_RESET_A53_CORE_POR_RESET0	0
+#define IMX8MP_RESET_A53_CORE_POR_RESET1	1
+#define IMX8MP_RESET_A53_CORE_POR_RESET2	2
+#define IMX8MP_RESET_A53_CORE_POR_RESET3	3
+#define IMX8MP_RESET_A53_CORE_RESET0		4
+#define IMX8MP_RESET_A53_CORE_RESET1		5
+#define IMX8MP_RESET_A53_CORE_RESET2		6
+#define IMX8MP_RESET_A53_CORE_RESET3		7
+#define IMX8MP_RESET_A53_DBG_RESET0		8
+#define IMX8MP_RESET_A53_DBG_RESET1		9
+#define IMX8MP_RESET_A53_DBG_RESET2		10
+#define IMX8MP_RESET_A53_DBG_RESET3		11
+#define IMX8MP_RESET_A53_ETM_RESET0		12
+#define IMX8MP_RESET_A53_ETM_RESET1		13
+#define IMX8MP_RESET_A53_ETM_RESET2		14
+#define IMX8MP_RESET_A53_ETM_RESET3		15
+#define IMX8MP_RESET_A53_SOC_DBG_RESET		16
+#define IMX8MP_RESET_A53_L2RESET		17
+#define IMX8MP_RESET_SW_NON_SCLR_M7C_RST	18
+#define IMX8MP_RESET_OTG1_PHY_RESET		19
+#define IMX8MP_RESET_OTG2_PHY_RESET		20
+#define IMX8MP_RESET_SUPERMIX_RESET		21
+#define IMX8MP_RESET_AUDIOMIX_RESET		22
+#define IMX8MP_RESET_MLMIX_RESET		23
+#define IMX8MP_RESET_PCIEPHY			24
+#define IMX8MP_RESET_PCIEPHY_PERST		25
+#define IMX8MP_RESET_PCIE_CTRL_APPS_EN		26
+#define IMX8MP_RESET_PCIE_CTRL_APPS_TURNOFF	27
+#define IMX8MP_RESET_HDMI_PHY_APB_RESET		28
+#define IMX8MP_RESET_MEDIA_RESET		29
+#define IMX8MP_RESET_GPU2D_RESET		30
+#define IMX8MP_RESET_GPU3D_RESET		31
+#define IMX8MP_RESET_GPU_RESET			32
+#define IMX8MP_RESET_VPU_RESET			33
+#define IMX8MP_RESET_VPU_G1_RESET		34
+#define IMX8MP_RESET_VPU_G2_RESET		35
+#define IMX8MP_RESET_VPUVC8KE_RESET		36
+#define IMX8MP_RESET_NOC_RESET			37
+
+#define IMX8MP_RESET_NUM			38
+
+#endif
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
