Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9991B8DDE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 10:21:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CbB97iCurfbxjRoLnWREe+sMPZ1+vvLwzbIroudagq8=; b=KS4
	Iec8fEW2+tJ4UojFwiIt9SdWFjNzscNVm7WJTw14AjhiCO1bdBRREaoLE3xR87VZwe+4H/w3+bzPn
	w4za1SzaD+imAStASl3TCUEyNZzIut/MLh7jzSmS3ZZYakGpxn8OjnVSYmJnRo7YjjlOJ9iS63VBb
	VXNH+D/gOsLt2XMaUTz9MPugbIWKFUIVoh4+nVwdaDJgBIVG8snkzAcQotxcCgIhsYgggyDvdIfzW
	oAfCPbCkL+ZaSmHwt0IGehWhhWYs4rQQhyCi31l6CbncGjYUC6NehgDfA2Pn8GyyVGh6TJRAyxjKs
	EbPzIZJW2mZAEBCnJ2a9lhfdmgCe+Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jScX2-0006jd-Ak; Sun, 26 Apr 2020 08:20:56 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jScWe-0006ba-Lq
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 08:20:34 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D8128200B9F;
 Sun, 26 Apr 2020 10:20:29 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 597CC200BA3;
 Sun, 26 Apr 2020 10:20:23 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id AAC1140246;
 Sun, 26 Apr 2020 16:20:15 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, robh+dt@kernel.org, leonard.crestez@nxp.com,
 linux@rempel-privat.de, peng.fan@nxp.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Subject: [PATCH V5 1/2] dt-bindings: firmware: imx: Move system control into
 dt-binding headfile
Date: Sun, 26 Apr 2020 16:11:43 +0800
Message-Id: <1587888704-7158-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_012032_986805_424594E6 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dong Aisheng <aisheng.dong@nxp.com>

i.MX8 SoCs DTS file needs system control macro definitions, so move them
into dt-binding headfile, then include/linux/firmware/imx/types.h can be
removed and those drivers using it should be changed accordingly.

Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V4:
	- Use another patch for new added system controls and PM clock types.
---
 drivers/firmware/imx/imx-scu.c          |  1 -
 drivers/thermal/imx_sc_thermal.c        |  2 +-
 include/dt-bindings/firmware/imx/rsrc.h | 51 ++++++++++++++++++++++++++
 include/linux/firmware/imx/sci.h        |  1 -
 include/linux/firmware/imx/types.h      | 65 ---------------------------------
 5 files changed, 52 insertions(+), 68 deletions(-)
 delete mode 100644 include/linux/firmware/imx/types.h

diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
index f71eaa5..f3340fa 100644
--- a/drivers/firmware/imx/imx-scu.c
+++ b/drivers/firmware/imx/imx-scu.c
@@ -8,7 +8,6 @@
  */
 
 #include <linux/err.h>
-#include <linux/firmware/imx/types.h>
 #include <linux/firmware/imx/ipc.h>
 #include <linux/firmware/imx/sci.h>
 #include <linux/interrupt.h>
diff --git a/drivers/thermal/imx_sc_thermal.c b/drivers/thermal/imx_sc_thermal.c
index b2b68c9..b01d28e 100644
--- a/drivers/thermal/imx_sc_thermal.c
+++ b/drivers/thermal/imx_sc_thermal.c
@@ -3,9 +3,9 @@
  * Copyright 2018-2020 NXP.
  */
 
+#include <dt-bindings/firmware/imx/rsrc.h>
 #include <linux/err.h>
 #include <linux/firmware/imx/sci.h>
-#include <linux/firmware/imx/types.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
diff --git a/include/dt-bindings/firmware/imx/rsrc.h b/include/dt-bindings/firmware/imx/rsrc.h
index 4e61f64..cdcda00 100644
--- a/include/dt-bindings/firmware/imx/rsrc.h
+++ b/include/dt-bindings/firmware/imx/rsrc.h
@@ -547,4 +547,55 @@
 #define IMX_SC_R_ATTESTATION		545
 #define IMX_SC_R_LAST			546
 
+/*
+ * Defines for SC CONTROL
+ */
+#define IMX_SC_C_TEMP				0
+#define IMX_SC_C_TEMP_HI			1
+#define IMX_SC_C_TEMP_LOW			2
+#define IMX_SC_C_PXL_LINK_MST1_ADDR		3
+#define IMX_SC_C_PXL_LINK_MST2_ADDR		4
+#define IMX_SC_C_PXL_LINK_MST_ENB		5
+#define IMX_SC_C_PXL_LINK_MST1_ENB		6
+#define IMX_SC_C_PXL_LINK_MST2_ENB		7
+#define IMX_SC_C_PXL_LINK_SLV1_ADDR		8
+#define IMX_SC_C_PXL_LINK_SLV2_ADDR		9
+#define IMX_SC_C_PXL_LINK_MST_VLD		10
+#define IMX_SC_C_PXL_LINK_MST1_VLD		11
+#define IMX_SC_C_PXL_LINK_MST2_VLD		12
+#define IMX_SC_C_SINGLE_MODE			13
+#define IMX_SC_C_ID				14
+#define IMX_SC_C_PXL_CLK_POLARITY		15
+#define IMX_SC_C_LINESTATE			16
+#define IMX_SC_C_PCIE_G_RST			17
+#define IMX_SC_C_PCIE_BUTTON_RST		18
+#define IMX_SC_C_PCIE_PERST			19
+#define IMX_SC_C_PHY_RESET			20
+#define IMX_SC_C_PXL_LINK_RATE_CORRECTION	21
+#define IMX_SC_C_PANIC				22
+#define IMX_SC_C_PRIORITY_GROUP			23
+#define IMX_SC_C_TXCLK				24
+#define IMX_SC_C_CLKDIV				25
+#define IMX_SC_C_DISABLE_50			26
+#define IMX_SC_C_DISABLE_125			27
+#define IMX_SC_C_SEL_125			28
+#define IMX_SC_C_MODE				29
+#define IMX_SC_C_SYNC_CTRL0			30
+#define IMX_SC_C_KACHUNK_CNT			31
+#define IMX_SC_C_KACHUNK_SEL			32
+#define IMX_SC_C_SYNC_CTRL1			33
+#define IMX_SC_C_DPI_RESET			34
+#define IMX_SC_C_MIPI_RESET			35
+#define IMX_SC_C_DUAL_MODE			36
+#define IMX_SC_C_VOLTAGE			37
+#define IMX_SC_C_PXL_LINK_SEL			38
+#define IMX_SC_C_OFS_SEL			39
+#define IMX_SC_C_OFS_AUDIO			40
+#define IMX_SC_C_OFS_PERIPH			41
+#define IMX_SC_C_OFS_IRQ			42
+#define IMX_SC_C_RST0				43
+#define IMX_SC_C_RST1				44
+#define IMX_SC_C_SEL0				45
+#define IMX_SC_C_LAST				46
+
 #endif /* __DT_BINDINGS_RSCRC_IMX_H */
