Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBE3130C7D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 04:19:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=adLgblLlbxPjJAiuJsd894Ulj/SRunrjUO35oOPI3B0=; b=AKjzjyXtU+aLtp
	wOcM4l9NJE67P5yK9wddHTjwnrzHomltx+DZ3h4vepTkRWGYaFPGeNuFwjo8A71VuLDmbQoL4/wsU
	ziGme8jq/NSDaLkzaakO5+4MXe4Ecmft6m4zz1lz3/V8A25+vVMZBv90DNjZeZPlJK+udSIRbK570
	xIRicqS4wgSPovhfneA1znC+5nkkB3L1eIa6IxPkYiE4EBQYoFo6gWwldTiD65P25cwNVZwhPbAzZ
	a0E6+LrmucqQ+d58U9q1mkRsRW/ymIT8sY8cQMdMhzfx/yEjpWAhWRUi4St1778r/z1c8KHnWtZN7
	1oVmuSpcxrL8Ha/RyH3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioIvs-0003sO-O9; Mon, 06 Jan 2020 03:19:56 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioIvS-0003dM-1a; Mon, 06 Jan 2020 03:19:31 +0000
X-UUID: 592524e2ab614c23a09f47861006380f-20200105
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=WwB4AGrud03Fgqpfaaa07NUMCVAw+pbHOjpMxql0HRM=; 
 b=MRwFI+vD143WVaSCieA4ukYY9P4aSfRSkIu9yvmgA9ZiwwV0gBUE35Lswosw3kM0FZk5zOK1OLcZ688lVz9ZEHnv4sFwm0UfaQ6ZzYSBoTzzOnnzBUzePR2k9HRgY+0qHryg7YDrkkG90ZJqfM3o/7IXTIKkU4WGoNLCjKMDCMQ=;
X-UUID: 592524e2ab614c23a09f47861006380f-20200105
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 993227797; Sun, 05 Jan 2020 19:19:26 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 19:11:43 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 6 Jan 2020 11:11:09 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 6 Jan 2020 11:10:11 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <yong.liang@mediatek.com>, <wim@linux-watchdog.org>, <linux@roeck-us.net>, 
 <p.zabel@pengutronix.de>, <matthias.bgg@gmail.com>,
 <linux-watchdog@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <devicetree@vger.kernel.org>, <chang-an.chen@mediatek.com>,
 <freddy.hsin@mediatek.com>
Subject: [PATCH v10 1/2] dt-bindings: mediatek: mt8183: Add #reset-cells
Date: Mon, 6 Jan 2020 11:11:35 +0800
Message-ID: <1578280296-18946-2-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1578280296-18946-1-git-send-email-jiaxin.yu@mediatek.com>
References: <1578280296-18946-1-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_191930_086620_FFA91CA8 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: sboyd@kernel.org, yingjoe.chen@mediatek.com,
 Jiaxin Yu <jiaxin.yu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add #reset-cells property and update example

Signed-off-by: yong.liang <yong.liang@mediatek.com>
Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 .../devicetree/bindings/watchdog/mtk-wdt.txt  | 10 ++++++---
 .../reset-controller/mt2712-resets.h          | 22 +++++++++++++++++++
 .../reset-controller/mt8183-resets.h          | 17 ++++++++++++++
 3 files changed, 46 insertions(+), 3 deletions(-)
 create mode 100644 include/dt-bindings/reset-controller/mt2712-resets.h

diff --git a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
index 92181b648f52..5a76ac262f8d 100644
--- a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
+++ b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
@@ -4,6 +4,7 @@ Required properties:
 
 - compatible should contain:
 	"mediatek,mt2701-wdt", "mediatek,mt6589-wdt": for MT2701
+	"mediatek,mt2712-wdt", "mediatek,mt6589-wdt": for MT2712
 	"mediatek,mt6589-wdt": for MT6589
 	"mediatek,mt6797-wdt", "mediatek,mt6589-wdt": for MT6797
 	"mediatek,mt7622-wdt", "mediatek,mt6589-wdt": for MT7622
@@ -14,11 +15,14 @@ Required properties:
 
 Optional properties:
 - timeout-sec: contains the watchdog timeout in seconds.
+- #reset-cells: Should be 1.
 
 Example:
 
-wdt: watchdog@10000000 {
-	compatible = "mediatek,mt6589-wdt";
-	reg = <0x10000000 0x18>;
+watchdog: watchdog@10007000 {
+	compatible = "mediatek,mt8183-wdt",
+		     "mediatek,mt6589-wdt";
+	reg = <0 0x10007000 0 0x100>;
 	timeout-sec = <10>;
+	#reset-cells = <1>;
 };
diff --git a/include/dt-bindings/reset-controller/mt2712-resets.h b/include/dt-bindings/reset-controller/mt2712-resets.h
new file mode 100644
index 000000000000..9e7ee762f076
--- /dev/null
+++ b/include/dt-bindings/reset-controller/mt2712-resets.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ * Author: Yong Liang <yong.liang@mediatek.com>
+ */
+
+#ifndef _DT_BINDINGS_RESET_CONTROLLER_MT2712
+#define _DT_BINDINGS_RESET_CONTROLLER_MT2712
+
+#define MT2712_TOPRGU_INFRA_SW_RST				0
+#define MT2712_TOPRGU_MM_SW_RST					1
+#define MT2712_TOPRGU_MFG_SW_RST				2
+#define MT2712_TOPRGU_VENC_SW_RST				3
+#define MT2712_TOPRGU_VDEC_SW_RST				4
+#define MT2712_TOPRGU_IMG_SW_RST				5
+#define MT2712_TOPRGU_INFRA_AO_SW_RST				8
+#define MT2712_TOPRGU_USB_SW_RST				9
+#define MT2712_TOPRGU_APMIXED_SW_RST				10
+
+#define MT2712_TOPRGU_SW_RST_NUM				11
+
+#endif  /* _DT_BINDINGS_RESET_CONTROLLER_MT2712 */
diff --git a/include/dt-bindings/reset-controller/mt8183-resets.h b/include/dt-bindings/reset-controller/mt8183-resets.h
index 8804e34ebdd4..a1bbd41e0d12 100644
--- a/include/dt-bindings/reset-controller/mt8183-resets.h
+++ b/include/dt-bindings/reset-controller/mt8183-resets.h
@@ -78,4 +78,21 @@
 #define MT8183_INFRACFG_AO_I2C7_SW_RST				126
 #define MT8183_INFRACFG_AO_I2C8_SW_RST				127
 
+#define MT8183_INFRACFG_SW_RST_NUM				128
+
+#define MT8183_TOPRGU_MM_SW_RST					1
+#define MT8183_TOPRGU_MFG_SW_RST				2
+#define MT8183_TOPRGU_VENC_SW_RST				3
+#define MT8183_TOPRGU_VDEC_SW_RST				4
+#define MT8183_TOPRGU_IMG_SW_RST				5
+#define MT8183_TOPRGU_MD_SW_RST					7
+#define MT8183_TOPRGU_CONN_SW_RST				9
+#define MT8183_TOPRGU_CONN_MCU_SW_RST				12
+#define MT8183_TOPRGU_IPU0_SW_RST				14
+#define MT8183_TOPRGU_IPU1_SW_RST				15
+#define MT8183_TOPRGU_AUDIO_SW_RST				17
+#define MT8183_TOPRGU_CAMSYS_SW_RST				18
+
+#define MT8183_TOPRGU_SW_RST_NUM				19
+
 #endif  /* _DT_BINDINGS_RESET_CONTROLLER_MT8183 */
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
