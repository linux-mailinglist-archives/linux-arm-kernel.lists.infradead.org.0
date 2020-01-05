Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82156130773
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 11:58:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6WzEGIdwcDeJudGK1pnAEiRBIuM7VDfAKCXSiVkoQ0=; b=GUvGBxrp6kkVld
	2nRJyQvx0VL7tdttKT1X93betXFpi+pY59xt28DhOTUCoph95nNNfk5SaFiupyRo0Hw/eJUPgpvWh
	eWiuUG4/Pwd/rvf21OaSRMJmIDtNtiEkTgZkO/qZx59xsY8gnAA6tJABLxOATQu/qtRXz+TiI/QsH
	puBW/4cu5zmBXAhf+QmH2ea4qVXRx6d7vOiotIbZfx06l+P9oea4ebQA1GxeexPXtYGbq1S23JANs
	QLPC0Itim2RrZF4ckkfejxhlEcYU6Lur3ZKqcbg1TW6xkzFZ1JV4OEU/mkpSNkG/rBhrSknS2x0JJ
	uFaDqUMRqFpDmUWcwrxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io3bS-0004oz-8j; Sun, 05 Jan 2020 10:57:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io3aE-0003wZ-OL; Sun, 05 Jan 2020 10:56:36 +0000
X-UUID: 7c56a709dbc14a0fac98c79b923e723c-20200105
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=/GRQoslk/LSHOdzw5eAs8KczvypmvSkfZUU+7BeTfag=; 
 b=iHpEnVGDXPbIQvRBR0prAWJpUYC0bU/M1QECl9CV++epeXquwgMlvnQAo3wBdaaVYfkxEoVJWn1k7Ia2O8qFNaZJjpV8aUu1I7qzmgImV2yDNK/evLz7FkW8RZWqAYB8Hygo2/WRtcVsXqAdzyRClImk7c31BlmCFZnwl0Zyt44=;
X-UUID: 7c56a709dbc14a0fac98c79b923e723c-20200105
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1830045773; Sun, 05 Jan 2020 02:56:31 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 02:47:44 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 18:46:49 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 5 Jan 2020 18:45:45 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [PATCH v2 16/19] iommu/mediatek: Remove mtk_iommu_get_m4u_data api
Date: Sun, 5 Jan 2020 18:45:20 +0800
Message-ID: <20200105104523.31006-17-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200105104523.31006-1-chao.hao@mediatek.com>
References: <20200105104523.31006-1-chao.hao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_025634_807561_82CD8828 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anan Sun <anan.sun@mediatek.com>, devicetree@vger.kernel.org,
 Jun Yan <jun.yan@mediatek.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Chao Hao <chao.hao@mediatek.com>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, Cui Zhang <zhang.cui@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Based on previous modifications in the patchset, A mtk_iommu_data
structure represent a iommu, we will add mtk_iommu_data to mtk_iommu_domain
to show the iommu which mtk_iommu_domain belongs to, so we can get
mtk_iommu_data by mtk_iommu_domain, don't use to "mtk_iommu_get_m4u_data"
any more.

Besides, there is a small SW adjustment, we will move alloc iommu_group
into "create_iommu_group"

Signed-off-by: Chao Hao <chao.hao@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 74 +++++++++++++++++++--------------------
 1 file changed, 37 insertions(+), 37 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index bfb1831afae9..9a7f2a388e3e 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -115,6 +115,7 @@ struct mtk_iommu_domain {
 	u32				id;
 	struct iommu_domain		domain;
 	struct iommu_group		*group;
+	struct mtk_iommu_data		*data;
 	struct list_head		list;
 };
 
@@ -162,23 +163,6 @@ static LIST_HEAD(m4ulist);	/* List all the M4U HWs */
 
 #define for_each_m4u(data)	list_for_each_entry(data, &m4ulist, list)
 
-/*
- * There may be 1 or 2 M4U HWs, But we always expect they are in the same domain
- * for the performance.
- *
- * Here always return the mtk_iommu_data of the first probed M4U where the
- * iommu domain information is recorded.
- */
-static struct mtk_iommu_data *mtk_iommu_get_m4u_data(void)
-{
-	struct mtk_iommu_data *data;
-
-	for_each_m4u(data)
-		return data;
-
-	return NULL;
-}
-
 static u32 get_domain_id(struct mtk_iommu_data *data, u32 portid)
 {
 	u32 dom_id = 0;
@@ -397,6 +381,27 @@ static void mtk_iommu_config(struct mtk_iommu_data *data,
 	}
 }
 
