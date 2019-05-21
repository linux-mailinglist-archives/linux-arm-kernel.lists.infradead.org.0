Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD77324856
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 08:46:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVSk/moIn47kmSanxsmqn4IfP0abIJTT1RqyIqN68BI=; b=q69fng7ueJRV77
	GChyqUfO2p33wkFXHu8Hv0rXWHP7qN1VqQ6F0+otQDZmAv45VD8ekqHP/1r3EvCOlptVDBPMh4TmK
	RT2zRN+5uLUtaL86DhUWPYPvZSJeAswaFDNhVF4EVX/6z3ue8H7IwAezEa5PDZYCZ+H0yXz+YwDJw
	uas9y8zGs1H8vXFfbL1XVSbbKMoK7I3jhbZKmfqyPVk76NZBBx3jJwMq1dFVQ+RXrL7hIE5k5pGED
	JTSVOw7PVK6T3TOlrLfqDbCWUURoCEtW2YNYfHMmWLYzkuBjbKVgUM1OzqQnqzVru9NoLi5DbQHaD
	ySg1BsIr8cxYDaEC4gwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSyXd-0001g6-9y; Tue, 21 May 2019 06:46:29 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSyWj-0000jA-HT; Tue, 21 May 2019 06:45:34 +0000
X-UUID: abdf4621e6ae4d45b77012e54936a07f-20190520
X-UUID: abdf4621e6ae4d45b77012e54936a07f-20190520
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 429055699; Mon, 20 May 2019 22:45:08 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 23:45:06 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 May 2019 14:45:05 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 21 May 2019 14:45:05 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v5 1/3] scsi: ufs: Introduce ufshcd_is_auto_hibern8_supported()
Date: Tue, 21 May 2019 14:44:52 +0800
Message-ID: <1558421094-3182-2-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1558421094-3182-1-git-send-email-stanley.chu@mediatek.com>
References: <1558421094-3182-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_234533_580862_3A1340B6 
X-CRM114-Status: GOOD (  11.00  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: marc.w.gonzalez@free.fr, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, evgreen@chromium.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The checking of Auto-Hibernation support is used in
many places in the driver, thus re-factor it as
ufshcd_is_auto_hibern8_supported() to make code more
clean.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Bean Huo <beanhuo@micron.com>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/scsi/ufs/ufs-sysfs.c | 6 +++---
 drivers/scsi/ufs/ufshcd.c    | 4 ++--
 drivers/scsi/ufs/ufshcd.h    | 5 +++++
 3 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-sysfs.c b/drivers/scsi/ufs/ufs-sysfs.c
index 8d9332bb7d0c..f478685122ff 100644
--- a/drivers/scsi/ufs/ufs-sysfs.c
+++ b/drivers/scsi/ufs/ufs-sysfs.c
@@ -122,7 +122,7 @@ static void ufshcd_auto_hibern8_update(struct ufs_hba *hba, u32 ahit)
 {
 	unsigned long flags;
 
-	if (!(hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT))
+	if (!ufshcd_is_auto_hibern8_supported(hba))
 		return;
 
 	spin_lock_irqsave(hba->host->host_lock, flags);
@@ -164,7 +164,7 @@ static ssize_t auto_hibern8_show(struct device *dev,
 {
 	struct ufs_hba *hba = dev_get_drvdata(dev);
 
-	if (!(hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT))
+	if (!ufshcd_is_auto_hibern8_supported(hba))
 		return -EOPNOTSUPP;
 
 	return snprintf(buf, PAGE_SIZE, "%d\n", ufshcd_ahit_to_us(hba->ahit));
@@ -177,7 +177,7 @@ static ssize_t auto_hibern8_store(struct device *dev,
 	struct ufs_hba *hba = dev_get_drvdata(dev);
 	unsigned int timer;
 
-	if (!(hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT))
+	if (!ufshcd_is_auto_hibern8_supported(hba))
 		return -EOPNOTSUPP;
 
 	if (kstrtouint(buf, 0, &timer))
diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 8c1c551f2b42..0cf698d05426 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -3907,7 +3907,7 @@ static void ufshcd_auto_hibern8_enable(struct ufs_hba *hba)
 {
 	unsigned long flags;
 
-	if (!(hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT) || !hba->ahit)
+	if (!ufshcd_is_auto_hibern8_supported(hba) || !hba->ahit)
 		return;
 
 	spin_lock_irqsave(hba->host->host_lock, flags);
@@ -8312,7 +8312,7 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem *mmio_base, unsigned int irq)
 						UIC_LINK_HIBERN8_STATE);
 
 	/* Set the default auto-hiberate idle timer value to 150 ms */
-	if (hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT) {
+	if (ufshcd_is_auto_hibern8_supported(hba)) {
 		hba->ahit = FIELD_PREP(UFSHCI_AHIBERN8_TIMER_MASK, 150) |
 			    FIELD_PREP(UFSHCI_AHIBERN8_SCALE_MASK, 3);
 	}
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index ecfa898b9ccc..994d73d03207 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -740,6 +740,11 @@ return true;
 #endif
 }
 
+static inline bool ufshcd_is_auto_hibern8_supported(struct ufs_hba *hba)
+{
+	return (hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT);
+}
+
 #define ufshcd_writel(hba, val, reg)	\
 	writel((val), (hba)->mmio_base + (reg))
 #define ufshcd_readl(hba, reg)	\
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
