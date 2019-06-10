Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A863B597
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=88r3rfaej3+Hp5xM8ApSGIIU38bOL5sw6c7/p9Le8vU=; b=PRwVVvDu4FQusv
	ZsYl0nVZzRgdpaLu6YEkqniu5ZDASQscqDqSjZzZSq7b//SI/NcjeoyR/Q6kBMZ77iU+WpKrD5w3I
	nRXr6cNxlclAEWq4ZiqCm8Qy6LMYlX1SmPES6uLFCygaxSQ3IgBUNlaH3GM/vFMpTqtWnVxogKmsA
	hH2pfH9XCth9tQeHkC2TY20cZMat6bqExSiFoOJaOe/WjX0UONIv68PVPbXebe90yFhZFjSCXyjdh
	IDpb2KS5q40sMSd3ezwJLDwanBH0SGD8L7FjCqXxf4iA1+uxEUBNl68JHex2t8IBkIpdw+F0ETzLr
	0opgxdOZkZH+e0thnzzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJul-00082o-3V; Mon, 10 Jun 2019 13:00:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJt4-0005ZC-Ft; Mon, 10 Jun 2019 12:59:00 +0000
X-UUID: f17c16b7b326440fa3a8c8e4fb145472-20190610
X-UUID: f17c16b7b326440fa3a8c8e4fb145472-20190610
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1428777908; Mon, 10 Jun 2019 04:56:51 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 05:56:49 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 20:56:48 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Jun 2019 20:56:47 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 07/12] media: mtk-vcodec: Get rid of mtk_smi_larb_get/put
Date: Mon, 10 Jun 2019 20:55:08 +0800
Message-ID: <1560171313-28299-8-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560171313-28299-1-git-send-email-yong.wu@mediatek.com>
References: <1560171313-28299-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: E3B554CA9814F8DE290363028ECFB8C800EDD3C6815DBE7A02F10874D5466F472000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_055858_599801_B33C90B1 
X-CRM114-Status: GOOD (  11.36  )
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 yong.wu@mediatek.com, yingjoe.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 Tiffany Lin <tiffany.lin@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MediaTek IOMMU has already added the device_link between the consumer
and smi-larb device. If the vcodec device call the pm_runtime_get_sync,
the smi-larb's pm_runtime_get_sync also be called automatically.

CC: Tiffany Lin <tiffany.lin@mediatek.com>
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Reviewed-by: Evan Green <evgreen@chromium.org>
---
 .../media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c  | 21 ----------
 drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h |  3 --
 drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c |  1 -
 .../media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c  | 47 ----------------------
 4 files changed, 72 deletions(-)

diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c
index 7884465..6caad39 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c
@@ -16,7 +16,6 @@
 #include <linux/of_address.h>
 #include <linux/of_platform.h>
 #include <linux/pm_runtime.h>
-#include <soc/mediatek/smi.h>
 
 #include "mtk_vcodec_dec_pm.h"
 #include "mtk_vcodec_util.h"
@@ -24,7 +23,6 @@
 
 int mtk_vcodec_init_dec_pm(struct mtk_vcodec_dev *mtkdev)
 {
-	struct device_node *node;
 	struct platform_device *pdev;
 	struct mtk_vcodec_pm *pm;
 	struct mtk_vcodec_clk *dec_clk;
@@ -35,18 +33,6 @@ int mtk_vcodec_init_dec_pm(struct mtk_vcodec_dev *mtkdev)
 	pm = &mtkdev->pm;
 	pm->mtkdev = mtkdev;
 	dec_clk = &pm->vdec_clk;
-	node = of_parse_phandle(pdev->dev.of_node, "mediatek,larb", 0);
-	if (!node) {
-		mtk_v4l2_err("of_parse_phandle mediatek,larb fail!");
-		return -1;
-	}
-
-	pdev = of_find_device_by_node(node);
-	if (WARN_ON(!pdev)) {
-		of_node_put(node);
-		return -1;
-	}
-	pm->larbvdec = &pdev->dev;
 	pdev = mtkdev->plat_dev;
 	pm->dev = &pdev->dev;
 
@@ -121,12 +107,6 @@ void mtk_vcodec_dec_clock_on(struct mtk_vcodec_pm *pm)
 			goto error;
 		}
 	}
-
-	ret = mtk_smi_larb_get(pm->larbvdec);
-	if (ret) {
-		mtk_v4l2_err("mtk_smi_larb_get larbvdec fail %d", ret);
-		goto error;
-	}
 	return;
 
 error:
@@ -139,7 +119,6 @@ void mtk_vcodec_dec_clock_off(struct mtk_vcodec_pm *pm)
 	struct mtk_vcodec_clk *dec_clk = &pm->vdec_clk;
 	int i = 0;
 
