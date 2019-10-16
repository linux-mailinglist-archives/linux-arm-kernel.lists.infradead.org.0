Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3ECD86A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 05:34:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzZB6fAwWf36bytRdz5ou/f+ihxFzfj61IhlketDuv0=; b=PYy4pHTmmSrThB
	VnjHL4vLGIoWerzEYeNYTTd/nX8u89FtPYEntmZN+y8PSn8uKDiS+JWAoONVRX5jw21lPmN7Y2J12
	hoFx560KFwcXMGUT9MDnm9glxuUMsRKB7FS3tNF7w9ZGAy8nmpPyOlPQyDqlJeA/xLK0Retze+WeD
	IaRT58KecioJBToZkbm8D5gnYaXz+wNcbZyiIoqBo/naEoQkEerGK3ph5FF7P7kxFPhwdghj6jiTT
	Cp03r+hBh+eDIDDAzcTyh4sLMZjvw+H26B1f/tWeeLDGFk2Y2YLr/tS7FOHkAEtMrVg9jXXcotM+S
	OgL+upE4sDMYXrE07DmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKa53-0006Xs-HP; Wed, 16 Oct 2019 03:34:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKa4c-0006NU-Ve; Wed, 16 Oct 2019 03:34:10 +0000
X-UUID: 5ce559eb100f42ce8f9b160056de6223-20191015
X-UUID: 5ce559eb100f42ce8f9b160056de6223-20191015
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1803627048; Tue, 15 Oct 2019 19:33:47 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 15 Oct 2019 20:33:58 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 16 Oct 2019 11:33:56 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 16 Oct 2019 11:33:55 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v4 4/7] iommu/mediatek: Delete the leaf in the tlb_flush
Date: Wed, 16 Oct 2019 11:33:09 +0800
Message-ID: <1571196792-12382-5-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1571196792-12382-1-git-send-email-yong.wu@mediatek.com>
References: <1571196792-12382-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: E8A02799B48257988FAC1A4C5347391867372FABBA3D2DB71B9738816F1062AF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_203407_063706_B79D237E 
X-CRM114-Status: GOOD (  11.26  )
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, chao.hao@mediatek.com, edison.hsieh@mediatek.com,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Tomasz Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, yong.wu@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In our tlb range flush, we don't care the "leaf". Remove it to simplify
the code. no functional change.

"granule" also is unnecessary for us, Keep it satisfy the format of
tlb_flush_walk.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/mtk_iommu.c | 21 ++++-----------------
 1 file changed, 4 insertions(+), 17 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 81ac95f..1d7254c 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -174,8 +174,7 @@ static void mtk_iommu_tlb_flush_all(void *cookie)
 }
 
 static void mtk_iommu_tlb_add_flush_nosync(unsigned long iova, size_t size,
-					   size_t granule, bool leaf,
-					   void *cookie)
+					   size_t granule, void *cookie)
 {
 	struct mtk_iommu_data *data = cookie;
 
@@ -223,19 +222,7 @@ static void mtk_iommu_tlb_flush_walk(unsigned long iova, size_t size,
 	unsigned long flags;
 
 	spin_lock_irqsave(&data->tlb_lock, flags);
-	mtk_iommu_tlb_add_flush_nosync(iova, size, granule, false, cookie);
-	mtk_iommu_tlb_sync(cookie);
-	spin_unlock_irqrestore(&data->tlb_lock, flags);
-}
-
-static void mtk_iommu_tlb_flush_leaf(unsigned long iova, size_t size,
-				     size_t granule, void *cookie)
-{
-	struct mtk_iommu_data *data = cookie;
-	unsigned long flags;
-
-	spin_lock_irqsave(&data->tlb_lock, flags);
-	mtk_iommu_tlb_add_flush_nosync(iova, size, granule, true, cookie);
+	mtk_iommu_tlb_add_flush_nosync(iova, size, granule, cookie);
 	mtk_iommu_tlb_sync(cookie);
 	spin_unlock_irqrestore(&data->tlb_lock, flags);
 }
@@ -253,7 +240,7 @@ static void mtk_iommu_tlb_flush_page_nosync(struct iommu_iotlb_gather *gather,
 static const struct iommu_flush_ops mtk_iommu_flush_ops = {
 	.tlb_flush_all = mtk_iommu_tlb_flush_all,
 	.tlb_flush_walk = mtk_iommu_tlb_flush_walk,
-	.tlb_flush_leaf = mtk_iommu_tlb_flush_leaf,
+	.tlb_flush_leaf = mtk_iommu_tlb_flush_walk,
 	.tlb_add_page = mtk_iommu_tlb_flush_page_nosync,
 };
 
@@ -475,7 +462,7 @@ static void mtk_iommu_iotlb_sync(struct iommu_domain *domain,
 
 	spin_lock_irqsave(&data->tlb_lock, flags);
 	mtk_iommu_tlb_add_flush_nosync(gather->start, length, gather->pgsize,
-				       false, data);
+				       data);
 	mtk_iommu_tlb_sync(data);
 	spin_unlock_irqrestore(&data->tlb_lock, flags);
 }
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
