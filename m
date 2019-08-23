Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9DA9A83B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=42c+JIl2oD5QnF2T6ZEo4NyF04mw6DPcVg+KDWUe+2U=; b=N5IGfj4I2ZFBs4
	Y3iQLJQOoISKLoV5m/QpXGaDSE/+y5lpIfgTaez17NMomx/yqtsv18f7t+JYRZes0kN1IasETgfRG
	h9BQGv60u4wslM7tmaE/xSTAMqLOdizi6bFbETISXRZGpdb1QyxZYbweYO/SiK0oGUkcUiY0pj1BW
	ef8EcTPub0DRvyfnRNh7M1jeXkzLPl6pzDDfHoEscTaJkAf4qWGPyQbwV3BX213ut/pV3JVOPiL/3
	yUgsSw0UMV4Af/ir70IH+vaPUsnGO9IDT6KjCYeticDidPeErBaPBU/G5iGJ/bZRu6m4QoUfyXgP0
	rnILgXUQ8qRqxD+gvDcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13go-0004BR-QN; Fri, 23 Aug 2019 07:08:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13Yu-0000Hq-St; Fri, 23 Aug 2019 07:00:43 +0000
X-UUID: 50301179a216404fb6dc0ecdcdc62980-20190822
X-UUID: 50301179a216404fb6dc0ecdcdc62980-20190822
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1764075417; Thu, 22 Aug 2019 23:00:29 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 00:00:27 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 15:00:25 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 23 Aug 2019 15:00:24 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 06/11] phy: phy-mtk-tphy: add a property for disconnect
 threshold
Date: Fri, 23 Aug 2019 15:00:13 +0800
Message-ID: <5ef3767e2f91e7626fe6eb7062fb323c0a13e28a.1566542697.git.chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <e99c0d7a55869a4425250c601b80a3331c9d0976.1566542696.git.chunfeng.yun@mediatek.com>
References: <e99c0d7a55869a4425250c601b80a3331c9d0976.1566542696.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2DA235EDB00F30916EE10F33CB1914360D8B8F23F3E947904FFD1430B8129C832000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_000041_750508_BCD24065 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is used to tune the threshold of disconnect

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
 drivers/phy/mediatek/phy-mtk-tphy.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
index cb2ed3b25068..5afe33621dbc 100644
--- a/drivers/phy/mediatek/phy-mtk-tphy.c
+++ b/drivers/phy/mediatek/phy-mtk-tphy.c
@@ -60,6 +60,8 @@
 #define U3P_USBPHYACR6		0x018
 #define PA6_RG_U2_BC11_SW_EN		BIT(23)
 #define PA6_RG_U2_OTG_VBUSCMP_EN	BIT(20)
+#define PA6_RG_U2_DISCTH		GENMASK(7, 4)
+#define PA6_RG_U2_DISCTH_VAL(x)	((0xf & (x)) << 4)
 #define PA6_RG_U2_SQTH		GENMASK(3, 0)
 #define PA6_RG_U2_SQTH_VAL(x)	(0xf & (x))
 
@@ -300,6 +302,7 @@ struct mtk_phy_instance {
 	int eye_src;
 	int eye_vrt;
 	int eye_term;
+	int discth;
 	bool bc12_en;
 };
 
@@ -850,9 +853,12 @@ static void phy_parse_property(struct mtk_tphy *tphy,
 				 &instance->eye_vrt);
 	device_property_read_u32(dev, "mediatek,eye-term",
 				 &instance->eye_term);
-	dev_dbg(dev, "bc12:%d, src:%d, vrt:%d, term:%d\n",
+	device_property_read_u32(dev, "mediatek,discth",
+				 &instance->discth);
+	dev_dbg(dev, "bc12:%d, src:%d, vrt:%d, term:%d, disc:%d\n",
 		instance->bc12_en, instance->eye_src,
-		instance->eye_vrt, instance->eye_term);
+		instance->eye_vrt, instance->eye_term,
+		instance->discth);
 }
 
 static void u2_phy_props_set(struct mtk_tphy *tphy,
@@ -888,6 +894,13 @@ static void u2_phy_props_set(struct mtk_tphy *tphy,
 		tmp |= PA1_RG_TERM_SEL_VAL(instance->eye_term);
 		writel(tmp, com + U3P_USBPHYACR1);
 	}
+
+	if (instance->discth) {
+		tmp = readl(com + U3P_USBPHYACR6);
+		tmp &= ~PA6_RG_U2_DISCTH;
+		tmp |= PA6_RG_U2_DISCTH_VAL(instance->discth);
+		writel(tmp, com + U3P_USBPHYACR6);
+	}
 }
 
 static int mtk_phy_init(struct phy *phy)
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
