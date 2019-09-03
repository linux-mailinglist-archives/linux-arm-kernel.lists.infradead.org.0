Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EE0A65CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 11:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DD3chTE4h2KVcIJL3G7coqtEV0nDONCgnE7pDRPaa6Y=; b=ABx07A/cJKrEYf
	NK0+i1wRWrzbA1b6p5wv6fADRn0rWZPeQGJNlNL5XnM1FP1lF9hZgCXrkJOzNnB55n9dcM6fqvroE
	OXgbAKKEp0cBSr+qiWTeeD+ad++aBVdb+7EXLWuweQ6XTj/yWmCkCrsqBLWVBOdPEG4IX2zb5Ietl
	oB+eABwUw89rVZhjebQoz+xUekJjEwsJaJtVtRxT5Y7MfDn4k5EUvlF1j/grmbYia6bW5q4E5YB9R
	/CEr92MzzIij5kBthx3pLXBWMI6422QjcVlk+kkY2wlNbgbEGAiuv7qk8qleu6p26kPtGWkyJB8sy
	qmc/UFW99RRhCR3luzMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i55Iy-0001x2-Np; Tue, 03 Sep 2019 09:40:53 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i55Gg-0007Yr-RR; Tue, 03 Sep 2019 09:38:32 +0000
X-UUID: 9d0633a9494642908479bcf4c40aba66-20190903
X-UUID: 9d0633a9494642908479bcf4c40aba66-20190903
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1577619364; Tue, 03 Sep 2019 01:38:27 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Sep 2019 02:38:26 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Sep 2019 17:38:25 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 3 Sep 2019 17:38:23 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 02/14] iommu/mediatek: Add probe_defer for smi-larb
Date: Tue, 3 Sep 2019 17:37:24 +0800
Message-ID: <1567503456-24725-3-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1567503456-24725-1-git-send-email-yong.wu@mediatek.com>
References: <1567503456-24725-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_023831_065421_F6A17928 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-mediatek@lists.infradead.org, yong.wu@mediatek.com,
 ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The iommu consumer should use device_link to connect with the
smi-larb(supplier). then the smi-larb should run before the iommu
consumer. Here we delay the iommu driver until the smi driver is
ready, then all the iommu consumer always is after the smi driver.

When there is no this patch, if some consumer drivers run before
smi-larb, the supplier link_status is DL_DEV_NO_DRIVER(0) in the
device_link_add, then device_links_driver_bound will use WARN_ON
to complain that the link_status of supplier is not right.

This is a preparing patch for adding device_link.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 drivers/iommu/mtk_iommu.c    | 8 +++++++-
 drivers/iommu/mtk_iommu_v1.c | 7 ++++++-
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 400066d..b138b94 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -660,6 +660,7 @@ static int mtk_iommu_probe(struct platform_device *pdev)
 	for (i = 0; i < larb_nr; i++) {
 		struct device_node *larbnode;
 		struct platform_device *plarbdev;
+		bool larbdev_is_bound = false;
 		u32 id;
 
 		larbnode = of_parse_phandle(dev->of_node, "mediatek,larbs", i);
@@ -676,7 +677,12 @@ static int mtk_iommu_probe(struct platform_device *pdev)
 			id = i;
 
 		plarbdev = of_find_device_by_node(larbnode);
-		if (!plarbdev) {
+		if (plarbdev) {
+			device_lock(&plarbdev->dev);
+			larbdev_is_bound = device_is_bound(&plarbdev->dev);
+			device_unlock(&plarbdev->dev);
+		}
+		if (!plarbdev || !larbdev_is_bound) {
 			of_node_put(larbnode);
 			return -EPROBE_DEFER;
 		}
diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
index 860926c..2034d72 100644
--- a/drivers/iommu/mtk_iommu_v1.c
+++ b/drivers/iommu/mtk_iommu_v1.c
@@ -601,10 +601,15 @@ static int mtk_iommu_probe(struct platform_device *pdev)
 
 		plarbdev = of_find_device_by_node(larb_spec.np);
 		if (!plarbdev) {
+			bool larbdev_is_bound;
+
 			plarbdev = of_platform_device_create(
 						larb_spec.np, NULL,
 						platform_bus_type.dev_root);
-			if (!plarbdev) {
+			device_lock(&plarbdev->dev);
+			larbdev_is_bound = device_is_bound(&plarbdev->dev);
+			device_unlock(&plarbdev->dev);
+			if (!plarbdev || !larbdev_is_bound) {
 				of_node_put(larb_spec.np);
 				return -EPROBE_DEFER;
 			}
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
