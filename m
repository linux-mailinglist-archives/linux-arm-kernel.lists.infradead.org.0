Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 681AA1E8F72
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 10:13:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEJV3eIRivT5ZDc0gsT7Nr2TAuaDNaMq3mYhNvjjfO0=; b=kGFCaH32tUR3hv
	9kr9RN51jlT+2rlJLXROHd0R7UReF4dJN42/qa0U6CPvcjP79LAgWWbx7FkOdHE/bJXPCtBxrzmmO
	s8PbhwWN+EbWjegpeDhj7Wk24HBuvf6IttDL6KVYstJyiVMkb7rME7PUBeyNzx92LslLlDlkT8deN
	YDvuKQoHq/LiGMfk9e6QzkIkqkuyz8+Y6hN3ho9ICuk61cEOjiER5vatFXxTd8ixI0CArUVK9tIk9
	XjAiGu3bMj8lcw6z0JDQWMHv1uTCinibXVX0CME7x69lUJe1wuW3XvFzkAEnJoq01bEZb1UukSpwj
	a8h3M2r4xM27TfDvdgWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jewc7-0005Km-Mm; Sat, 30 May 2020 08:13:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jewbs-0005HA-QR; Sat, 30 May 2020 08:12:54 +0000
X-UUID: d108d9607c5349168d181d7effacffa5-20200530
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=FVvAj8hrseke26uN4MdXVYbX/cu/UQsw+RdzhV9mMw0=; 
 b=dojQKfoU6Nzs4/LGEGXwCARwzd0PhIno8wEVc06NoeijjrrOVuS/Iri870D4j+tNe4YzJaU+Y0xg5/X8xLt6KtpNwUz0nENMPH1RGFsJmaQXaGhNYhifHpCtS4njO87OJ0fzWota/5bRZPsJaxpoaUEgAKXeZA+WtD+nhgek5Fs=;
X-UUID: d108d9607c5349168d181d7effacffa5-20200530
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1492053534; Sat, 30 May 2020 00:12:43 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 30 May 2020 01:12:46 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 30 May 2020 16:12:44 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 30 May 2020 16:12:44 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 03/17] iommu/mediatek: Add probe_defer for smi-larb
Date: Sat, 30 May 2020 16:10:04 +0800
Message-ID: <1590826218-23653-4-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1590826218-23653-1-git-send-email-yong.wu@mediatek.com>
References: <1590826218-23653-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_011252_872661_2F4459E4 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 eizan@chromium.org, srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-mediatek@lists.infradead.org, yong.wu@mediatek.com,
 ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, acourbot@chromium.org,
 linux-arm-kernel@lists.infradead.org
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
index 2be96f1..7d8f3d0 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -643,6 +643,7 @@ static int mtk_iommu_probe(struct platform_device *pdev)
 	for (i = 0; i < larb_nr; i++) {
 		struct device_node *larbnode;
 		struct platform_device *plarbdev;
+		bool larbdev_is_bound = false;
 		u32 id;
 
 		larbnode = of_parse_phandle(dev->of_node, "mediatek,larbs", i);
@@ -659,7 +660,12 @@ static int mtk_iommu_probe(struct platform_device *pdev)
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
index 1245e0c..02858a0 100644
--- a/drivers/iommu/mtk_iommu_v1.c
+++ b/drivers/iommu/mtk_iommu_v1.c
@@ -591,10 +591,15 @@ static int mtk_iommu_probe(struct platform_device *pdev)
 
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
