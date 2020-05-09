Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2632B1CBFF1
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 11:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azaOym/cN8w/djDgNFYUrSVFYnkREzXlSXQxGKV7Hvg=; b=TwWfvh88DlmA8u
	a1kBfXitdbPeDcPCw1cVo/xKC2h0spn+wKljtvTnVYvDQ26JRMfcqx2FYzuLB++F2QEQwtFlQJtBI
	NmaithXE0Y645T4eIm2N7Z1KXSspxzaFAL05fQUchOkTOb5HgC5NozMIEOUe9D0I6LZjbkYyUgooo
	LmAbjfbEWeDGfGFg6OLKjiaxTpScqdBKizq8aL23qs286K2QOUIA6kYcPNPsnH3iN0COt7VENQs6v
	Nrvs3tX/ESQun/OWZekCtLpqXUNE85UC2OO25a+HlySYMrf5Bl6AO8AqfRV0VRpxEgfrWDANe2CD8
	jfLBrJUjUlQlOPP8rEoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXLwR-0006lT-Pr; Sat, 09 May 2020 09:38:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXLvR-0005wF-Q1; Sat, 09 May 2020 09:37:44 +0000
X-UUID: 6343168447dd4d4cacef8b91b627b6ca-20200509
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=QgdzxC6jifc5v5xz33NQoqMjvZUvNoNRAMd7vcGrEFo=; 
 b=XWDBzPGF/cKZ2yU9Y9utKXuI7W3qTO3YXhqdsFQXEvKFl94RkqU5wzfcsKeQAhrm3RhJ9fck7DaoKrH/Kr2y4R3TYgYSH93IQlqhhZEIyWy2RPObaI4XwPBb99xcX1WOtgSwtqbhfRtVVezrgXTI+Tj1hTsy3G5bokqB5HCAkSY=;
X-UUID: 6343168447dd4d4cacef8b91b627b6ca-20200509
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1813192826; Sat, 09 May 2020 01:37:25 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 9 May 2020 02:37:29 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 9 May 2020 17:37:15 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sat, 9 May 2020 17:37:16 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v2 1/4] scsi: ufs: introduce ufs_hba_variant_params to collect
 customizable parameters
Date: Sat, 9 May 2020 17:37:13 +0800
Message-ID: <20200509093716.21010-2-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200509093716.21010-1-stanley.chu@mediatek.com>
References: <20200509093716.21010-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3B04A6CD840250C5C51DB8CDC63535667407E28B0E3B84D1DDE349A5BF36E3642000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_023741_868821_04EE3501 
X-CRM114-Status: GOOD (  11.84  )
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
in UFS driver. Let's collect them into a unified place to make
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
