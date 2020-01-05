Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C16A130799
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 12:02:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCt+ImdUTPNWgHMOx3cLyhFZ/L3REWI/p2CinxzWicg=; b=L9FdmqkoyhOleg
	d6/WSI23K9gtaJxUooDuZyw8vIWFthubZjGkVJka9Wfcuqim16miAyzHWYNHJ3tp+gteqcfGW7QEu
	hpSQGUYSyH/RM/p2qAf+GEjQVEmi5+gueK3f5FmyjYD+b4qzg8rACZcJBfGe1Gg/dehUGOsfYjMjq
	q9UV6vwsox0hwdSsbJVLKv1xBHXkEyfhZK2exRYzbP82S+Agcr9/OZYLnKFgEQGjtAHymwPLBW7SM
	quOFP1FnDqm1wMZuAFE+svp402vGK7ONfEu6SiUYinzuDbCmzjDwxd7hfxyc0QJHOfZbPDgpSgBYh
	tZ0cWWm8TwybYol3MSDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io3fT-0001Md-W8; Sun, 05 Jan 2020 11:02:00 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io3aj-0004Jc-Na; Sun, 05 Jan 2020 10:57:08 +0000
X-UUID: b7fb78bf8a7844dcad39f17189593713-20200105
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=WYOd08EzerHDPlgL6xUYgzCvGPNKGXb02WcxQ9aFfTw=; 
 b=MccbIq+BBaS/ja1ljZE6uLZeXypGrUB2M0xHbtzTVRDyZzr0GQlZ4pyIXm0KDZfWm+bdhZeIVXTl+ZjIkFQFy6KJ5J0topV2MLgGwc94BG9xJlclfKw9w7lh1Tt243VCAlOtjGRnUJh/Zo1wid3ObcenwvmT03kQhqV8n9Y2diU=;
X-UUID: b7fb78bf8a7844dcad39f17189593713-20200105
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 519258790; Sun, 05 Jan 2020 02:56:57 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 02:47:06 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 18:46:39 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 5 Jan 2020 18:45:35 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [PATCH v2 12/19] iommu/mediatek: Change get the way of m4u_group
Date: Sun, 5 Jan 2020 18:45:16 +0800
Message-ID: <20200105104523.31006-13-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200105104523.31006-1-chao.hao@mediatek.com>
References: <20200105104523.31006-1-chao.hao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_025705_826325_00D0A2FF 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

1. Redefine mtk_iommu_domain structure, it will include iommu_group
and iommu_domain. Different mtk_iommu_domains can be distinguished by
ID. When we realize multiple mtk_iommu_domains, every mtk_iommu_domain
can describe one iova region.
2. In theory, every device has one iommu_group, so this patch will
get iommu_group by checking device. All the devices belong to the same
m4u_group currently, so they also use the same mtk_iommu_domain(id=0).

Signed-off-by: Chao Hao <chao.hao@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 46 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index b34bd3abccf8..bf781f4d7364 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -111,12 +111,16 @@
 #define MTK_M4U_TO_PORT(id)		((id) & 0x1f)
 
 struct mtk_iommu_domain {
+	u32				id;
 	struct iommu_domain		domain;
+	struct iommu_group		*group;
+	struct list_head		list;
 };
 
 struct mtk_iommu_pgtable {
 	struct io_pgtable_cfg	cfg;
 	struct io_pgtable_ops	*iop;
+	struct list_head	m4u_dom_v2;
 };
 
 static struct mtk_iommu_pgtable *share_pgtable;
@@ -167,6 +171,41 @@ static struct mtk_iommu_data *mtk_iommu_get_m4u_data(void)
 	return NULL;
 }
 
+static u32 get_domain_id(void)
+{
+	/* only support one mtk_iommu_domain currently */
+	return 0;
+}
+
+static u32 mtk_iommu_get_domain_id(void)
+{
+	return get_domain_id();
+}
+
+static struct mtk_iommu_domain *get_mtk_domain(struct device *dev)
+{
+	struct mtk_iommu_data *data = dev->iommu_fwspec->iommu_priv;
+	struct mtk_iommu_domain *dom;
+	u32 domain_id = mtk_iommu_get_domain_id();
+
+	list_for_each_entry(dom, &data->pgtable->m4u_dom_v2, list) {
+		if (dom->id == domain_id)
+			return dom;
+	}
+	return NULL;
+}
+
+static struct iommu_group *mtk_iommu_get_group(struct device *dev)
+{
+	struct mtk_iommu_domain *dom;
+
+	dom = get_mtk_domain(dev);
+	if (dom)
+		return dom->group;
+
+	return NULL;
+}
+
 static struct mtk_iommu_pgtable *mtk_iommu_get_pgtable(void)
 {
 	return share_pgtable;
@@ -328,6 +367,8 @@ static struct mtk_iommu_pgtable *create_pgtable(struct mtk_iommu_data *data)
 	if (!pgtable)
 		return ERR_PTR(-ENOMEM);
 
+	INIT_LIST_HEAD(&pgtable->m4u_dom_v2);
+
 	pgtable->cfg = (struct io_pgtable_cfg) {
 		.quirks = IO_PGTABLE_QUIRK_ARM_NS |
 			IO_PGTABLE_QUIRK_NO_PERMS |
@@ -382,6 +423,7 @@ static int mtk_iommu_attach_pgtable(struct mtk_iommu_data *data,
 static struct iommu_domain *mtk_iommu_domain_alloc(unsigned type)
 {
 	struct mtk_iommu_pgtable *pgtable = mtk_iommu_get_pgtable();
+	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
 	struct mtk_iommu_domain *dom;
 
 	if (type != IOMMU_DOMAIN_DMA)
@@ -399,12 +441,15 @@ static struct iommu_domain *mtk_iommu_domain_alloc(unsigned type)
 	if (iommu_get_dma_cookie(&dom->domain))
 		goto  free_dom;
 
+	dom->group = data->m4u_group;
+	dom->id = mtk_iommu_get_domain_id();
 	/* Update our support page sizes bitmap */
 	dom->domain.pgsize_bitmap = pgtable->cfg.pgsize_bitmap;
 
 	dom->domain.geometry.aperture_start = 0;
 	dom->domain.geometry.aperture_end = DMA_BIT_MASK(32);
 	dom->domain.geometry.force_aperture = true;
+	list_add_tail(&dom->list, &pgtable->m4u_dom_v2);
 
 	return &dom->domain;
 
@@ -560,6 +605,7 @@ static struct iommu_group *mtk_iommu_device_group(struct device *dev)
 	}
 
 	/* All the client devices are in the same m4u iommu-group */
+	data->m4u_group = mtk_iommu_get_group(dev);
 	if (!data->m4u_group) {
 		data->m4u_group = iommu_group_alloc();
 		if (IS_ERR(data->m4u_group))
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
