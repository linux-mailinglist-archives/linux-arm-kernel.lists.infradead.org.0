Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADF21D47CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 10:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L0Z0wOv9t5TguWJGfgMtyUzZ1wi/BUf3iSbhVmMI9dM=; b=EfBNRS67iUgOzB
	15Q1QUAin79ijGjzD1Q2ED+idlmsexMZVd0zi0WgBeQyIbHdhSGPgxSpeTf/x0fYaOZgKh/id2sCJ
	wngilgupYU8w+ahnZDVs29jsPUdsL8sFOIWZKEO6QVhtJJ1pW2WW5Kj5TDMpQZV3+bTq2mBmN23yv
	9mmxMg3jRyFudYpWouyyLlmiRecvyWBrFDASXyI8J7scBsUKI+BowGXi41u9WL23VTWrSMAgtWOgm
	0o3c0EFWEphuQY5AcWPolDWr0qm9ik5bQvjx/xaYoOaa2p0/0ezqBye0qiQt/fdpksbEKEiFhPdbU
	kMA0Dg2YnNMhnQfCWOTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZVQQ-0001Us-3s; Fri, 15 May 2020 08:10:34 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZVQB-0001E8-U4; Fri, 15 May 2020 08:10:23 +0000
X-UUID: ff8fd57cede444ccbcfc61eccd06ad01-20200515
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=SnHDXWhq13xkpGV5Y45+FAXrSStxnyI/+HVQz04AZ8A=; 
 b=fBojTk2DxPktUP23pOO4TfvbwyleUQOuKl7YxSW0Ac0PofkKjTTEFgBtILTqUoNRQ94VE87st62W4Oayc4xx3L6IwYQtX5isjHrIel3iEkF6jXVsZQISpD9MkUP+yzGJSgsOeKOiDuMSR017PR3YiPAODC85KvLm9WfcDNjsoHg=;
X-UUID: ff8fd57cede444ccbcfc61eccd06ad01-20200515
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 508734190; Fri, 15 May 2020 00:10:31 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 15 May 2020 01:10:14 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 15 May 2020 16:10:11 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 15 May 2020 16:10:10 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH] iommu/mediatek-v1: Add def_domain_type
Date: Fri, 15 May 2020 16:08:43 +0800
Message-ID: <1589530123-30240-1-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_011019_986237_8101F5D4 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com, srv_heupstream@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 yong.wu@mediatek.com, Matthias Brugger <matthias.bgg@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MediaTek V1 IOMMU is arm32 whose default domain type is
IOMMU_DOMAIN_UNMANAGED. Add this to satisfy the bus_iommu_probe to
enter "probe_finalize".

The iommu framework will create a iommu domain for each a device.
But all the devices share a iommu domain here, thus we skip all the
other domains in the "attach_device" except the domain we create
internally with arm_iommu_create_mapping.

Also a minor change: in the attach_device, "data" always is not null.
Remove "if (!data) return".

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
a. rebase on linux-next.
b. After this patch and fixed the mutex issue(locally I only move
   mutex_unlock(&group->mutex) before __iommu_group_dma_attach(group)),
   the mtk_iommu_v1.c could work normally.
---
 drivers/iommu/mtk_iommu_v1.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
index 7bdd74c..f353b07 100644
--- a/drivers/iommu/mtk_iommu_v1.c
+++ b/drivers/iommu/mtk_iommu_v1.c
@@ -265,10 +265,13 @@ static int mtk_iommu_attach_device(struct iommu_domain *domain,
 {
 	struct mtk_iommu_data *data = dev_iommu_priv_get(dev);
 	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
+	struct dma_iommu_mapping *mtk_mapping;
 	int ret;
 
-	if (!data)
-		return -ENODEV;
+	/* Only allow the domain created internally. */
+	mtk_mapping = data->dev->archdata.iommu;
+	if (mtk_mapping->domain != domain)
+		return 0;
 
 	if (!data->m4u_dom) {
 		data->m4u_dom = dom;
@@ -288,9 +291,6 @@ static void mtk_iommu_detach_device(struct iommu_domain *domain,
 {
 	struct mtk_iommu_data *data = dev_iommu_priv_get(dev);
 
-	if (!data)
-		return;
-
 	mtk_iommu_config(data, dev, false);
 }
 
@@ -416,6 +416,11 @@ static int mtk_iommu_create_mapping(struct device *dev,
 	return 0;
 }
 
+static int mtk_iommu_def_domain_type(struct device *dev)
+{
+	return IOMMU_DOMAIN_UNMANAGED;
+}
+
 static struct iommu_device *mtk_iommu_probe_device(struct device *dev)
 {
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
@@ -525,6 +530,7 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
 	.probe_device	= mtk_iommu_probe_device,
 	.probe_finalize = mtk_iommu_probe_finalize,
 	.release_device	= mtk_iommu_release_device,
+	.def_domain_type = mtk_iommu_def_domain_type,
 	.device_group	= generic_device_group,
 	.pgsize_bitmap	= ~0UL << MT2701_IOMMU_PAGE_SHIFT,
 };
-- 
1.9.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
