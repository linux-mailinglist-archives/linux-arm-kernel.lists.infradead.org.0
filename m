Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D66013078B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 12:00:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OoEUioUlixBsEQ53jKQRF300K4S6kjBX627/9sZdJ/Q=; b=mVPi1CFcBU3ah/
	ccbUI+xEGXL1Q+qK9OWxvKBJ49V/OwSkr6b6dLG9h61oEOpL8Ygd3awDz+gVRj91eAw50jd4jPnUT
	31vBfCpfLTViMLlfV0U8jipYuV/kIZzNu/iTc2XdkuFgpuZ1Iu6TdGdwFR5+1JVBZuSmVJVb7vNiO
	B1Hbvnjg4YfyBAKW32xuRB4ikAKlJWyevPf7vm4ZbLiKK1DE8x6MTDijsYUeXc51SrQF/sS9vAyLK
	M7IXYdwo1fKQuxB1ec0jtOtFJtMQQ1IgBC8PZFEqGTgvmNS4/G+QS3S8rPBC9O3q4TngCrm2jq9OV
	E9OCiuJxIw08HJyBZJYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io3dw-00079u-Uz; Sun, 05 Jan 2020 11:00:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io3aN-0003wZ-Cs; Sun, 05 Jan 2020 10:56:45 +0000
X-UUID: 6de55ab6b4d04643985ea1eae013c4ad-20200105
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=BU3FHHq8lyI4GErrRVuqeiEhzwtLbu5dCFfMXEQDW1k=; 
 b=dZmqvsFqqAbaVWA9Z3Th8Pkv40jl79K/lv9nKFWDW6jSAxxXjGdEY6Xv5Tbrj0yIK1rQvSPVFtEbTvpcDmteATeF1SR2W3G5HwMcgKMKCrl4o7gGtiVY+f2R4w8uJmUlv+hQMwqotfNQW/iEFNhTRGrrjyPifR8MpQZZvVb46+0=;
X-UUID: 6de55ab6b4d04643985ea1eae013c4ad-20200105
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1098492096; Sun, 05 Jan 2020 02:56:33 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 02:47:38 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 18:46:44 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 5 Jan 2020 18:45:40 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [PATCH v2 14/19] iommu/mediatek: Add mtk_domain_data structure
Date: Sun, 5 Jan 2020 18:45:18 +0800
Message-ID: <20200105104523.31006-15-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200105104523.31006-1-chao.hao@mediatek.com>
References: <20200105104523.31006-1-chao.hao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_025643_548909_0A7F9899 
X-CRM114-Status: GOOD (  12.17  )
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

Add mtk_domain_data structure to describe how many iova regions
there are and the relevant the start and end address of each
iova region. The number of iova region is equal to the number
of mtk_iommu_domain. So we will use mtk_domain_data to initialize
the start and end iova of mtk_iommu_domain.

Signed-off-by: Chao Hao <chao.hao@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 17 +++++++++++++++--
 drivers/iommu/mtk_iommu.h | 17 +++++++++++++++++
 2 files changed, 32 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index f2137033ec59..b1ce0a2df583 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -122,6 +122,12 @@ struct mtk_iommu_pgtable {
 	struct io_pgtable_ops	*iop;
 	struct device		*init_dev;
 	struct list_head	m4u_dom_v2;
+	const struct mtk_domain_data	*dom_region;
+};
+
+const struct mtk_domain_data single_dom = {
+	.min_iova = 0x0,
+	.max_iova = DMA_BIT_MASK(32)
 };
 
 static struct mtk_iommu_pgtable *share_pgtable;
@@ -400,6 +406,7 @@ static struct mtk_iommu_pgtable *create_pgtable(struct mtk_iommu_data *data)
 		dev_err(data->dev, "Failed to alloc io pgtable\n");
 		return ERR_PTR(-EINVAL);
 	}
+	pgtable->dom_region = data->plat_data->dom_data;
 
 	dev_info(data->dev, "%s create pgtable done\n", __func__);
 
@@ -470,8 +477,10 @@ static struct iommu_domain *mtk_iommu_domain_alloc(unsigned type)
 	/* Update our support page sizes bitmap */
 	dom->domain.pgsize_bitmap = pgtable->cfg.pgsize_bitmap;
 
-	dom->domain.geometry.aperture_start = 0;
-	dom->domain.geometry.aperture_end = DMA_BIT_MASK(32);
+	dom->domain.geometry.aperture_start =
+				pgtable->dom_region->min_iova;
+	dom->domain.geometry.aperture_end =
+				pgtable->dom_region->max_iova;
 	dom->domain.geometry.force_aperture = true;
 	list_add_tail(&dom->list, &pgtable->m4u_dom_v2);
 
@@ -953,6 +962,7 @@ static const struct mtk_iommu_plat_data mt2712_data = {
 	.has_bclk     = true,
 	.has_vld_pa_rng   = true,
 	.dom_cnt = 1,
+	.dom_data = &single_dom,
 	.larbid_remap[0] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9},
 	.inv_sel_reg = REG_MMU_INV_SEL,
 };
@@ -960,6 +970,7 @@ static const struct mtk_iommu_plat_data mt2712_data = {
 static const struct mtk_iommu_plat_data mt6779_data = {
 	.m4u_plat = M4U_MT6779,
 	.dom_cnt = 1,
+	.dom_data = &single_dom,
 	.larbid_remap[0] = {0, 1, 2, 3, 5, 7, 10, 9},
 	/* vp6a, vp6b, mdla/core2, mdla/edmc*/
 	.larbid_remap[1] = {2, 0, 3, 1},
@@ -976,6 +987,7 @@ static const struct mtk_iommu_plat_data mt8173_data = {
 	.has_bclk     = true,
 	.reset_axi    = true,
 	.dom_cnt = 1,
+	.dom_data = &single_dom,
 	.larbid_remap[0] = {0, 1, 2, 3, 4, 5}, /* Linear mapping. */
 	.inv_sel_reg = REG_MMU_INV_SEL,
 };
@@ -984,6 +996,7 @@ static const struct mtk_iommu_plat_data mt8183_data = {
 	.m4u_plat     = M4U_MT8183,
 	.reset_axi    = true,
 	.dom_cnt = 1,
+	.dom_data = &single_dom,
 	.larbid_remap[0] = {0, 4, 5, 6, 7, 2, 3, 1},
 	.inv_sel_reg = REG_MMU_INV_SEL,
 };
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index 3a1c79222d09..a38b26018abe 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -36,6 +36,22 @@ enum mtk_iommu_plat {
 	M4U_MT8183,
 };
 
+/*
+ * reserved IOVA Domain for IOMMU users of HW limitation.
+ */
+
+/*
+ * struct mtk_domain_data:	domain configuration
+ * @min_iova:	Start address of iova
+ * @max_iova:	End address of iova
+ * Note: one user can only belong to one domain
+ */
+
+struct mtk_domain_data {
+	dma_addr_t	min_iova;
+	dma_addr_t	max_iova;
+};
+
 struct mtk_iommu_plat_data {
 	enum mtk_iommu_plat m4u_plat;
 	bool                has_4gb_mode;
@@ -51,6 +67,7 @@ struct mtk_iommu_plat_data {
 	u32                 m4u1_mask;
 	u32                 inv_sel_reg;
 	unsigned char       larbid_remap[2][MTK_LARB_NR_MAX];
+	const struct mtk_domain_data	*dom_data;
 };
 
 struct mtk_iommu_domain;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
