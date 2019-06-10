Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 563BC3B596
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=34598AGY/z9osvVTwsh5gieb6CxDnhp3F4kMFXE5u0Y=; b=iFSADmqgVpoxWa
	YTSdoH+6FxiJJXvjMC1s3y+py5J4K9qAt7YDHp6QX4M0YvM+fNJ7PKf4Kqk0Z6dThsP03RuZjWHah
	T/SnDX2XwD90fKGZ+8uTzx2+AWqhKn9IBlhvT5vYZZT477fkfRJA1MSij+NoIlcB3LSXAj1Nclzt+
	w+Gid1DR9xJYBDTHbuhISlrsXj7dpkATLpVMMgnazoWzoARdiB1B/hXRQSkZlnWj6G5mFK07QnmUP
	r4DLk/yiXXiZgfEpHM9F+xZrTGP0mkPvwBoOuU6xhnPxiOsvXnclk5oEYwM9SMTA0cIcuuRKmtVXC
	gl5NsBGysm3hRYFTfQ7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJuS-0007fA-L9; Mon, 10 Jun 2019 13:00:24 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJt4-0005Zq-IL; Mon, 10 Jun 2019 12:59:00 +0000
X-UUID: dbb0916e316341cabdfefa05ab9b36b5-20190610
X-UUID: dbb0916e316341cabdfefa05ab9b36b5-20190610
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 830613488; Mon, 10 Jun 2019 04:56:21 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 05:56:19 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 20:56:18 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Jun 2019 20:56:17 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 04/12] memory: mtk-smi: Add device-link between smi-larb
 and smi-common
Date: Mon, 10 Jun 2019 20:55:05 +0800
Message-ID: <1560171313-28299-5-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560171313-28299-1-git-send-email-yong.wu@mediatek.com>
References: <1560171313-28299-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_055858_647144_BAA3371A 
X-CRM114-Status: GOOD (  14.16  )
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
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 yong.wu@mediatek.com, yingjoe.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Normally, If the smi-larb HW need work, we should enable the smi-common
HW power and clock firstly.
This patch adds device-link between the smi-larb dev and the smi-common
dev. then If pm_runtime_get_sync(smi-larb-dev), the pm_runtime_get_sync
(smi-common-dev) will be called automatically.

CC: Matthias Brugger <matthias.bgg@gmail.com>
Suggested-by: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 drivers/memory/mtk-smi.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
index 9688341..98b1180 100644
--- a/drivers/memory/mtk-smi.c
+++ b/drivers/memory/mtk-smi.c
@@ -271,6 +271,7 @@ static int mtk_smi_larb_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *smi_node;
 	struct platform_device *smi_pdev;
+	struct device_link *link;
 
 	larb = devm_kzalloc(dev, sizeof(*larb), GFP_KERNEL);
 	if (!larb)
@@ -310,6 +311,13 @@ static int mtk_smi_larb_probe(struct platform_device *pdev)
 		if (!platform_get_drvdata(smi_pdev))
 			return -EPROBE_DEFER;
 		larb->smi_common_dev = &smi_pdev->dev;
+		link = device_link_add(dev, larb->smi_common_dev,
+				       DL_FLAG_PM_RUNTIME |
+				       DL_FLAG_AUTOREMOVE_CONSUMER);
+		if (!link) {
+			dev_err(dev, "Unable to link smi-common dev\n");
+			return -ENODEV;
+		}
 	} else {
 		dev_err(dev, "Failed to get the smi_common device\n");
 		return -EINVAL;
@@ -333,17 +341,9 @@ static int __maybe_unused mtk_smi_larb_resume(struct device *dev)
 	const struct mtk_smi_larb_gen *larb_gen = larb->larb_gen;
 	int ret;
 
-	/* Power on smi-common. */
-	ret = pm_runtime_get_sync(larb->smi_common_dev);
-	if (ret < 0) {
-		dev_err(dev, "Failed to pm get for smi-common(%d).\n", ret);
-		return ret;
-	}
-
 	ret = mtk_smi_clk_enable(&larb->smi);
 	if (ret < 0) {
 		dev_err(dev, "Failed to enable clock(%d).\n", ret);
-		pm_runtime_put_sync(larb->smi_common_dev);
 		return ret;
 	}
 
@@ -358,7 +358,6 @@ static int __maybe_unused mtk_smi_larb_suspend(struct device *dev)
 	struct mtk_smi_larb *larb = dev_get_drvdata(dev);
 
 	mtk_smi_clk_disable(&larb->smi);
-	pm_runtime_put_sync(larb->smi_common_dev);
 	return 0;
 }
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