diff --git a/include/linux/firmware/imx/sci.h b/include/linux/firmware/imx/sci.h
index 17ba4e4..3fa418a 100644
--- a/include/linux/firmware/imx/sci.h
+++ b/include/linux/firmware/imx/sci.h
@@ -11,7 +11,6 @@
 #define _SC_SCI_H
 
 #include <linux/firmware/imx/ipc.h>
-#include <linux/firmware/imx/types.h>
 
 #include <linux/firmware/imx/svc/misc.h>
 #include <linux/firmware/imx/svc/pm.h>
diff --git a/include/linux/firmware/imx/types.h b/include/linux/firmware/imx/types.h
deleted file mode 100644
index 8082110..0000000
--- a/include/linux/firmware/imx/types.h
+++ /dev/null
@@ -1,65 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0+ */
-/*
- * Copyright (C) 2016 Freescale Semiconductor, Inc.
- * Copyright 2017~2018 NXP
- *
- * Header file containing types used across multiple service APIs.
- */
-
-#ifndef _SC_TYPES_H
-#define _SC_TYPES_H
-
-/*
- * This type is used to indicate a control.
- */
-enum imx_sc_ctrl {
-	IMX_SC_C_TEMP = 0,
-	IMX_SC_C_TEMP_HI = 1,
-	IMX_SC_C_TEMP_LOW = 2,
-	IMX_SC_C_PXL_LINK_MST1_ADDR = 3,
-	IMX_SC_C_PXL_LINK_MST2_ADDR = 4,
-	IMX_SC_C_PXL_LINK_MST_ENB = 5,
-	IMX_SC_C_PXL_LINK_MST1_ENB = 6,
-	IMX_SC_C_PXL_LINK_MST2_ENB = 7,
-	IMX_SC_C_PXL_LINK_SLV1_ADDR = 8,
-	IMX_SC_C_PXL_LINK_SLV2_ADDR = 9,
-	IMX_SC_C_PXL_LINK_MST_VLD = 10,
-	IMX_SC_C_PXL_LINK_MST1_VLD = 11,
-	IMX_SC_C_PXL_LINK_MST2_VLD = 12,
-	IMX_SC_C_SINGLE_MODE = 13,
-	IMX_SC_C_ID = 14,
-	IMX_SC_C_PXL_CLK_POLARITY = 15,
-	IMX_SC_C_LINESTATE = 16,
-	IMX_SC_C_PCIE_G_RST = 17,
-	IMX_SC_C_PCIE_BUTTON_RST = 18,
-	IMX_SC_C_PCIE_PERST = 19,
-	IMX_SC_C_PHY_RESET = 20,
-	IMX_SC_C_PXL_LINK_RATE_CORRECTION = 21,
-	IMX_SC_C_PANIC = 22,
-	IMX_SC_C_PRIORITY_GROUP = 23,
-	IMX_SC_C_TXCLK = 24,
-	IMX_SC_C_CLKDIV = 25,
-	IMX_SC_C_DISABLE_50 = 26,
-	IMX_SC_C_DISABLE_125 = 27,
-	IMX_SC_C_SEL_125 = 28,
-	IMX_SC_C_MODE = 29,
-	IMX_SC_C_SYNC_CTRL0 = 30,
-	IMX_SC_C_KACHUNK_CNT = 31,
-	IMX_SC_C_KACHUNK_SEL = 32,
-	IMX_SC_C_SYNC_CTRL1 = 33,
-	IMX_SC_C_DPI_RESET = 34,
-	IMX_SC_C_MIPI_RESET = 35,
-	IMX_SC_C_DUAL_MODE = 36,
-	IMX_SC_C_VOLTAGE = 37,
-	IMX_SC_C_PXL_LINK_SEL = 38,
-	IMX_SC_C_OFS_SEL = 39,
-	IMX_SC_C_OFS_AUDIO = 40,
-	IMX_SC_C_OFS_PERIPH = 41,
-	IMX_SC_C_OFS_IRQ = 42,
-	IMX_SC_C_RST0 = 43,
-	IMX_SC_C_RST1 = 44,
-	IMX_SC_C_SEL0 = 45,
-	IMX_SC_C_LAST
-};
-
-#endif /* _SC_TYPES_H */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
