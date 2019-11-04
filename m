Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D46FEDF8F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 13:03:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Bnmjc6zMojcsT7Ruu1/jbatIsPsgbNdbGY+cthROtc=; b=ZtQB2EkC7IIioK
	hqr3oCIksCZi2JKdtRzU9JwAEZo415B0752LG/XZGM1xmvF6olvS7cDEvp9VlothUEvJRVSfcmseK
	Z7Shkwc9L/o51OxQZ8MvUxMEiWcpLFOXb/MUkKHwzux7w2/xrw8NM/EkYc7UG03YXqCz6DynY07BI
	lqzKyrEj31s33EKbBk2sfy0u64R82HHpTQa3MUIqvgpFWX/iffvzXhSUZfomhCjtnNvWNGuO99Ubo
	AZHHA+7hSnEvuNS2eMBKMDNdCC6aTxotT7S+12dzxWJW5uWi3BvmF8KRAyXmvC+gz3XN4SlgcUkYm
	BqdzKFgb7Cc2Ou+NRN/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRb4u-0006UX-BG; Mon, 04 Nov 2019 12:03:24 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRb4R-0006H3-J1; Mon, 04 Nov 2019 12:02:57 +0000
X-UUID: 376c8af80aed46ea8b6b3995af2dad42-20191104
X-UUID: 376c8af80aed46ea8b6b3995af2dad42-20191104
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 826153164; Mon, 04 Nov 2019 04:02:57 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 03:52:45 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 19:52:46 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 4 Nov 2019 19:52:42 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [RESEND,PATCH 03/13] iommu/mediatek: Add mtk_iommu_pgtable structure
Date: Mon, 4 Nov 2019 19:52:28 +0800
Message-ID: <20191104115238.2394-4-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191104115238.2394-1-chao.hao@mediatek.com>
References: <20191104115238.2394-1-chao.hao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_040255_650514_0FACF7B5 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: Anan Sun <anan.sun@mediatek.com>, devicetree@vger.kernel.org,
 Cui Zhang <cui.zhang@mediatek.com>, Jun Yan <jun.yan@mediatek.com>,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Chao Hao <chao.hao@mediatek.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>,
 Miles Chen <miles.chen@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 Guangming Cao <guangming.cao@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Start with this patch, we will change the SW architecture
to support multiple domains. SW architecture will has a big change,
so we need to modify a little bit by more than one patch.
The new SW overall architecture is as below:

				iommu0   iommu1
				  |	    |
				  -----------
					|
				mtk_iommu_pgtable
					|
			------------------------------------------
			|		     |			 |
		mtk_iommu_domain1   mtk_iommu_domain2  mtk_iommu_domain3
			|                    |                   |
		iommu_group1         iommu_group2           iommu_group3
			|                    |                   |
		iommu_domain1       iommu_domain2	    iommu_domain3
			|                    |                   |
		iova region1(normal)  iova region2(CCU)    iova region3(VPU)

For current structure, no matter how many iommus there are,
they use the same page table to simplify the usage of module.
In order to make the software architecture more explicit, this
patch will create a global mtk_iommu_pgtable structure to describe
page table and all the iommus use it.
The diagram is as below:

	mtk_iommu_data1(MM)       mtk_iommu_data2(APU)
		|			   |
		|			   |
		------mtk_iommu_pgtable-----

We need to create global mtk_iommu_pgtable to include all the iova
regions firstly and special iova regions by divided based on it,
so the information of pgtable needs to be created in device_group.

Signed-off-by: Chao Hao <chao.hao@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 84 +++++++++++++++++++++++++++++++++++++++
 drivers/iommu/mtk_iommu.h |  1 +
 2 files changed, 85 insertions(+)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index f2847e661137..fcbde6b0f58d 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -123,6 +123,12 @@ struct mtk_iommu_domain {
 	struct iommu_domain		domain;
 };
 
