Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F14A51B8DDB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 10:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vnofcNS4dQXbc2N8727f5wT1F5A72xTuzLqkE93KkZ8=; b=AdCS2ZkeUtXMZbDUd0KxAZ1LK5
	A0j/VKOHjxfXdZDwEF4eD6+gJdRnF3zWYh14EkCXTA9f3T4fmACgqJ/c0dfnlurvB3y/Do0eEsY16
	W3IHThFC05WpbqFkacrbHq4gKkuSAYebuvmRweNiU0RoDAp73ywhbeWplkjen9We6z+0rjH0ZQnoj
	29SSkdNlEd7XTyK+bHt1cZSq3qbCSRGLvauPfbWkv024Ob4blGGN1rbPG/fskGHVumfkj7bSH6dvl
	SIDzLkETCl0VKMxWDr48r0CbO5kJOrzI5pGgFEYbWAQHc+B5+GoxlUksh4aPsF+mCVhYslQ1PD9JX
	r2ANKDsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jScWm-0006cr-EH; Sun, 26 Apr 2020 08:20:40 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jScWe-0006bb-Lq
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 08:20:34 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6A881200BB8;
 Sun, 26 Apr 2020 10:20:30 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 802C8200BA2;
 Sun, 26 Apr 2020 10:20:24 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 258AD402E6;
 Sun, 26 Apr 2020 16:20:17 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, robh+dt@kernel.org, leonard.crestez@nxp.com,
 linux@rempel-privat.de, peng.fan@nxp.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Subject: [PATCH V5 2/2] dt-bindings: firmware: imx: Add more system controls
 and PM clock types
Date: Sun, 26 Apr 2020 16:11:44 +0800
Message-Id: <1587888704-7158-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587888704-7158-1-git-send-email-Anson.Huang@nxp.com>
References: <1587888704-7158-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_012032_853037_4FD83304 
X-CRM114-Status: UNSURE (   6.99  )
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

Add more system controls and PM clock types for usage.

Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
New patch.
---
 include/dt-bindings/firmware/imx/rsrc.h | 35 ++++++++++++++++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/include/dt-bindings/firmware/imx/rsrc.h b/include/dt-bindings/firmware/imx/rsrc.h
index cdcda00..54278d5 100644
--- a/include/dt-bindings/firmware/imx/rsrc.h
+++ b/include/dt-bindings/firmware/imx/rsrc.h
@@ -548,6 +548,23 @@
 #define IMX_SC_R_LAST			546
 
 /*
+ * Defines for SC PM CLK
+ */
+#define IMX_SC_PM_CLK_SLV_BUS		0	/* Slave bus clock */
+#define IMX_SC_PM_CLK_MST_BUS		1	/* Master bus clock */
+#define IMX_SC_PM_CLK_PER		2	/* Peripheral clock */
+#define IMX_SC_PM_CLK_PHY		3	/* Phy clock */
+#define IMX_SC_PM_CLK_MISC		4	/* Misc clock */
+#define IMX_SC_PM_CLK_MISC0		0	/* Misc 0 clock */
+#define IMX_SC_PM_CLK_MISC1		1	/* Misc 1 clock */
+#define IMX_SC_PM_CLK_MISC2		2	/* Misc 2 clock */
+#define IMX_SC_PM_CLK_MISC3		3	/* Misc 3 clock */
+#define IMX_SC_PM_CLK_MISC4		4	/* Misc 4 clock */
+#define IMX_SC_PM_CLK_CPU		2	/* CPU clock */
+#define IMX_SC_PM_CLK_PLL		4	/* PLL */
+#define IMX_SC_PM_CLK_BYPASS		4	/* Bypass clock */
+
+/*
  * Defines for SC CONTROL
  */
 #define IMX_SC_C_TEMP				0
@@ -596,6 +613,22 @@
 #define IMX_SC_C_RST0				43
 #define IMX_SC_C_RST1				44
 #define IMX_SC_C_SEL0				45
-#define IMX_SC_C_LAST				46
+#define IMX_SC_C_CALIB0				46
+#define IMX_SC_C_CALIB1				47
+#define IMX_SC_C_CALIB2				48
+#define IMX_SC_C_IPG_DEBUG			49
+#define IMX_SC_C_IPG_DOZE			50
+#define IMX_SC_C_IPG_WAIT			51
+#define IMX_SC_C_IPG_STOP			52
+#define IMX_SC_C_IPG_STOP_MODE			53
+#define IMX_SC_C_IPG_STOP_ACK			54
+#define IMX_SC_C_SYNC_CTRL			55
+#define IMX_SC_C_OFS_AUDIO_ALT			56
+#define IMX_SC_C_DSP_BYP			57
+#define IMX_SC_C_CLK_GEN_EN			58
+#define IMX_SC_C_INTF_SEL			59
+#define IMX_SC_C_RXC_DLY			60
+#define IMX_SC_C_TIMER_SEL			61
+#define IMX_SC_C_LAST				62
 
 #endif /* __DT_BINDINGS_RSCRC_IMX_H */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
