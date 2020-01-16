Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E11313E251
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:55:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K3ayrQCHoctYmpcTQfpnUaeBGXmBAXk/ZSsPbJTOBRs=; b=Giio+YSDqnp945
	wbFAsibmmwFBF+tqJbkKNkV0PIL9VDKlOHYerQNziQYJPU6u/LShAYd6l4Qr876Bp/EXRUalK5t6g
	EE+uIBFAjDOZPy9rIIRsIETwplw6yLexBnvfZQpO2ceD3f1xfj4QaL2azWsOrPYUKtpJtHNa2kLgW
	u9jG62XYUvWobPzqRUIIL+LXe8B8r2aUsalmH5zG7K8EQXcwiBjo6m3dnZ4OLDtH8TqgFecAt8Ipr
	vA+/tKMnI9cQMLJlT1fZjVo+E7ACQaEc0hNFZYx9Ra87Kzj3lqMEPXIhZ7dbNfuPHuPXUiHnKLICv
	KNx7vgP2Ld0UukMKuLxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8Qd-0002RI-HA; Thu, 16 Jan 2020 16:55:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8OK-0008Im-NY; Thu, 16 Jan 2020 16:53:14 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E845B2464B;
 Thu, 16 Jan 2020 16:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193587;
 bh=dM6YCGFR8LGtdDt4WEBiP7jA3Tqp0lBg0x4uum5xhug=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ioSCjPDvTZ+QdVQzvVyGaGGLol/zcdjDU5IknKwoNjkuihZ5KpZh873cn6qtHK4d/
 be521BgxxHpxsqfSWjbSx9bffZ2ydVCcEazGbK84r+4GyXiYRLN5TZIvKsf3xwdpsb
 TCxsqPbQWfPD2ciPmZVGL2qvLe+giBlwZWrYb1RY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 128/205] iommu/mediatek: Add a new tlb_lock for
 tlb_flush
Date: Thu, 16 Jan 2020 11:41:43 -0500
Message-Id: <20200116164300.6705-128-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085308_838275_9AE524DD 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Joerg Roedel <jroedel@suse.de>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yong Wu <yong.wu@mediatek.com>

[ Upstream commit da3cc91b8db403728cde03c8a95cba268d8cbf1b ]

The commit 4d689b619445 ("iommu/io-pgtable-arm-v7s: Convert to IOMMU API
TLB sync") help move the tlb_sync of unmap from v7s into the iommu
framework. It helps add a new function "mtk_iommu_iotlb_sync", But it
lacked the lock, then it will cause the variable "tlb_flush_active"
may be changed unexpectedly, we could see this warning log randomly:

mtk-iommu 10205000.iommu: Partial TLB flush timed out, falling back to
full flush

The HW requires tlb_flush/tlb_sync in pairs strictly, this patch adds
a new tlb_lock for tlb operations to fix this issue.

Fixes: 4d689b619445 ("iommu/io-pgtable-arm-v7s: Convert to IOMMU API TLB sync")
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Signed-off-by: Joerg Roedel <jroedel@suse.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/iommu/mtk_iommu.c | 23 ++++++++++++++++++++++-
 drivers/iommu/mtk_iommu.h |  1 +
 2 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 76b9388cf689..c2f6c78fee44 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -219,22 +219,37 @@ static void mtk_iommu_tlb_sync(void *cookie)
 static void mtk_iommu_tlb_flush_walk(unsigned long iova, size_t size,
 				     size_t granule, void *cookie)
 {
+	struct mtk_iommu_data *data = cookie;
+	unsigned long flags;
+
+	spin_lock_irqsave(&data->tlb_lock, flags);
 	mtk_iommu_tlb_add_flush_nosync(iova, size, granule, false, cookie);
 	mtk_iommu_tlb_sync(cookie);
+	spin_unlock_irqrestore(&data->tlb_lock, flags);
 }
 
 static void mtk_iommu_tlb_flush_leaf(unsigned long iova, size_t size,
 				     size_t granule, void *cookie)
 {
+	struct mtk_iommu_data *data = cookie;
+	unsigned long flags;
+
+	spin_lock_irqsave(&data->tlb_lock, flags);
 	mtk_iommu_tlb_add_flush_nosync(iova, size, granule, true, cookie);
 	mtk_iommu_tlb_sync(cookie);
+	spin_unlock_irqrestore(&data->tlb_lock, flags);
 }
 
 static void mtk_iommu_tlb_flush_page_nosync(struct iommu_iotlb_gather *gather,
 					    unsigned long iova, size_t granule,
 					    void *cookie)
 {
+	struct mtk_iommu_data *data = cookie;
+	unsigned long flags;
+
+	spin_lock_irqsave(&data->tlb_lock, flags);
 	mtk_iommu_tlb_add_flush_nosync(iova, granule, granule, true, cookie);
+	spin_unlock_irqrestore(&data->tlb_lock, flags);
 }
 
 static const struct iommu_flush_ops mtk_iommu_flush_ops = {
@@ -453,7 +468,12 @@ static void mtk_iommu_flush_iotlb_all(struct iommu_domain *domain)
 static void mtk_iommu_iotlb_sync(struct iommu_domain *domain,
 				 struct iommu_iotlb_gather *gather)
 {
-	mtk_iommu_tlb_sync(mtk_iommu_get_m4u_data());
+	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
+	unsigned long flags;
+
+	spin_lock_irqsave(&data->tlb_lock, flags);
+	mtk_iommu_tlb_sync(data);
+	spin_unlock_irqrestore(&data->tlb_lock, flags);
 }
 
 static phys_addr_t mtk_iommu_iova_to_phys(struct iommu_domain *domain,
@@ -733,6 +753,7 @@ static int mtk_iommu_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	spin_lock_init(&data->tlb_lock);
 	list_add_tail(&data->list, &m4ulist);
 
 	if (!iommu_present(&platform_bus_type))
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index fc0f16eabacd..8cae22de7663 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -58,6 +58,7 @@ struct mtk_iommu_data {
 	struct iommu_group		*m4u_group;
 	bool                            enable_4GB;
 	bool				tlb_flush_active;
+	spinlock_t			tlb_lock; /* lock for tlb range flush */
 
 	struct iommu_device		iommu;
 	const struct mtk_iommu_plat_data *plat_data;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