+struct mtk_iommu_pgtable {
+	struct io_pgtable_cfg	cfg;
+	struct io_pgtable_ops	*iop;
+};
+
+static struct mtk_iommu_pgtable *share_pgtable;
 static const struct iommu_ops mtk_iommu_ops;
 
 /*
@@ -170,6 +176,11 @@ static struct mtk_iommu_data *mtk_iommu_get_m4u_data(void)
 	return NULL;
 }
 
+static struct mtk_iommu_pgtable *mtk_iommu_get_pgtable(void)
+{
+	return share_pgtable;
+}
+
 static struct mtk_iommu_domain *to_mtk_domain(struct iommu_domain *dom)
 {
 	return container_of(dom, struct mtk_iommu_domain, domain);
@@ -322,6 +333,13 @@ static int mtk_iommu_domain_finalise(struct mtk_iommu_domain *dom)
 {
 	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
 
+	if (data->pgtable) {
+		dom->cfg = data->pgtable->cfg;
+		dom->iop = data->pgtable->iop;
+		dom->domain.pgsize_bitmap = data->pgtable->cfg.pgsize_bitmap;
+		return 0;
+	}
+
 	dom->cfg = (struct io_pgtable_cfg) {
 		.quirks = IO_PGTABLE_QUIRK_ARM_NS |
 			IO_PGTABLE_QUIRK_NO_PERMS |
@@ -345,6 +363,61 @@ static int mtk_iommu_domain_finalise(struct mtk_iommu_domain *dom)
 	return 0;
 }
 
+static struct mtk_iommu_pgtable *create_pgtable(struct mtk_iommu_data *data)
+{
+	struct mtk_iommu_pgtable *pgtable;
+
+	pgtable = kzalloc(sizeof(*pgtable), GFP_KERNEL);
+	if (!pgtable)
+		return ERR_PTR(-ENOMEM);
+
+	pgtable->cfg = (struct io_pgtable_cfg) {
+		.quirks = IO_PGTABLE_QUIRK_ARM_NS |
+			IO_PGTABLE_QUIRK_NO_PERMS |
+			IO_PGTABLE_QUIRK_TLBI_ON_MAP |
+			IO_PGTABLE_QUIRK_ARM_MTK_EXT,
+		.pgsize_bitmap = mtk_iommu_ops.pgsize_bitmap,
+		.ias = 32,
+		.oas = 34,
+		.tlb = &mtk_iommu_flush_ops,
+		.iommu_dev = data->dev,
+	};
+
+	pgtable->iop = alloc_io_pgtable_ops(ARM_V7S, &pgtable->cfg, data);
+	if (!pgtable->iop) {
+		dev_err(data->dev, "Failed to alloc io pgtable\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	dev_info(data->dev, "%s create pgtable done\n", __func__);
+
+	return pgtable;
+}
+
+static int mtk_iommu_attach_pgtable(struct mtk_iommu_data *data,
+				    struct device *dev)
+{
+	struct mtk_iommu_pgtable *pgtable = mtk_iommu_get_pgtable();
+
+	/* create share pgtable */
+	if (!pgtable) {
+		pgtable = create_pgtable(data);
+		if (IS_ERR(pgtable)) {
+			dev_err(data->dev, "Failed to create pgtable\n");
+			return -ENOMEM;
+		}
+
+		share_pgtable = pgtable;
+	}
+
+	/* binding to pgtable */
+	data->pgtable = pgtable;
+
+	dev_info(data->dev, "m4u%d attach_pgtable done!\n", data->m4u_id);
+
+	return 0;
+}
+
 static struct iommu_domain *mtk_iommu_domain_alloc(unsigned type)
 {
 	struct mtk_iommu_domain *dom;
@@ -508,10 +581,21 @@ static void mtk_iommu_remove_device(struct device *dev)
 static struct iommu_group *mtk_iommu_device_group(struct device *dev)
 {
 	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
+	struct mtk_iommu_pgtable *pgtable;
+	int ret = 0;
 
 	if (!data)
 		return ERR_PTR(-ENODEV);
 
+	pgtable = data->pgtable;
+	if (!pgtable) {
+		ret = mtk_iommu_attach_pgtable(data, dev);
+		if (ret) {
+			dev_err(data->dev, "Failed to device_group\n");
+			return NULL;
+		}
+	}
+
 	/* All the client devices are in the same m4u iommu-group */
 	if (!data->m4u_group) {
 		data->m4u_group = iommu_group_alloc();
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index 132dc765a40b..dd5f19f78b62 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -61,6 +61,7 @@ struct mtk_iommu_data {
 	struct clk			*bclk;
 	phys_addr_t			protect_base; /* protect memory base */
 	struct mtk_iommu_suspend_reg	reg;
+	struct mtk_iommu_pgtable	*pgtable;
 	struct mtk_iommu_domain		*m4u_dom;
 	struct iommu_group		*m4u_group;
 	bool                            enable_4GB;
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
