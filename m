Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1412211B890
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 17:23:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BYZXgfQPT1U2DxzWMpuif/RfJrJqKiZe9LJCogl1OI=; b=XW+5/DnA4xDqYy
	Ess7emU151hK/A5yOdSPNAMGPH+ECTwOXrAH1GtMwu2jhv6qxNtEV2gAWMnetQFyeao096IUlSjLb
	1tPbKo/80vwOf1vbySjMMsKE1HN5qFfxU/KyQgHtXOtH7dnN2/dIMbrSN1UrRAExXS1rLWkbs4d1f
	HfwWBb4HUoyK/2vY58RLzLlHt8zCJpSnHuy9HuIZGUV78uFPsrviaaY9bOQ0OsvD9lZdQKeezBgvz
	FInITLkkLAQQ9QwcLcLm2chBuRNcvPSSmfyIXRC13PMKzc05nIHiWZZalqx0KrnDvglCW189kdHhe
	TDX2NLL+zdaWUa9dUi7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4ld-0006iQ-OL; Wed, 11 Dec 2019 16:23:13 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if4lU-0006hF-2C; Wed, 11 Dec 2019 16:23:05 +0000
X-UUID: 13e5011802fd4c5bb0498a0c0796e903-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=xMYI/rBhHY4Sx0dFvP6i+g8yPPuQV+8OY+pjlW+wWM8=; 
 b=EvXF3RnxSWxiv2c1tBtEICNgrR7YzBlZcAJB+hqUUnAVxU5JRvl82Bsjj6dTu7cOO3WEE7bnuUZEqRuhf+CRHNO89aNYOi2IDxFINQG1ZWhuIScYiIJjfuh2KADpKs6RKR+irCsaQ798JUnIi4BdCQ+J4TcCGgKE0stIcVZrsNs=;
X-UUID: 13e5011802fd4c5bb0498a0c0796e903-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 187416626; Wed, 11 Dec 2019 08:22:58 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 08:24:03 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 00:22:23 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 00:22:13 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <yong.liang@mediatek.com>, <wim@linux-watchdog.org>, <linux@roeck-us.net>, 
 <p.zabel@pengutronix.de>, <matthias.bgg@gmail.com>,
 <linux-watchdog@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <devicetree@vger.kernel.org>
Subject: [PATCH v6 1/2] dt-bindings: mediatek: mt8183: Add #reset-cells
Date: Thu, 12 Dec 2019 00:22:35 +0800
Message-ID: <1576081356-18298-2-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1576081356-18298-1-git-send-email-jiaxin.yu@mediatek.com>
References: <1576081356-18298-1-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 53FB9AB0FF4671BAF7EB700E0F72317E5E11C0BE438D010CF69C6EE81A75401F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_082304_113519_9735038B 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: sboyd@kernel.org, yingjoe.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "yong.liang" <yong.liang@mediatek.com>

Add #reset-cells property and update example

Signed-off-by: yong.liang <yong.liang@mediatek.com>
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