+static struct iommu_group *create_iommu_group(struct mtk_iommu_data *data,
+					      struct device *dev)
+{
+	struct mtk_iommu_pgtable *pgtable = mtk_iommu_get_pgtable();
+
+	/* Prepare for allocate mtk_iommu_domain */
+	data->m4u_group = mtk_iommu_get_group(dev);
+	if (!data->m4u_group) {
+		data->m4u_group = iommu_group_alloc();
+		if (IS_ERR(data->m4u_group))
+			dev_err(dev, "Failed to allocate M4U IOMMU group\n");
+	} else {
+		iommu_group_ref_get(data->m4u_group);
+	}
+
+	/* save the latest init device */
+	pgtable->init_dev = dev;
+
+	return data->m4u_group;
+}
+
 static struct mtk_iommu_pgtable *create_pgtable(struct mtk_iommu_data *data)
 {
 	struct mtk_iommu_pgtable *pgtable;
@@ -462,7 +467,7 @@ static int mtk_iommu_attach_pgtable(struct mtk_iommu_data *data,
 static struct iommu_domain *mtk_iommu_domain_alloc(unsigned type)
 {
 	struct mtk_iommu_pgtable *pgtable = mtk_iommu_get_pgtable();
-	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
+	struct mtk_iommu_data *data;
 	struct mtk_iommu_domain *dom;
 	struct device *dev;
 
@@ -471,6 +476,7 @@ static struct iommu_domain *mtk_iommu_domain_alloc(unsigned type)
 
 	if (pgtable) {
 		dev = pgtable->init_dev;
+		data = dev_iommu_fwspec_get(dev)->iommu_priv;
 		if (!data->m4u_group) {
 			pr_err("%s, find m4u_group failed\n", __func__);
 			return NULL;
@@ -491,6 +497,7 @@ static struct iommu_domain *mtk_iommu_domain_alloc(unsigned type)
 	if (dom->id >= data->plat_data->dom_cnt)
 		goto  put_dma_cookie;
 
+	dom->data = data;
 	dom->group = data->m4u_group;
 	/* Update our support page sizes bitmap */
 	dom->domain.pgsize_bitmap = pgtable->cfg.pgsize_bitmap;
@@ -548,7 +555,8 @@ static int mtk_iommu_map(struct iommu_domain *domain, unsigned long iova,
 			 phys_addr_t paddr, size_t size, int prot, gfp_t gfp)
 {
 	struct mtk_iommu_pgtable *pgtable = mtk_iommu_get_pgtable();
-	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
+	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
+	struct mtk_iommu_data *data = dom->data;
 
 	/* The "4GB mode" M4U physically can not use the lower remap of Dram. */
 	if (data->enable_4GB)
@@ -569,27 +577,30 @@ static size_t mtk_iommu_unmap(struct iommu_domain *domain,
 
 static void mtk_iommu_flush_iotlb_all(struct iommu_domain *domain)
 {
-	mtk_iommu_tlb_flush_all(mtk_iommu_get_m4u_data());
+	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
+
+	mtk_iommu_tlb_flush_all(dom->data);
 }
 
 static void mtk_iommu_iotlb_sync(struct iommu_domain *domain,
 				 struct iommu_iotlb_gather *gather)
 {
-	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
+	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
 	size_t length = gather->end - gather->start;
 
 	if (gather->start == ULONG_MAX)
 		return;
 
 	mtk_iommu_tlb_flush_range_sync(gather->start, length, gather->pgsize,
-				       data);
+				       dom->data);
 }
 
 static phys_addr_t mtk_iommu_iova_to_phys(struct iommu_domain *domain,
 					  dma_addr_t iova)
 {
 	struct mtk_iommu_pgtable *pgtable = mtk_iommu_get_pgtable();
-	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
+	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
+	struct mtk_iommu_data *data = dom->data;
 	phys_addr_t pa;
 
 	pa = pgtable->iop->iova_to_phys(pgtable->iop, iova);
@@ -636,7 +647,7 @@ static void mtk_iommu_remove_device(struct device *dev)
 
 static struct iommu_group *mtk_iommu_device_group(struct device *dev)
 {
-	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
+	struct mtk_iommu_data *data = dev->iommu_fwspec->iommu_priv;
 	struct mtk_iommu_pgtable *pgtable;
 	int ret = 0;
 
@@ -652,20 +663,9 @@ static struct iommu_group *mtk_iommu_device_group(struct device *dev)
 		}
 	}
 
-	/* All the client devices are in the same m4u iommu-group */
-	data->m4u_group = mtk_iommu_get_group(dev);
-	if (!data->m4u_group) {
-		data->m4u_group = iommu_group_alloc();
-		if (IS_ERR(data->m4u_group))
-			dev_err(dev, "Failed to allocate M4U IOMMU group\n");
-	} else {
-		iommu_group_ref_get(data->m4u_group);
-	}
+	dev_info(data->dev, "%s, init data:%d\n", __func__, data->m4u_id);
 
-	/* save the latest init device */
-	pgtable->init_dev = dev;
-
-	return data->m4u_group;
+	return create_iommu_group(data, dev);
 }
 
 static int mtk_iommu_of_xlate(struct device *dev, struct of_phandle_args *args)
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