-	mtk_smi_larb_put(pm->larbvdec);
 	for (i = dec_clk->clk_num - 1; i >= 0; i--)
 		clk_disable_unprepare(dec_clk->clk_info[i].vcodec_clk);
 }
diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h b/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
index 662a84b..cf56b07 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
@@ -196,11 +196,8 @@ struct mtk_vcodec_clk {
  */
 struct mtk_vcodec_pm {
 	struct mtk_vcodec_clk	vdec_clk;
-	struct device	*larbvdec;
 
 	struct mtk_vcodec_clk	venc_clk;
-	struct device	*larbvenc;
-	struct device	*larbvenclt;
 	struct device	*dev;
 	struct mtk_vcodec_dev	*mtkdev;
 };
diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
index 50351ad..80d1c4e 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
@@ -16,7 +16,6 @@
 #include <media/v4l2-event.h>
 #include <media/v4l2-mem2mem.h>
 #include <media/videobuf2-dma-contig.h>
-#include <soc/mediatek/smi.h>
 
 #include "mtk_vcodec_drv.h"
 #include "mtk_vcodec_enc.h"
diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c
index 39375b8..f61c65d 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c
@@ -16,7 +16,6 @@
 #include <linux/of_address.h>
 #include <linux/of_platform.h>
 #include <linux/pm_runtime.h>
-#include <soc/mediatek/smi.h>
 
 #include "mtk_vcodec_enc_pm.h"
 #include "mtk_vcodec_util.h"
@@ -25,49 +24,18 @@
 
 int mtk_vcodec_init_enc_pm(struct mtk_vcodec_dev *mtkdev)
 {
-	struct device_node *node;
 	struct platform_device *pdev;
 	struct mtk_vcodec_pm *pm;
 	struct mtk_vcodec_clk *enc_clk;
 	struct mtk_vcodec_clk_info *clk_info;
 	int ret = 0, i = 0;
-	struct device *dev;
 
 	pdev = mtkdev->plat_dev;
 	pm = &mtkdev->pm;
 	memset(pm, 0, sizeof(struct mtk_vcodec_pm));
 	pm->mtkdev = mtkdev;
 	pm->dev = &pdev->dev;
-	dev = &pdev->dev;
 	enc_clk = &pm->venc_clk;
-
-	node = of_parse_phandle(dev->of_node, "mediatek,larb", 0);
-	if (!node) {
-		mtk_v4l2_err("no mediatek,larb found");
-		return -ENODEV;
-	}
-	pdev = of_find_device_by_node(node);
-	of_node_put(node);
-	if (!pdev) {
-		mtk_v4l2_err("no mediatek,larb device found");
-		return -ENODEV;
-	}
-	pm->larbvenc = &pdev->dev;
-
-	node = of_parse_phandle(dev->of_node, "mediatek,larb", 1);
-	if (!node) {
-		mtk_v4l2_err("no mediatek,larb found");
-		return -ENODEV;
-	}
-
-	pdev = of_find_device_by_node(node);
-	of_node_put(node);
-	if (!pdev) {
-		mtk_v4l2_err("no mediatek,larb device found");
-		return -ENODEV;
-	}
-
-	pm->larbvenclt = &pdev->dev;
 	pdev = mtkdev->plat_dev;
 	pm->dev = &pdev->dev;
 
@@ -123,21 +91,8 @@ void mtk_vcodec_enc_clock_on(struct mtk_vcodec_pm *pm)
 		}
 	}
 
-	ret = mtk_smi_larb_get(pm->larbvenc);
-	if (ret) {
-		mtk_v4l2_err("mtk_smi_larb_get larb3 fail %d", ret);
-		goto larbvencerr;
-	}
-	ret = mtk_smi_larb_get(pm->larbvenclt);
-	if (ret) {
-		mtk_v4l2_err("mtk_smi_larb_get larb4 fail %d", ret);
-		goto larbvenclterr;
-	}
 	return;
 
-larbvenclterr:
-	mtk_smi_larb_put(pm->larbvenc);
-larbvencerr:
 clkerr:
 	for (i -= 1; i >= 0; i--)
 		clk_disable_unprepare(enc_clk->clk_info[i].vcodec_clk);
@@ -148,8 +103,6 @@ void mtk_vcodec_enc_clock_off(struct mtk_vcodec_pm *pm)
 	struct mtk_vcodec_clk *enc_clk = &pm->venc_clk;
 	int i = 0;
 
-	mtk_smi_larb_put(pm->larbvenc);
-	mtk_smi_larb_put(pm->larbvenclt);
 	for (i = enc_clk->clk_num - 1; i >= 0; i--)
 		clk_disable_unprepare(enc_clk->clk_info[i].vcodec_clk);
 }
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
