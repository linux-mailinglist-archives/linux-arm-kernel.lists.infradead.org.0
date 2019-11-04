Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA2BEDF8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 13:03:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=avDnqIiWCAVAYRnVNhuqq3TP1yBB8L4+uzZio2uXQwc=; b=tdEhNk57WxlKEq
	hGye47NUVUR5rUreAM1GGRnwy1/EA9m23WIypsywlnK/jxi1ajpX6iHrB2XCVYv3wkZfh2IFM7r/I
	HvNbMm4EjN60pt74opXqBw8jQamTSkmwJmH5yjJDwEC75rhrlbax2KWaTGwdkEVYSNObrCAwx88BW
	6yjswcpU3xDdOQ3qH4rZY7bbkT0+X6CIFMUCP3cCgqTrxbUKCgjP3qfDQuBuGhOO6GLlSDvvMilyC
	fg/Tgp1VU0nVOZYUeU9BKEzjB9mE1tEL6jTsp8C1tZLdsrwdjS2DOI+x4zoIFh75XGA6QBLaFQ/hW
	LdkwxLShLWYxpz8IrxLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRb4e-0006J8-SC; Mon, 04 Nov 2019 12:03:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRb4R-0006H0-J3; Mon, 04 Nov 2019 12:02:57 +0000
X-UUID: 167ec1a8cbf2412e8770ae29a0e1bba9-20191104
X-UUID: 167ec1a8cbf2412e8770ae29a0e1bba9-20191104
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1466014304; Mon, 04 Nov 2019 04:02:57 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 03:53:05 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 19:53:06 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 4 Nov 2019 19:53:02 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [RESEND,
 PATCH 09/13] iommu/mediatek: Remove the usage of m4u_dom variable
Date: Mon, 4 Nov 2019 19:52:34 +0800
Message-ID: <20191104115238.2394-10-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191104115238.2394-1-chao.hao@mediatek.com>
References: <20191104115238.2394-1-chao.hao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_040255_642472_2495A29B 
X-CRM114-Status: GOOD (  12.39  )
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

This patch will remove the usage of the m4u_dom variable.

We have already redefined mtk_iommu_domain structure and it
includes iommu_domain, so m4u_dom variable will not be used.

Signed-off-by: Chao Hao <chao.hao@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 27 ++++++++++++++++++++-------
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 8d68a1af8ed5..42fad1cf73f3 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -113,6 +113,7 @@
  * Get the local arbiter ID and the portid within the larb arbiter
  * from mtk_m4u_id which is defined by MTK_M4U_ID.
  */
+#define MTK_M4U_ID(larb, port)		(((larb) << 5) | (port))
 #define MTK_M4U_TO_LARB(id)		(((id) >> 5) & 0xf)
 #define MTK_M4U_TO_PORT(id)		((id) & 0x1f)
 
@@ -205,6 +206,22 @@ static u32 mtk_iommu_get_domain_id(struct device *dev)
 	return get_domain_id(data, portid);
 }
 
+static struct iommu_domain *_get_mtk_domain(struct mtk_iommu_data *data,
+					    u32 larbid, u32 portid)
+{
+	u32 domain_id;
+	u32 port_mask = MTK_M4U_ID(larbid, portid);
+	struct mtk_iommu_domain *dom;
+
+	domain_id = get_domain_id(data, port_mask);
+
+	list_for_each_entry(dom, &data->pgtable->m4u_dom_v2, list) {
+		if (dom->id == domain_id)
+			return &dom->domain;
+	}
+	return NULL;
+}
+
 static struct mtk_iommu_domain *get_mtk_domain(struct device *dev)
 {
 	struct mtk_iommu_data *data = dev->iommu_fwspec->iommu_priv;
@@ -307,7 +324,7 @@ static const struct iommu_flush_ops mtk_iommu_flush_ops = {
 static irqreturn_t mtk_iommu_isr(int irq, void *dev_id)
 {
 	struct mtk_iommu_data *data = dev_id;
-	struct mtk_iommu_domain *dom = data->m4u_dom;
+	struct iommu_domain *domain;
 	u32 int_state, regval, fault_iova, fault_pa;
 	unsigned int fault_larb, fault_port, sub_comm = 0;
 	bool layer, write;
@@ -342,7 +359,8 @@ static irqreturn_t mtk_iommu_isr(int irq, void *dev_id)
 
 	fault_larb = data->plat_data->larbid_remap[data->m4u_id][fault_larb];
 
-	if (report_iommu_fault(&dom->domain, data->dev, fault_iova,
+	domain = _get_mtk_domain(data, fault_larb, fault_port);
+	if (report_iommu_fault(domain, data->dev, fault_iova,
 			       write ? IOMMU_FAULT_WRITE : IOMMU_FAULT_READ)) {
 		dev_err_ratelimited(
 			data->dev,
@@ -512,16 +530,11 @@ static void mtk_iommu_domain_free(struct iommu_domain *domain)
 static int mtk_iommu_attach_device(struct iommu_domain *domain,
 				   struct device *dev)
 {
-	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
 	struct mtk_iommu_data *data = dev_iommu_fwspec_get(dev)->iommu_priv;
 
 	if (!data)
 		return -ENODEV;
 
-	/* Update the pgtable base address register of the M4U HW */
-	if (!data->m4u_dom)
-		data->m4u_dom = dom;
-
 	mtk_iommu_config(data, dev, true);
 	return 0;
 }
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
