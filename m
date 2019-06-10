Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E25E3B59B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WqFRFXuWXNv/8lo/W5fFzviP/3DC/aLNBM9fZt1pYXg=; b=i66b68mEQgeHOt
	tFXSaP5rKgvI3M86vmnAmiqZkriIH1wm7onl/Wk0TOQtFZGNDveM0mvjPF3Yhxn08VTr/PFVZSQ0z
	dCKsx7XfnnWLa2AJMCBSh5TQSoCbfaBQiLwe+KnSk3ITrRYhHT6TCqnWTNY9UPUmVhhcnuB2VwumS
	K6D9ZTzgAWQnvEZauwnjd28yqVDVpaUre26jOvk1kldc3jLUp+P8GVzVQ4HnpdK76jlx8RjfCAtFX
	QcBhh1w/BJWDPtYPQuqhXsSx3tDQJh3sadAepvqN6IzfR9xjbkfpRkpkTf+rF2vJZQvMOWiZAOlkJ
	oSRPr8CfxrGb/9ACs9yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJv7-000077-Ut; Mon, 10 Jun 2019 13:01:05 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJt7-0005ZC-44; Mon, 10 Jun 2019 12:59:03 +0000
X-UUID: 77c92c617dec4a9282c840c5b83ace70-20190610
X-UUID: 77c92c617dec4a9282c840c5b83ace70-20190610
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 895842316; Mon, 10 Jun 2019 04:56:09 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 05:56:08 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 20:56:06 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Jun 2019 20:56:05 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 03/12] iommu/mediatek: Add device_link between the consumer
 and the larb devices
Date: Mon, 10 Jun 2019 20:55:04 +0800
Message-ID: <1560171313-28299-4-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560171313-28299-1-git-send-email-yong.wu@mediatek.com>
References: <1560171313-28299-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_055901_239224_EE9EC847 
X-CRM114-Status: GOOD (  14.86  )
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

Suggested-by: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 drivers/iommu/mtk_iommu.c    | 12 ++++++++++++
 drivers/iommu/mtk_iommu_v1.c | 13 ++++++++++++-
 2 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index f7599d8..7b70574 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -440,6 +440,9 @@ static int mtk_iommu_add_device(struct device *dev)
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 	struct mtk_iommu_data *data;
 	struct iommu_group *group;
+	struct device_link *link;
+	struct device *larbdev;
+	unsigned int larbid;
 
 	if (!fwspec || fwspec->ops != &mtk_iommu_ops)
 		return -ENODEV; /* Not a iommu client device */
@@ -451,6 +454,15 @@ static int mtk_iommu_add_device(struct device *dev)
 	if (IS_ERR(group))
 		return PTR_ERR(group);
 
+	/* Link the consumer device with the smi-larb device(supplier) */
+	larbid = MTK_M4U_TO_LARB(fwspec->ids[0]);
+	larbdev = data->smi_imu.larb_imu[larbid].dev;
+	link = device_link_add(dev, larbdev,
+			       DL_FLAG_PM_RUNTIME |
+			       DL_FLAG_AUTOREMOVE_CONSUMER);
+	if (!link)
+		dev_err(dev, "Unable to link %s\n", dev_name(larbdev));
+
 	iommu_group_put(group);
 	return 0;
 }
diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
index c43c4a0..845e20b 100644
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
@@ -466,6 +468,15 @@ static int mtk_iommu_add_device(struct device *dev)
 		return err;
 	}
 
+	/* Link the consumer device with the smi-larb device(supplier) */
+	larbid = mt2701_m4u_to_larb(fwspec->ids[0]);
+	larbdev = data->smi_imu.larb_imu[larbid].dev;
+	link = device_link_add(dev, larbdev,
+			       DL_FLAG_PM_RUNTIME |
+			       DL_FLAG_AUTOREMOVE_CONSUMER);
+	if (!link)
+		dev_err(dev, "Unable to link %s\n", dev_name(larbdev));
+
 	return iommu_device_link(&data->iommu, dev);
 }
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
