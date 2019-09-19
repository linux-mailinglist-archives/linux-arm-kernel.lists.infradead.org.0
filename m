Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5CAB75E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dFlFpG8zOiHS8r4ghcIfTHn6XO+dVcJgyy0KiB8+CAE=; b=Y29aNyohO8zchC
	/GU1ks2Jbms/ocNYmoCDphDzFuukl8R2aeBNtBml8QWvC/k6K9Jfe6sS3ZbspwIakjnhbvr9bv6rD
	KOaDYt4QdkbXujM3QMFj+t4ePphs+wc82/z8BRXuAAgLe2hj3gwFIQIghuRWSdXYdoC+Nfd/Awdsf
	uS5v8cqMW1hmRZwyHxMv1/zsWfy1xvwKHUt3qQs7lBvpcenXiTDINAmvnANrc2+TP37VQvOn9k6sI
	AcqpW64B3djvSRDxB0qIWXqNqYxF6qJ96/+/mo+p5c0ao/GdKjodhcdCrZMVTBW/fU6M1Xu5JYjXo
	pxcLSmhwkvsODhmQM+Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAsVN-0000l6-QV; Thu, 19 Sep 2019 09:13:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAsSq-0006sV-A7; Thu, 19 Sep 2019 09:11:03 +0000
X-UUID: 41fcbda64679482d83c780964aebc7a2-20190919
X-UUID: 41fcbda64679482d83c780964aebc7a2-20190919
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 972024226; Thu, 19 Sep 2019 01:10:52 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Sep 2019 02:10:51 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Sep 2019 17:10:49 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 19 Sep 2019 17:10:48 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 07/11] phy: phy-mtk-tphy: add a property for internal
 resistance
Date: Thu, 19 Sep 2019 17:10:38 +0800
Message-ID: <1568884242-22775-7-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1568884242-22775-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1568884242-22775-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: D30FC8D3634BCED326569C58B62A91951F0ED4C7EB27F2ABEF88D3F404F553DA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_021101_043570_6564DD79 
X-CRM114-Status: GOOD (  12.23  )
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

This is used to tune J-K voltage by internal R (resistance)

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v3: change commit log

v2: no changes
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
