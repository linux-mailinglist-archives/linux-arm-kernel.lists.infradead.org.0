Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE44A65D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 11:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mEqHi0l29lzYc4EiU4RHxBbxNQZYm7oydKClkyRKmYo=; b=FcoGH5ujUgbWid
	9L89860xHv0X+jQvSFkzj/BXY23TT1XuX++ka80+vlTxqwyFzpnBmkpGYKeI0PH7qnYnrMjqwZ/mk
	ZkXGvLJemlaKbUbvU+zDbRaHS3rfq8zsm8fGGgC16i0XcoeoCaiucSPyBUi5EERHfVrnx2KX/UAVn
	xDADoHj057lKYM4F/xHNtIYERJBw7sefhVfB6TPMkViMCwOt8biSk34WiVuAWwnvFSyt49YOfCZJP
	oaHbJ0G9RgPv1Tn4Yyc8ghniMH8jSih4Wj5qdZmTLMgy3RY5lV01xDeyuwbYqEPZBTc22p6mv6FRO
	AcpNL5st2VfikXNtEQQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i55JQ-0002Dj-0l; Tue, 03 Sep 2019 09:41:20 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i55Gs-0007iK-Q0; Tue, 03 Sep 2019 09:38:45 +0000
X-UUID: 227a423993d84efaba3848ad534643b9-20190903
X-UUID: 227a423993d84efaba3848ad534643b9-20190903
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 433556377; Tue, 03 Sep 2019 01:38:39 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Sep 2019 02:38:37 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Sep 2019 17:38:36 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 3 Sep 2019 17:38:35 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 03/14] iommu/mediatek: Add device_link between the consumer
 and the larb devices
Date: Tue, 3 Sep 2019 17:37:25 +0800
Message-ID: <1567503456-24725-4-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1567503456-24725-1-git-send-email-yong.wu@mediatek.com>
References: <1567503456-24725-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_023843_378169_E1A7BFC2 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

MediaTek IOMMU don't have its power-domain. all the consumer connect
with smi-larb, then connect with smi-common.

        M4U
         |
    smi-common
         |
  -------------
  |         |    ...
  |         |
larb1     larb2
  |         |
vdec       venc

When the consumer works, it should enable the smi-larb's power which
also need enable the smi-common's power firstly.

Thus, First of all, use the device link connect the consumer and the
smi-larbs. then add device link between the smi-larb and smi-common.

This patch adds device_link between the consumer and the larbs.

When device_link_add, I add the flag DL_FLAG_STATELESS to avoid calling
pm_runtime_xx to keep the original status of clocks. It can avoid two
issues:
1) Display HW show fastlogo abnormally reported in [1]. At the beggining,
all the clocks are enabled before entering kernel, but the clocks for
display HW(always in larb0) will be gated after clk_enable and clk_disable
called from device_link_add(->pm_runtime_resume) and rpm_idle. The clock
operation happened before display driver probe. At that time, the display
HW will be abnormal.

2) A deadlock issue reported in [2]. Use DL_FLAG_STATELESS to skip
pm_runtime_xx to avoid the deadlock.

Corresponding, DL_FLAG_AUTOREMOVE_CONSUMER can't be added, then
device_link_removed should be added explicitly.

[1] http://lists.infradead.org/pipermail/linux-mediatek/2019-July/
021500.html
[2] https://lore.kernel.org/patchwork/patch/1086569/

Suggested-by: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 drivers/iommu/mtk_iommu.c    | 17 +++++++++++++++++
 drivers/iommu/mtk_iommu_v1.c | 18 +++++++++++++++++-
 2 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index b138b94..2511b3c 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -450,6 +450,9 @@ static int mtk_iommu_add_device(struct device *dev)
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 	struct mtk_iommu_data *data;
 	struct iommu_group *group;
+	struct device_link *link;
+	struct device *larbdev;
+	unsigned int larbid;
 
 	if (!fwspec || fwspec->ops != &mtk_iommu_ops)
 		return -ENODEV; /* Not a iommu client device */
@@ -461,6 +464,14 @@ static int mtk_iommu_add_device(struct device *dev)
 	if (IS_ERR(group))
 		return PTR_ERR(group);
 
+	/* Link the consumer device with the smi-larb device(supplier) */
+	larbid = MTK_M4U_TO_LARB(fwspec->ids[0]);
+	larbdev = data->larb_imu[larbid].dev;
+	link = device_link_add(dev, larbdev,
+			       DL_FLAG_PM_RUNTIME | DL_FLAG_STATELESS);
+	if (!link)
+		dev_err(dev, "Unable to link %s\n", dev_name(larbdev));
+
 	iommu_group_put(group);
 	return 0;
 }
@@ -469,6 +480,8 @@ static void mtk_iommu_remove_device(struct device *dev)
 {
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 	struct mtk_iommu_data *data;
+	struct device *larbdev;
+	unsigned int larbid;
 
 	if (!fwspec || fwspec->ops != &mtk_iommu_ops)
 		return;
@@ -476,6 +489,10 @@ static void mtk_iommu_remove_device(struct device *dev)
 	data = fwspec->iommu_priv;
 	iommu_device_unlink(&data->iommu, dev);
 
+	larbid = MTK_M4U_TO_LARB(fwspec->ids[0]);
+	larbdev = data->larb_imu[larbid].dev;
+	device_link_remove(dev, larbdev);
+
 	iommu_group_remove_device(dev);
 	iommu_fwspec_free(dev);
 }
diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
index 2034d72..a7f22a2 100644
--- a/drivers/iommu/mtk_iommu_v1.c
+++ b/drivers/iommu/mtk_iommu_v1.c
@@ -423,7 +423,9 @@ static int mtk_iommu_add_device(struct device *dev)
 	struct of_phandle_iterator it;
 	struct mtk_iommu_data *data;
 	struct iommu_group *group;
-	int err;
+	struct device_link *link;
+	struct device *larbdev;
+	int err, larbid;
 
 	of_for_each_phandle(&it, err, dev->of_node, "iommus",
 			"#iommu-cells", 0) {
@@ -466,6 +468,14 @@ static int mtk_iommu_add_device(struct device *dev)
 		return err;
 	}
 
+	/* Link the consumer device with the smi-larb device(supplier) */
+	larbid = mt2701_m4u_to_larb(fwspec->ids[0]);
+	larbdev = data->larb_imu[larbid].dev;
+	link = device_link_add(dev, larbdev,
+			       DL_FLAG_PM_RUNTIME | DL_FLAG_STATELESS);
+	if (!link)
+		dev_err(dev, "Unable to link %s\n", dev_name(larbdev));
+
 	return iommu_device_link(&data->iommu, dev);
 }
 
@@ -473,6 +483,8 @@ static void mtk_iommu_remove_device(struct device *dev)
 {
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 	struct mtk_iommu_data *data;
+	struct device *larbdev;
+	unsigned int larbid;
 
 	if (!fwspec || fwspec->ops != &mtk_iommu_ops)
 		return;
@@ -480,6 +492,10 @@ static void mtk_iommu_remove_device(struct device *dev)
 	data = fwspec->iommu_priv;
 	iommu_device_unlink(&data->iommu, dev);
 
+	larbid = mt2701_m4u_to_larb(fwspec->ids[0]);
+	larbdev = data->larb_imu[larbid].dev;
+	device_link_remove(dev, larbdev);
+
 	iommu_group_remove_device(dev);
 	iommu_fwspec_free(dev);
 }
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
