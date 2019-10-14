Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFB9D5B7D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 08:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5LbIXYhL9NQ6nG61tMUZ6le7on7Gdz+A26nabddSbY=; b=Z0jI9Sn4S8dFFa
	B4Fn/D1SbFSvRoGtxLR7+AGQ4OkTrLYg1bp0yA5hC29BpzivAfYGL47XoGFnLgG7AK9n6dFWAkzgR
	Jot1Fqq40JMTn9j4mFpsAjF6At5/S0Mdc5G1Q9vwnfqumSSt3wQyPGMbG706CJA/Z8Z/vXuEcStLa
	7E5dWHYL2uPQ8Az6gHiwpyRGHBSHhieBGhbhEyBFMT4PfimRLzHarhBt2ldMqmqWgNeYii/PvI/lR
	HkUfDgkRHDePrZ/qCeZY5K8JgPfGCB1cPqHuV+OlPVxrR6DnJlmbYG8Qct7CoaO4rAF4pS0w4wsAs
	iv+KwlbUQqDaxaoxu/SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJu1M-0006VH-BM; Mon, 14 Oct 2019 06:39:56 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJu0U-0005rr-GA; Mon, 14 Oct 2019 06:39:06 +0000
X-UUID: 512f48c9a4a9411f968f5d5bfffcf5eb-20191013
X-UUID: 512f48c9a4a9411f968f5d5bfffcf5eb-20191013
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2034538293; Sun, 13 Oct 2019 22:38:17 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 13 Oct 2019 23:38:56 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 14 Oct 2019 14:38:54 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 14 Oct 2019 14:38:54 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v3 3/7] iommu/mediatek: Use gather to achieve the tlb range
 flush
Date: Mon, 14 Oct 2019 14:38:17 +0800
Message-ID: <1571035101-4213-4-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1571035101-4213-1-git-send-email-yong.wu@mediatek.com>
References: <1571035101-4213-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_233902_573619_D0BEC83B 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Note: If iotlb_sync comes from iommu_iotlb_gather_add_page, we have to
avoid retry the lock since the spinlock have already been acquired.

Suggested-by: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
1) This is the special case backtrace:

 mtk_iommu_iotlb_sync+0x50/0xa0
 mtk_iommu_tlb_flush_page_nosync+0x5c/0xd0
 __arm_v7s_unmap+0x174/0x598
 arm_v7s_unmap+0x30/0x48
 mtk_iommu_unmap+0x50/0x78
 __iommu_unmap+0xa4/0xf8

2) The checking "if (gather->start == ULONG_MAX) return;" also is
necessary. It will happened when unmap only go to _flush_walk, then
enter this tlb_sync.
---
 drivers/iommu/mtk_iommu.c | 29 +++++++++++++++++++++++++----
 drivers/iommu/mtk_iommu.h |  1 +
 2 files changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 5f594d6..8712afc 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -234,7 +234,12 @@ static void mtk_iommu_tlb_flush_page_nosync(struct iommu_iotlb_gather *gather,
 					    unsigned long iova, size_t granule,
 					    void *cookie)
 {
-	mtk_iommu_tlb_add_flush_nosync(iova, granule, granule, true, cookie);
+	struct mtk_iommu_data *data = cookie;
+	struct iommu_domain *domain = &data->m4u_dom->domain;
+
+	data->is_in_tlb_gather_add_page = true;
+	iommu_iotlb_gather_add_page(domain, gather, iova, granule);
+	data->is_in_tlb_gather_add_page = false;
 }
 
 static const struct iommu_flush_ops mtk_iommu_flush_ops = {
@@ -453,12 +458,28 @@ static void mtk_iommu_flush_iotlb_all(struct iommu_domain *domain)
 static void mtk_iommu_iotlb_sync(struct iommu_domain *domain,
 				 struct iommu_iotlb_gather *gather)
 {
+	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
 	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
+	bool is_in_gather = data->is_in_tlb_gather_add_page;
+	size_t length = gather->end - gather->start;
 	unsigned long flags;
 
-	spin_lock_irqsave(&dom->pgtlock, flags);
-	mtk_iommu_tlb_sync(mtk_iommu_get_m4u_data());
-	spin_unlock_irqrestore(&dom->pgtlock, flags);
+	if (gather->start == ULONG_MAX)
+		return;
+
+	/*
+	 * Avoid acquire the lock when it's in gather_add_page since the lock
+	 * has already been held.
+	 */
+	if (!is_in_gather)
+		spin_lock_irqsave(&dom->pgtlock, flags);
+
+	mtk_iommu_tlb_add_flush_nosync(gather->start, length, gather->pgsize,
+				       false, data);
+	mtk_iommu_tlb_sync(data);
+
+	if (!is_in_gather)
+		spin_unlock_irqrestore(&dom->pgtlock, flags);
 }
 
 static phys_addr_t mtk_iommu_iova_to_phys(struct iommu_domain *domain,
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index fc0f16e..d29af1d 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -58,6 +58,7 @@ struct mtk_iommu_data {
 	struct iommu_group		*m4u_group;
 	bool                            enable_4GB;
 	bool				tlb_flush_active;
+	bool				is_in_tlb_gather_add_page;
 
 	struct iommu_device		iommu;
 	const struct mtk_iommu_plat_data *plat_data;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
