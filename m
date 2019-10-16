Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD1AD86C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 05:35:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqwJdoebH2JGyJn69MuIViHNJChKpnux7ny/TSR8PRg=; b=A3k6tB7PdI/dVz
	Z8UlL+PLIRSsrP7pXivrSQndACz4UGp4+xJ1yyqU5ytuUW2HlygiktjqMnzAct5a746HHx/YYMXTD
	VA2aavJ+KhcwGN2KvihvKapU+HtFik5QzVmjfsEtMbscB66dExHOM21J1yeUqFW+LI+0x3mwIqNRz
	jIhXk8KEx2RhBHtjCHxcvZOBwZBxVmyj3U81CzPzdpYKSygH63rWo5l1X8VxcfK1kqN9UQliAjPQR
	kqooChAmEv94CZu8ywjs8qKHXopGGh5LvEW/gIAKp6+Bu4IyaNNJENWBTltx9G0RJLwIM/ZweiNQC
	At6swkPKccrCsmW6nYMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKa5r-0007GC-U7; Wed, 16 Oct 2019 03:35:23 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKa4m-0006Vx-1g; Wed, 16 Oct 2019 03:34:17 +0000
X-UUID: 5b741450edd9438b8ae22bf71297dcec-20191015
X-UUID: 5b741450edd9438b8ae22bf71297dcec-20191015
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1026588013; Tue, 15 Oct 2019 19:34:00 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 15 Oct 2019 20:34:11 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 16 Oct 2019 11:34:09 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 16 Oct 2019 11:34:08 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v4 6/7] iommu/mediatek: Get rid of the pgtlock
Date: Wed, 16 Oct 2019 11:33:11 +0800
Message-ID: <1571196792-12382-7-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1571196792-12382-1-git-send-email-yong.wu@mediatek.com>
References: <1571196792-12382-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_203416_107403_BADDEB6F 
X-CRM114-Status: GOOD (  12.52  )
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

Now we have tlb_lock for the HW tlb flush, then pgtable code hasn't
needed the external "pgtlock" for a while. this patch remove the
"pgtlock".

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 25 +++----------------------
 1 file changed, 3 insertions(+), 22 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 0e5f41f..c2b7ed5 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -101,8 +101,6 @@
 #define MTK_M4U_TO_PORT(id)		((id) & 0x1f)
 
 struct mtk_iommu_domain {
-	spinlock_t			pgtlock; /* lock for page table */
-
 	struct io_pgtable_cfg		cfg;
 	struct io_pgtable_ops		*iop;
 
@@ -295,8 +293,6 @@ static int mtk_iommu_domain_finalise(struct mtk_iommu_domain *dom)
 {
 	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
 
-	spin_lock_init(&dom->pgtlock);
-
 	dom->cfg = (struct io_pgtable_cfg) {
 		.quirks = IO_PGTABLE_QUIRK_ARM_NS |
 			IO_PGTABLE_QUIRK_NO_PERMS |
@@ -395,18 +391,13 @@ static int mtk_iommu_map(struct iommu_domain *domain, unsigned long iova,
 {
 	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
 	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
-	unsigned long flags;
-	int ret;
 
 	/* The "4GB mode" M4U physically can not use the lower remap of Dram. */
 	if (data->enable_4GB)
 		paddr |= BIT_ULL(32);
 
-	spin_lock_irqsave(&dom->pgtlock, flags);
-	ret = dom->iop->map(dom->iop, iova, paddr, size, prot);
-	spin_unlock_irqrestore(&dom->pgtlock, flags);
-
-	return ret;
+	/* Synchronize with the tlb_lock */
+	return dom->iop->map(dom->iop, iova, paddr, size, prot);
 }
 
 static size_t mtk_iommu_unmap(struct iommu_domain *domain,
@@ -414,14 +405,8 @@ static size_t mtk_iommu_unmap(struct iommu_domain *domain,
 			      struct iommu_iotlb_gather *gather)
 {
 	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
-	unsigned long flags;
-	size_t unmapsz;
-
-	spin_lock_irqsave(&dom->pgtlock, flags);
-	unmapsz = dom->iop->unmap(dom->iop, iova, size, gather);
-	spin_unlock_irqrestore(&dom->pgtlock, flags);
 
-	return unmapsz;
+	return dom->iop->unmap(dom->iop, iova, size, gather);
 }
 
 static void mtk_iommu_flush_iotlb_all(struct iommu_domain *domain)
@@ -447,13 +432,9 @@ static phys_addr_t mtk_iommu_iova_to_phys(struct iommu_domain *domain,
 {
 	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
 	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
-	unsigned long flags;
 	phys_addr_t pa;
 
-	spin_lock_irqsave(&dom->pgtlock, flags);
 	pa = dom->iop->iova_to_phys(dom->iop, iova);
-	spin_unlock_irqrestore(&dom->pgtlock, flags);
-
 	if (data->enable_4GB && pa >= MTK_IOMMU_4GB_MODE_REMAP_BASE)
 		pa &= ~BIT_ULL(32);
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
