Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A57BD0FDB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 15:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+eEs9ObctjvIgCOMMbJRxwjkwqpnzM76CAZwedVJH4=; b=kzLawF2TXmCv+l
	ECyOpAtrhhL5hZox9RJWXv9b4MBW3+hw0PVTqohGH4apuLUpfCwkfxZCPL8RPgh1Og25iApM4jbhv
	gV3lPHynuTmfdjO4gupAm7s1t12ZTAUP1pfwVgQAb+xBIaTQv6/ms/VA3GDGfe+NKsJZ7r3ORmdlV
	DLOp02df0iN9FOMSQ7wso9kPkyloKRm58OQHTySqF/e4iPvcdYK91uBh+oGUd+BH6SwVXr2RX3265
	j7YaN3zmmP99A/iMhXNR38AqpyG4SOPP70uR2EOWg8VT5Qatr4VTu4Ax6mfSB8+SghymIM8FvV7HD
	T84DewJQ99o6tUWy1NCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIBsV-00045I-Sw; Wed, 09 Oct 2019 13:19:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIBsB-00042h-2u; Wed, 09 Oct 2019 13:19:26 +0000
X-UUID: 595796d917274957be3fbfd5fbcca7d1-20191009
X-UUID: 595796d917274957be3fbfd5fbcca7d1-20191009
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 639843204; Wed, 09 Oct 2019 05:19:25 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 06:19:14 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 21:19:13 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 9 Oct 2019 21:19:12 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2 2/4] iommu/mediatek: Move the tlb_sync into tlb_flush
Date: Wed, 9 Oct 2019 21:19:01 +0800
Message-ID: <1570627143-29441-2-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1570627143-29441-1-git-send-email-yong.wu@mediatek.com>
References: <1570627143-29441-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_061923_143937_5800D981 
X-CRM114-Status: GOOD (  18.41  )
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
 srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Tomasz Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, yong.wu@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit 4d689b619445 ("iommu/io-pgtable-arm-v7s: Convert to IOMMU API
TLB sync") help move the tlb_sync of unmap from v7s into the iommu
framework. It helps add a new function "mtk_iommu_iotlb_sync", But it
lacked the dom->pgtlock, then it will cause the variable
"tlb_flush_active" may be changed unexpectedly, we could see this warning
log randomly:

mtk-iommu 10205000.iommu: Partial TLB flush timed out, falling back to
full flush

To fix this issue, we can add dom->pgtlock in the "mtk_iommu_iotlb_sync".

In addition, when checking this issue, we find that __arm_v7s_unmap call
io_pgtable_tlb_add_flush consecutively when it is supersection/largepage,
this also is potential unsafe for us. There is no tlb flush queue in the
MediaTek M4U HW. The HW always expect the tlb_flush/tlb_sync one by one.
If v7s don't always gurarantee the sequence, Thus, In this patch I move
the tlb_sync into tlb_flush(also rename the function deleting "_nosync").
and we don't care if it is leaf, rearrange the callback functions. Also,
the tlb flush/sync was already finished in v7s, then iotlb_sync is
unnecessary.

Fixes: 4d689b619445 ("iommu/io-pgtable-arm-v7s: Convert to IOMMU API TLB sync")
Signed-off-by: Chao Hao <chao.hao@mediatek.com>
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 63 +++++++++++++----------------------------------
 drivers/iommu/mtk_iommu.h |  1 -
 2 files changed, 17 insertions(+), 47 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 76b9388..24a13a6 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -173,11 +173,12 @@ static void mtk_iommu_tlb_flush_all(void *cookie)
 	}
 }
 
