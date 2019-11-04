Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCD4ED9D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:12:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1z8WO3dKtDxv1X+vv4NMrEuXFFplYR7NlfiK5twhE0=; b=SrS7/El3XNQ2x5
	MG9g7MuyJ7EylDR9WUzbzjGmewS4YBwwuD5xfrUj6c738dpf+Mk9oAhnwYSoktZqz1cPHBaIzidro
	cFt3AwLwLUafBcv+0zXs31LLxFlKFtQTEYluqnHiCbHz2XhvCCzw+gujMDcKUOmraVlDOjHtR1MZu
	GNmaBcNAF+NBuihvCzI9cH7TMXLbCBwwJE0NNFiC05R/imTEgsasw45BSF40Ccd1uLO+K7ecMGDSQ
	srKghGquw1PBWjqWqPe6SLN4hxtgiLMnW3fZvYcRdiau2NXecxu7yrwn/th1WUcxzTwjqwhW8fNvy
	k1RLeZrw3NoamsngoF1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRWXa-0001vv-9T; Mon, 04 Nov 2019 07:12:42 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRWWq-0001Eb-Lz; Mon, 04 Nov 2019 07:11:58 +0000
X-UUID: d73f87808f76498391e2a554ab49de9b-20191103
X-UUID: d73f87808f76498391e2a554ab49de9b-20191103
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1015232480; Sun, 03 Nov 2019 23:11:45 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 3 Nov 2019 23:01:47 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 15:01:46 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 4 Nov 2019 15:01:45 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v5 3/7] iommu/mediatek: Use gather to achieve the tlb range
 flush
Date: Mon, 4 Nov 2019 15:01:04 +0800
Message-ID: <1572850868-22315-4-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1572850868-22315-1-git-send-email-yong.wu@mediatek.com>
References: <1572850868-22315-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_231156_732468_4840133A 
X-CRM114-Status: GOOD (  10.70  )
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

Use the iommu_gather mechanism to achieve the tlb range flush.
Gather the iova range in the "tlb_add_page", then flush the merged iova
range in iotlb_sync.

Suggested-by: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index c2f6c78..81ac95f 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -245,11 +245,9 @@ static void mtk_iommu_tlb_flush_page_nosync(struct iommu_iotlb_gather *gather,
 					    void *cookie)
 {
 	struct mtk_iommu_data *data = cookie;
-	unsigned long flags;
+	struct iommu_domain *domain = &data->m4u_dom->domain;
 
-	spin_lock_irqsave(&data->tlb_lock, flags);
-	mtk_iommu_tlb_add_flush_nosync(iova, granule, granule, true, cookie);
-	spin_unlock_irqrestore(&data->tlb_lock, flags);
+	iommu_iotlb_gather_add_page(domain, gather, iova, granule);
 }
 
 static const struct iommu_flush_ops mtk_iommu_flush_ops = {
@@ -469,9 +467,15 @@ static void mtk_iommu_iotlb_sync(struct iommu_domain *domain,
 				 struct iommu_iotlb_gather *gather)
 {
 	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
+	size_t length = gather->end - gather->start;
 	unsigned long flags;
 
+	if (gather->start == ULONG_MAX)
+		return;
+
 	spin_lock_irqsave(&data->tlb_lock, flags);
+	mtk_iommu_tlb_add_flush_nosync(gather->start, length, gather->pgsize,
+				       false, data);
 	mtk_iommu_tlb_sync(data);
 	spin_unlock_irqrestore(&data->tlb_lock, flags);
 }
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
