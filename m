Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39552ED9B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:02:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzZB6fAwWf36bytRdz5ou/f+ihxFzfj61IhlketDuv0=; b=bP0YGHErKnN2z3
	9J/7e8jRpf8gtrxCShGRQ9Uo/Z1A4TcLR6JxevnQcgTCYas8g5arnRVkDO76eqgbC76CrsfdKRo99
	EmQGlkzB5y/uwUr4CluKxo+a6qq2ySaewqmbPUjW1Lr5vyz/bxCVfmP68WxdHRPO1PDhcEEO/MTwo
	7WEiq7QMCzJGUUU1J0xeK98ZkTOzHKPLpy8zihn1X2GAPWK2bvuBjjiLkpHcoTwpIqK8zj2Mzydim
	cfH4PvslhNIWktJ2Uxv4VtbIbygvCext9zHmVjFfjhO4+84U9/N4udfDWgTs9FGMuQsZJYqsyePyY
	Q4Syo57HybFqNRzRT4TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRWNT-000360-Qp; Mon, 04 Nov 2019 07:02:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRWNF-00031E-9C; Mon, 04 Nov 2019 07:02:02 +0000
X-UUID: 917dce42b97d4fe79d60f1dc7c89c561-20191103
X-UUID: 917dce42b97d4fe79d60f1dc7c89c561-20191103
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 295291606; Sun, 03 Nov 2019 23:01:53 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 3 Nov 2019 23:01:56 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 15:01:54 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 4 Nov 2019 15:01:54 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v5 4/7] iommu/mediatek: Delete the leaf in the tlb_flush
Date: Mon, 4 Nov 2019 15:01:05 +0800
Message-ID: <1572850868-22315-5-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1572850868-22315-1-git-send-email-yong.wu@mediatek.com>
References: <1572850868-22315-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_230201_357604_B817B524 
X-CRM114-Status: GOOD (  11.10  )
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
