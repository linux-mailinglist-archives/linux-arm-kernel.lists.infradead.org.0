Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2500EDF9C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 13:04:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=POobopKh0DLmwdwG7y6qia2TSZAlZFIPu2hJQnQsTkE=; b=bmDz4l9a8UHAYZ
	vnxtavyEqdqHEvi3ED7um/+qIvZojNqXm6VUzJVys0I2uRgeHBdSFASP4N3Wa0hMIwjTahG1eJHz8
	k980uNSO5idaN/tHX+7AiJ62SdKCFfHqeL45xcJ8ZtoB6o8tKOFSvsg9DDUx0wfz6KIgW0drGCBRp
	O66TKcoeAGw7UjmperWF+wgUpP9sId5io4Mqm2OGy8h59904IkLjDMr4lEQboKJEJSXVu45pxJSf5
	fMZjl+HQxtryh2WAG9IZheIuioZZ9kiErxeH2NX3MmJAR2PDXPG67h5vWP8Li4NhcYK5IPxDttaW8
	xNQ7aebMPLiVqjFlYPIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRb5P-00071J-3M; Mon, 04 Nov 2019 12:03:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRb4T-0006H0-9A; Mon, 04 Nov 2019 12:02:58 +0000
X-UUID: 70aa4d6f4a29492a92ffe7867c0e537e-20191104
X-UUID: 70aa4d6f4a29492a92ffe7867c0e537e-20191104
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1620001168; Mon, 04 Nov 2019 04:02:57 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 03:53:24 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 19:53:25 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 4 Nov 2019 19:53:14 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [RESEND,
 PATCH 13/13] iommu/mediatek: Add multiple mtk_iommu_domain support
 for mt6779
Date: Mon, 4 Nov 2019 19:52:38 +0800
Message-ID: <20191104115238.2394-14-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191104115238.2394-1-chao.hao@mediatek.com>
References: <20191104115238.2394-1-chao.hao@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: F8AD794D9FEF6333CE5BE9CFD73E711FCAB89F13FD72EC4B1E68F3848BF91BB72000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_040257_351407_8C9A09F9 
X-CRM114-Status: GOOD (  10.71  )
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

For mt6779, it need to support three mtk_iommu_domains, every
mtk_iommu_domain's iova space is different.
Three mtk_iommu_domains is as below:
1. Normal mtk_iommu_domain exclude 0x4000_0000~0x47ff_ffff and
   0x7da0_0000~7fbf_ffff.
2. CCU mtk_iommu_domain include 0x4000_0000~0x47ff_ffff.
3. VPU mtk_iommu_domain 0x7da0_0000~0x7fbf_ffff.

Signed-off-by: Chao Hao <chao.hao@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 45 +++++++++++++++++++++++++++++++++++++--
 1 file changed, 43 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index c33ea55a1841..882fe01ff770 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -140,6 +140,30 @@ const struct mtk_domain_data single_dom = {
 	.max_iova = DMA_BIT_MASK(32)
 };
 
+/*
+ * related file: mt6779-larb-port.h
+ */
+const struct mtk_domain_data mt6779_multi_dom[] = {
+	/* normal domain */
+	{
+	 .min_iova = 0x0,
+	 .max_iova = DMA_BIT_MASK(32),
+	},
+	/* ccu domain */
+	{
+	 .min_iova = 0x40000000,
+	 .max_iova = 0x48000000 - 1,
+	 .port_mask = {MTK_M4U_ID(9, 21), MTK_M4U_ID(9, 22),
+		       MTK_M4U_ID(12, 0), MTK_M4U_ID(12, 1)}
+	},
+	/* vpu domain */
+	{
+	 .min_iova = 0x7da00000,
+	 .max_iova = 0x7fc00000 - 1,
+	 .port_mask = {MTK_M4U_ID(13, 0)}
+	}
+};
+
 static struct mtk_iommu_pgtable *share_pgtable;
 static const struct iommu_ops mtk_iommu_ops;
 
@@ -1055,6 +1079,21 @@ static const struct dev_pm_ops mtk_iommu_pm_ops = {
 	SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(mtk_iommu_suspend, mtk_iommu_resume)
 };
 
+static const struct mtk_iommu_resv_iova_region mt6779_iommu_rsv_list[] = {
+	{
+		.dom_id = 0,
+		.iova_base = 0x40000000,	/* CCU */
+		.iova_size = 0x8000000,
+		.type = IOMMU_RESV_RESERVED,
+	},
+	{
+		.dom_id = 0,
+		.iova_base = 0x7da00000,	/* VPU/MDLA */
+		.iova_size = 0x2700000,
+		.type = IOMMU_RESV_RESERVED,
+	},
+};
+
 static const struct mtk_iommu_plat_data mt2712_data = {
 	.m4u_plat     = M4U_MT2712,
 	.has_4gb_mode = true,
@@ -1068,8 +1107,10 @@ static const struct mtk_iommu_plat_data mt2712_data = {
 
 static const struct mtk_iommu_plat_data mt6779_data = {
 	.m4u_plat = M4U_MT6779,
-	.dom_cnt = 1,
-	.dom_data = &single_dom,
+	.resv_cnt     = ARRAY_SIZE(mt6779_iommu_rsv_list),
+	.resv_region  = mt6779_iommu_rsv_list,
+	.dom_cnt = ARRAY_SIZE(mt6779_multi_dom),
+	.dom_data = mt6779_multi_dom,
 	.larbid_remap[0] = {0, 1, 2, 3, 5, 7, 10, 9},
 	/* vp6a, vp6b, mdla/core2, mdla/edmc*/
 	.larbid_remap[1] = {2, 0, 3, 1},
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