-static void mtk_iommu_tlb_add_flush_nosync(unsigned long iova, size_t size,
-					   size_t granule, bool leaf,
-					   void *cookie)
+static void mtk_iommu_tlb_add_flush(unsigned long iova, size_t size,
+				    size_t granule, void *cookie)
 {
 	struct mtk_iommu_data *data = cookie;
+	int ret;
+	u32 tmp;
 
 	for_each_m4u(data) {
 		writel_relaxed(F_INVLD_EN1 | F_INVLD_EN0,
@@ -188,21 +189,12 @@ static void mtk_iommu_tlb_add_flush_nosync(unsigned long iova, size_t size,
 			       data->base + REG_MMU_INVLD_END_A);
 		writel_relaxed(F_MMU_INV_RANGE,
 			       data->base + REG_MMU_INVALIDATE);
-		data->tlb_flush_active = true;
-	}
-}
-
-static void mtk_iommu_tlb_sync(void *cookie)
-{
-	struct mtk_iommu_data *data = cookie;
-	int ret;
-	u32 tmp;
-
-	for_each_m4u(data) {
-		/* Avoid timing out if there's nothing to wait for */
-		if (!data->tlb_flush_active)
-			return;
 
+		/*
+		 * There is no tlb flush queue in the HW, the HW always expect
+		 * tlb_flush and tlb_sync in pair strictly. Here tlb_sync always
+		 * follows tlb_flush to avoid break the sequence.
+		 */
 		ret = readl_poll_timeout_atomic(data->base + REG_MMU_CPE_DONE,
 						tmp, tmp != 0, 10, 100000);
 		if (ret) {
@@ -212,36 +204,21 @@ static void mtk_iommu_tlb_sync(void *cookie)
 		}
 		/* Clear the CPE status */
 		writel_relaxed(0, data->base + REG_MMU_CPE_DONE);
-		data->tlb_flush_active = false;
 	}
 }
 
-static void mtk_iommu_tlb_flush_walk(unsigned long iova, size_t size,
-				     size_t granule, void *cookie)
-{
-	mtk_iommu_tlb_add_flush_nosync(iova, size, granule, false, cookie);
-	mtk_iommu_tlb_sync(cookie);
-}
-
-static void mtk_iommu_tlb_flush_leaf(unsigned long iova, size_t size,
-				     size_t granule, void *cookie)
+static void mtk_iommu_tlb_flush_page(struct iommu_iotlb_gather *gather,
+				     unsigned long iova, size_t granule,
+				     void *cookie)
 {
-	mtk_iommu_tlb_add_flush_nosync(iova, size, granule, true, cookie);
-	mtk_iommu_tlb_sync(cookie);
-}
-
-static void mtk_iommu_tlb_flush_page_nosync(struct iommu_iotlb_gather *gather,
-					    unsigned long iova, size_t granule,
-					    void *cookie)
-{
-	mtk_iommu_tlb_add_flush_nosync(iova, granule, granule, true, cookie);
+	mtk_iommu_tlb_add_flush(iova, granule, granule, cookie);
 }
 
 static const struct iommu_flush_ops mtk_iommu_flush_ops = {
 	.tlb_flush_all = mtk_iommu_tlb_flush_all,
-	.tlb_flush_walk = mtk_iommu_tlb_flush_walk,
-	.tlb_flush_leaf = mtk_iommu_tlb_flush_leaf,
-	.tlb_add_page = mtk_iommu_tlb_flush_page_nosync,
+	.tlb_flush_walk = mtk_iommu_tlb_add_flush,
+	.tlb_flush_leaf = mtk_iommu_tlb_add_flush,
+	.tlb_add_page = mtk_iommu_tlb_flush_page,
 };
 
 static irqreturn_t mtk_iommu_isr(int irq, void *dev_id)
@@ -450,12 +427,6 @@ static void mtk_iommu_flush_iotlb_all(struct iommu_domain *domain)
 	mtk_iommu_tlb_flush_all(mtk_iommu_get_m4u_data());
 }
 
-static void mtk_iommu_iotlb_sync(struct iommu_domain *domain,
-				 struct iommu_iotlb_gather *gather)
-{
-	mtk_iommu_tlb_sync(mtk_iommu_get_m4u_data());
-}
-
 static phys_addr_t mtk_iommu_iova_to_phys(struct iommu_domain *domain,
 					  dma_addr_t iova)
 {
@@ -558,7 +529,7 @@ static int mtk_iommu_of_xlate(struct device *dev, struct of_phandle_args *args)
 	.map		= mtk_iommu_map,
 	.unmap		= mtk_iommu_unmap,
 	.flush_iotlb_all = mtk_iommu_flush_iotlb_all,
-	.iotlb_sync	= mtk_iommu_iotlb_sync,
+	/* No iotlb_sync here since the tlb_sync always follows the tlb_flush */
 	.iova_to_phys	= mtk_iommu_iova_to_phys,
 	.add_device	= mtk_iommu_add_device,
 	.remove_device	= mtk_iommu_remove_device,
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index fc0f16e..24712f5 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -57,7 +57,6 @@ struct mtk_iommu_data {
 	struct mtk_iommu_domain		*m4u_dom;
 	struct iommu_group		*m4u_group;
 	bool                            enable_4GB;
-	bool				tlb_flush_active;
 
 	struct iommu_device		iommu;
 	const struct mtk_iommu_plat_data *plat_data;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
