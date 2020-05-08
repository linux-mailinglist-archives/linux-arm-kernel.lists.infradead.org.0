Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 340401CB5E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 19:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4l7ZbV6bizRwifWhUVC3NLAPRn/ZyEDq0+e1bg6RYxQ=; b=tYWK3mB35QfNRl
	NQXERXBedKmqZT39beFJHD423YB30qmwcT0LmFFiR1w8cKQIuMyWiYaxUYYaC40E5Tooizxe1cEiO
	a9Jxa2vtWSibBTbvuc75ZXa+aSN7g+NRuQE0EA39EYPZv0fpOE3QBzb66PZJCcBzA9EfghzfMNsPH
	i/L4b64wNKJW7y6z8viwF+z7TIxN1pLypfvCjjkW/ZMfr+wSIPCP47clBW4nTE2wflgzExAtkUFRx
	FVCqOcpb/0TL97uqCKU+HfIHhzUV/jXkJ1SssmNtycZUgF1FrxGAzGpldHOhEk1m+JnsOf5j4SFS8
	v8c2JYsc4v+ll1djSM/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX6lm-00023v-NW; Fri, 08 May 2020 17:26:42 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX6kc-00011F-Pd; Fri, 08 May 2020 17:25:32 +0000
X-UUID: 8525725cce364e0abaf215bbb9515d1a-20200508
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=63Ha8H1vD2DgULJ74Wxv3WLmceNjswpQ6smXNM7kEpI=; 
 b=B0rhEwcoHnH9DLOGvX73rxz6/0NorLjMbRA6Kerw3jSGgJMDVyDcqALXL4W/YPLVkc5IZxUc7C/XhUYuFBjPsST4jBsvE22meY53ZJTBQKhMypK5tE6QzjUIlonqghoYSwmfRlbcmKA1T+jG67mPtvwF6o4ycGe0VedY0ma3Fy8=;
X-UUID: 8525725cce364e0abaf215bbb9515d1a-20200508
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1581936568; Fri, 08 May 2020 09:25:04 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 10:15:14 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 9 May 2020 01:15:10 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sat, 9 May 2020 01:15:11 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v1 1/5] scsi: ufs: introduce ufs_hba_variant_params to collect
 customizable parameters
Date: Sat, 9 May 2020 01:15:09 +0800
Message-ID: <20200508171513.14665-2-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200508171513.14665-1-stanley.chu@mediatek.com>
References: <20200508171513.14665-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 739650311132C533E0239377C792F065F22E93209043B0A347B74DED9CE26FAE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_102530_838281_4903ACC6 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are more and more customizable parameters showed up
in UFS driver. Let's collect them into an unified place to make
the driver more clean.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 38 +++++++++++++++-----------------------
 drivers/scsi/ufs/ufshcd.h |  8 +++++++-
 2 files changed, 22 insertions(+), 24 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 426073a518ef..cdacbe6378a1 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -1353,23 +1353,6 @@ static int ufshcd_devfreq_get_dev_status(struct device *dev,
 	return 0;
 }
 
-static struct devfreq_dev_profile ufs_devfreq_profile = {
-	.polling_ms	= 100,
-	.target		= ufshcd_devfreq_target,
-	.get_dev_status	= ufshcd_devfreq_get_dev_status,
-};
-
-#if IS_ENABLED(CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND)
-static struct devfreq_simple_ondemand_data ufs_ondemand_data = {
-	.upthreshold = 70,
-	.downdifferential = 5,
-};
-
-static void *gov_data = &ufs_ondemand_data;
-#else
-static void *gov_data; /* NULL */
-#endif
-
 static int ufshcd_devfreq_init(struct ufs_hba *hba)
 {
 	struct list_head *clk_list = &hba->clk_list_head;
@@ -1385,12 +1368,12 @@ static int ufshcd_devfreq_init(struct ufs_hba *hba)
 	dev_pm_opp_add(hba->dev, clki->min_freq, 0);
 	dev_pm_opp_add(hba->dev, clki->max_freq, 0);
 
-	ufshcd_vops_config_scaling_param(hba, &ufs_devfreq_profile,
-					 gov_data);
+	ufshcd_vops_config_scaling_param(hba, &hba->vps->devfreq_profile,
+					 &hba->vps->ondemand_data);
 	devfreq = devfreq_add_device(hba->dev,
-			&ufs_devfreq_profile,
+			&hba->vps->devfreq_profile,
 			DEVFREQ_GOV_SIMPLE_ONDEMAND,
-			gov_data);
+			&hba->vps->ondemand_data);
 	if (IS_ERR(devfreq)) {
 		ret = PTR_ERR(devfreq);
 		dev_err(hba->dev, "Unable to register with devfreq %d\n", ret);
@@ -4314,7 +4297,7 @@ int ufshcd_hba_enable(struct ufs_hba *hba)
 	 * instruction might be read back.
 	 * This delay can be changed based on the controller.
 	 */
-	ufshcd_delay_us(hba->hba_enable_delay_us, 100);
+	ufshcd_delay_us(hba->vps->hba_enable_delay_us, 100);
 
 	/* wait for the host controller to complete initialization */
 	retry = 50;
@@ -7477,6 +7460,15 @@ static const struct attribute_group *ufshcd_driver_groups[] = {
 	NULL,
 };
 
+static struct ufs_hba_variant_params ufs_hba_vps = {
+	.hba_enable_delay_us		= 1000,
+	.devfreq_profile.polling_ms	= 100,
+	.devfreq_profile.target		= ufshcd_devfreq_target,
+	.devfreq_profile.get_dev_status	= ufshcd_devfreq_get_dev_status,
+	.ondemand_data.upthreshold	= 70,
+	.ondemand_data.downdifferential	= 5,
+};
+
 static struct scsi_host_template ufshcd_driver_template = {
 	.module			= THIS_MODULE,
 	.name			= UFSHCD,
@@ -8724,7 +8716,7 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem *mmio_base, unsigned int irq)
 
 	hba->mmio_base = mmio_base;
 	hba->irq = irq;
-	hba->hba_enable_delay_us = 1000;
+	hba->vps = &ufs_hba_vps;
 
 	err = ufshcd_hba_init(hba);
 	if (err)
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 23a434c03c2a..f7bdf52ba8b0 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -566,6 +566,12 @@ enum ufshcd_caps {
 	UFSHCD_CAP_WB_EN				= 1 << 7,
 };
 
+struct ufs_hba_variant_params {
+	struct devfreq_dev_profile devfreq_profile;
+	struct devfreq_simple_ondemand_data ondemand_data;
+	u16 hba_enable_delay_us;
+};
+
 /**
  * struct ufs_hba - per adapter private structure
  * @mmio_base: UFSHCI base register address
@@ -663,6 +669,7 @@ struct ufs_hba {
 	int nutmrs;
 	u32 ufs_version;
 	const struct ufs_hba_variant_ops *vops;
+	struct ufs_hba_variant_params *vps;
 	void *priv;
 	unsigned int irq;
 	bool is_irq_enabled;
@@ -684,7 +691,6 @@ struct ufs_hba {
 	u32 eh_flags;
 	u32 intr_mask;
 	u16 ee_ctrl_mask;
-	u16 hba_enable_delay_us;
 	bool is_powered;
 
 	/* Work Queues */
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
