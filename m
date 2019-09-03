Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77567A65E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 11:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MO4/nUWcQPpLVaXoM0R50qVhXUYB3qd8PM5oBOT9y1M=; b=NkJiwgU8MKOJuE
	naiXCuX5Z0b/oUEZQ4yPPA89YOTQnqSw4LzyPKTk4NsB4dnvKouK6Cf8y4K9Yy7QAkXtWtlXfuP1T
	xgCa5XHqbQNl1DM2gRBo4DNtyYq703iAC3MrW7ZuFOGP3AWuhNijZ6sQ2tV9fUX3rcjDixGuRkluf
	Xe+7i6B+X3R7AeT+RrtjRq8+ZTzurtyfqokkM0o1OgF1dRCnOHsTZXsa7thzPtZicYaEBWIT7XYrM
	qbbf/1SV/21qQzkCe4jXUof5YQoUQuVD2WGBExuqd/jRu1oh0k+FtAFMmS+09ra4o2qf+7eNRFgfZ
	obBIS9hXdy1Yv6JIaQ2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i55LH-00044p-Rz; Tue, 03 Sep 2019 09:43:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i55Hj-0008Iw-R9; Tue, 03 Sep 2019 09:39:38 +0000
X-UUID: 82027d3b8d4e4e9fa36d51a56b013e7f-20190903
X-UUID: 82027d3b8d4e4e9fa36d51a56b013e7f-20190903
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1440111588; Tue, 03 Sep 2019 01:39:34 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Sep 2019 02:39:33 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Sep 2019 17:39:31 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 3 Sep 2019 17:39:30 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 09/14] memory: mtk-smi: Get rid of mtk_smi_larb_get/put
Date: Tue, 3 Sep 2019 17:37:31 +0800
Message-ID: <1567503456-24725-10-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1567503456-24725-1-git-send-email-yong.wu@mediatek.com>
References: <1567503456-24725-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_023935_982888_475927B3 
X-CRM114-Status: GOOD (  11.87  )
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

After adding device_link between the iommu consumer and smi-larb,
the pm_runtime_get(_sync) of smi-larb and smi-common will be called
automatically. we can get rid of mtk_smi_larb_get/put.

CC: Matthias Brugger <matthias.bgg@gmail.com>
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Reviewed-by: Evan Green <evgreen@chromium.org>
---
 drivers/memory/mtk-smi.c   | 14 --------------
 include/soc/mediatek/smi.h | 20 --------------------
 2 files changed, 34 deletions(-)

diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
index 5dab56c..3df9036 100644
--- a/drivers/memory/mtk-smi.c
+++ b/drivers/memory/mtk-smi.c
@@ -125,20 +125,6 @@ static void mtk_smi_clk_disable(const struct mtk_smi *smi)
 	clk_disable_unprepare(smi->clk_apb);
 }
 
-int mtk_smi_larb_get(struct device *larbdev)
-{
-	int ret = pm_runtime_get_sync(larbdev);
-
-	return (ret < 0) ? ret : 0;
-}
-EXPORT_SYMBOL_GPL(mtk_smi_larb_get);
-
-void mtk_smi_larb_put(struct device *larbdev)
-{
-	pm_runtime_put_sync(larbdev);
-}
-EXPORT_SYMBOL_GPL(mtk_smi_larb_put);
-
 static int
 mtk_smi_larb_bind(struct device *dev, struct device *master, void *data)
 {
diff --git a/include/soc/mediatek/smi.h b/include/soc/mediatek/smi.h
index 5a34b87..f8bf595 100644
--- a/include/soc/mediatek/smi.h
+++ b/include/soc/mediatek/smi.h
@@ -20,26 +20,6 @@ struct mtk_smi_larb_iommu {
 	unsigned int   mmu;
 };
 
-/*
- * mtk_smi_larb_get: Enable the power domain and clocks for this local arbiter.
- *                   It also initialize some basic setting(like iommu).
- * mtk_smi_larb_put: Disable the power domain and clocks for this local arbiter.
- * Both should be called in non-atomic context.
- *
- * Returns 0 if successful, negative on failure.
- */
-int mtk_smi_larb_get(struct device *larbdev);
-void mtk_smi_larb_put(struct device *larbdev);
-
-#else
-
-static inline int mtk_smi_larb_get(struct device *larbdev)
-{
-	return 0;
-}
-
-static inline void mtk_smi_larb_put(struct device *larbdev) { }
-
 #endif
 
 #endif
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
