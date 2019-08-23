Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 400D49A809
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:06:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=deeU3asLPZLCCgoPVESl6eyWlbBNVkYr8fjbiDP+RBM=; b=D7EsWSYzndhVBn
	STsNufwMsh/H0MIOxrti4x5Ti7+nEJVmMOlMinaYchMZbGxMbXcZ1ahUSUjeKr0snvFpQlI0/Uq2y
	GCuJ9SIKqehT51KPdTyqaFOzo8+sIS3l0ayTqn3QStaoRkp49NVlwsGo++IVGHFZH5wcnM1uPI5ra
	AD8Gscu5OsK1W9D1xzZEJJwIlGV1wJDv4JZDOsbWq8//fapZK4Vvo5YXARPNRZuDLe9119lFFVaga
	JsGS1yT0jK7JHePFD7m0QilQw9rPSYa2zQ7qwTnFD/3PHSwLCJthYSYP+mLfhZWphT/Q8MRK7g22E
	IlOgAmralp020qXJjL/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13dz-0001rS-0D; Fri, 23 Aug 2019 07:05:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13Yu-0000IM-7x; Fri, 23 Aug 2019 07:00:42 +0000
X-UUID: 21ee5e141d2e44eebd189550c5c0638c-20190822
X-UUID: 21ee5e141d2e44eebd189550c5c0638c-20190822
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1146202726; Thu, 22 Aug 2019 23:00:32 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 00:00:30 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 15:00:26 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 23 Aug 2019 15:00:25 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 07/11] phy: phy-mtk-tphy: add a property for internal
 resistance
Date: Fri, 23 Aug 2019 15:00:14 +0800
Message-ID: <b89098f22cd172315b2202bd2adc04d3fb444431.1566542697.git.chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <e99c0d7a55869a4425250c601b80a3331c9d0976.1566542696.git.chunfeng.yun@mediatek.com>
References: <e99c0d7a55869a4425250c601b80a3331c9d0976.1566542696.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 952336DE87F3F03337E20D5B2966AF5FF1C4F4806F1A6D24A4980637340DBAEE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_000040_521571_61915F3D 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

This is used to tune internal resistance for J-K test

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
 drivers/phy/mediatek/phy-mtk-tphy.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
index 5afe33621dbc..4a2dc92f10f5 100644
--- a/drivers/phy/mediatek/phy-mtk-tphy.c
+++ b/drivers/phy/mediatek/phy-mtk-tphy.c
@@ -43,6 +43,8 @@
 #define PA0_RG_USB20_INTR_EN		BIT(5)
 
 #define U3P_USBPHYACR1		0x004
+#define PA1_RG_INTR_CAL		GENMASK(23, 19)
+#define PA1_RG_INTR_CAL_VAL(x)	((0x1f & (x)) << 19)
 #define PA1_RG_VRT_SEL			GENMASK(14, 12)
 #define PA1_RG_VRT_SEL_VAL(x)	((0x7 & (x)) << 12)
 #define PA1_RG_TERM_SEL		GENMASK(10, 8)
@@ -302,6 +304,7 @@ struct mtk_phy_instance {
 	int eye_src;
 	int eye_vrt;
 	int eye_term;
+	int intr;
 	int discth;
 	bool bc12_en;
 };
@@ -853,12 +856,14 @@ static void phy_parse_property(struct mtk_tphy *tphy,
 				 &instance->eye_vrt);
 	device_property_read_u32(dev, "mediatek,eye-term",
 				 &instance->eye_term);
+	device_property_read_u32(dev, "mediatek,intr",
+				 &instance->intr);
 	device_property_read_u32(dev, "mediatek,discth",
 				 &instance->discth);
-	dev_dbg(dev, "bc12:%d, src:%d, vrt:%d, term:%d, disc:%d\n",
+	dev_dbg(dev, "bc12:%d, src:%d, vrt:%d, term:%d, intr:%d, disc:%d\n",
 		instance->bc12_en, instance->eye_src,
 		instance->eye_vrt, instance->eye_term,
-		instance->discth);
+		instance->intr, instance->discth);
 }
 
 static void u2_phy_props_set(struct mtk_tphy *tphy,
@@ -895,6 +900,13 @@ static void u2_phy_props_set(struct mtk_tphy *tphy,
 		writel(tmp, com + U3P_USBPHYACR1);
 	}
 
+	if (instance->intr) {
+		tmp = readl(com + U3P_USBPHYACR1);
+		tmp &= ~PA1_RG_INTR_CAL;
+		tmp |= PA1_RG_INTR_CAL_VAL(instance->intr);
+		writel(tmp, com + U3P_USBPHYACR1);
+	}
+
 	if (instance->discth) {
 		tmp = readl(com + U3P_USBPHYACR6);
 		tmp &= ~PA6_RG_U2_DISCTH;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
