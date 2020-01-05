Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E3A130788
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 11:59:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=szBy8IiFLaxQZ4Ejehts5jexViUtppIC5IDs7R3jcNQ=; b=mP+u8M1M0jAKun
	Q81FHBNRKI5pJg2rEqS6KObBQWxEk7x4loFRNn8QjiAa7nGOGbJtF40s+sdr824o0AiD8RYyTIJUr
	AFLLFtknVq934P7UbodZ5uDANkfI6bR6XmRSviW1vcJJuFIozAjuKnoLelhZxpZ9AsEn7DAri72mT
	rkyeDgC89bRyxjkolv2Awggrd41027DyadWbZV4dVW/i8w9N3VFRlg5mHW4OIt0A116lYveh5cBZl
	yisEDm0RcR9nwSAEHmtB572ZIAKqHEgTbnhN195F6KlPK215I8FrcpW9L8hiMbydFN82xnK89XSVJ
	Xgi/CGqgE0Gw++XVvj0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io3dE-0006Rx-Ls; Sun, 05 Jan 2020 10:59:40 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io3aM-0003wY-G7; Sun, 05 Jan 2020 10:56:44 +0000
X-UUID: d4aa83f2fb484c1c931b68072be03485-20200105
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=19qaQnoV6yRHuMfo5UJqrDyTeI5nPaBleiGqUf3+VGg=; 
 b=BGXoRFP4UuLfzvDZyTPJUNam8T/ysEt6P5xpjK4NAwInyvL10d7QjbMjKt7NvN/+WIHG1hUbWb1tFui1p+YcIvjw8mTWn3m91APxc02Hvr7JtvuOi1GiM9YltcIfy38qVspqQwxUVCpKR12C/z4PW71k4Lha7QiXjUnEESoHNg4=;
X-UUID: d4aa83f2fb484c1c931b68072be03485-20200105
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 449201745; Sun, 05 Jan 2020 02:56:33 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 02:47:45 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 18:46:49 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 5 Jan 2020 18:45:47 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [PATCH v2 17/19] iommu/mediatek: Add iova reserved function
Date: Sun, 5 Jan 2020 18:45:21 +0800
Message-ID: <20200105104523.31006-18-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200105104523.31006-1-chao.hao@mediatek.com>
References: <20200105104523.31006-1-chao.hao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_025642_575131_CA8A30AC 
X-CRM114-Status: GOOD (  11.79  )
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

For multiple iommu_domains, we need to reserve some iova
regions, so we will add mtk_iommu_resv_iova_region structure.
It includes the start address and size of iova and iommu_resv_type.
Based on the function, we will realize multiple mtk_iommu_domains

Signed-off-by: Anan Sun <anan.sun@mediatek.com>
Signed-off-by: Chao Hao <chao.hao@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 47 +++++++++++++++++++++++++++++++++++++++
 drivers/iommu/mtk_iommu.h | 12 ++++++++++
 2 files changed, 59 insertions(+)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 9a7f2a388e3e..ac658fa16136 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -691,6 +691,51 @@ static int mtk_iommu_of_xlate(struct device *dev, struct of_phandle_args *args)
 	return iommu_fwspec_add_ids(dev, args->args, 1);
 }
 
+/* reserve/dir-map iova region */
+static void mtk_iommu_get_resv_regions(struct device *dev,
+				       struct list_head *head)
+{
+	struct mtk_iommu_data *data = dev_iommu_fwspec_get(dev)->iommu_priv;
+	unsigned int i, total_cnt = data->plat_data->resv_cnt;
+	const struct mtk_iommu_resv_iova_region *resv_data;
+	struct iommu_resv_region *region;
+	unsigned long base = 0;
+	size_t size = 0;
+	int prot = IOMMU_WRITE | IOMMU_READ;
+
+	resv_data = data->plat_data->resv_region;
+
+	for (i = 0; i < total_cnt; i++) {
+		size = 0;
+		if (resv_data[i].iova_size) {
+			base = (unsigned long)resv_data[i].iova_base;
+			size = resv_data[i].iova_size;
+		}
+		if (!size)
+			continue;
+
+		region = iommu_alloc_resv_region(base, size, prot,
+						 resv_data[i].type);
+		if (!region)
+			return;
+
+		list_add_tail(&region->list, head);
+
+		dev_dbg(data->dev, "%s iova 0x%x ~ 0x%x\n",
+			(resv_data[i].type == IOMMU_RESV_DIRECT) ? "dm" : "rsv",
+			(unsigned int)base, (unsigned int)(base + size - 1));
+	}
+}
+
+static void mtk_iommu_put_resv_regions(struct device *dev,
+				       struct list_head *head)
+{
+	struct iommu_resv_region *entry, *next;
+
+	list_for_each_entry_safe(entry, next, head, list)
+		kfree(entry);
+}
+
 static const struct iommu_ops mtk_iommu_ops = {
 	.domain_alloc	= mtk_iommu_domain_alloc,
 	.domain_free	= mtk_iommu_domain_free,
@@ -705,6 +750,8 @@ static const struct iommu_ops mtk_iommu_ops = {
 	.remove_device	= mtk_iommu_remove_device,
 	.device_group	= mtk_iommu_device_group,
 	.of_xlate	= mtk_iommu_of_xlate,
+	.get_resv_regions = mtk_iommu_get_resv_regions,
+	.put_resv_regions = mtk_iommu_put_resv_regions,
 	.pgsize_bitmap	= SZ_4K | SZ_64K | SZ_1M | SZ_16M,
 };
 
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index a38b26018abe..7f4d498ec5f6 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -36,6 +36,12 @@ enum mtk_iommu_plat {
 	M4U_MT8183,
 };
 
+struct mtk_iommu_resv_iova_region {
+	dma_addr_t		iova_base;
+	size_t			iova_size;
+	enum iommu_resv_type	type;
+};
+
 /*
  * reserved IOVA Domain for IOMMU users of HW limitation.
  */
@@ -68,6 +74,12 @@ struct mtk_iommu_plat_data {
 	u32                 inv_sel_reg;
 	unsigned char       larbid_remap[2][MTK_LARB_NR_MAX];
 	const struct mtk_domain_data	*dom_data;
+	/*
+	 * reserve/dir-mapping iova region data
+	 * todo: for different reserve needs on multiple iommu domains
+	 */
+	const unsigned int  resv_cnt;
+	const struct mtk_iommu_resv_iova_region *resv_region;
 };
 
 struct mtk_iommu_domain;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
