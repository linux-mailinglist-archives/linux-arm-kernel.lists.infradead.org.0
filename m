Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A0512773F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 09:37:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ItxWvDCUuNOEfui9eOEf9oBe0kH7BK1vfMUtPq/CQ78=; b=BPmxLeD/qSSGnJ
	AxeXj/o0LhV85gsIk8ojq5hoUjhS8HbAbYOTIoAlKX/aQGKyp7Lq6W1Qsz+v7AwCTaSVz3sWa0Fcl
	MfqAZlZqbRE9jYAWJWBKgDlh9HNN2mcZYwfd5OTvKTCM81GK/7We1a3jTROGhf/QJXHJoYE1pOKTr
	dafxSy4qN7tozhLRSqudIrYLqEbTEKof4vjo6eFZOhq9KiN/fAR7+EPq4dKtXRASfYv3uBV7VDmE6
	OESSy3wZREFn5bh4G8ZLai4jvmUMVFQ3oslzAyMpjyXGD8WI2V0aCsG5pdhgzawKzopuK+o9qL8qC
	xzQuOatzQsEO/XQsHbug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiDmN-00089M-5X; Fri, 20 Dec 2019 08:36:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiDm6-00087X-U1; Fri, 20 Dec 2019 08:36:44 +0000
X-UUID: e170d00863024b12bfcabaa2c075700a-20191220
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Xw6bLLj+B2ZB/KL06SKr19CTTnISadQE3iBM5YdxwjU=; 
 b=WTB+2UrYR6OuHDJeW/BXGr5nwmT6+Hd787+h2hZ2qTBMu1XokVMzpKwWJANpJhV3tWsKMU9+5/grxmIUdPDa6oWJETCe9JFg5BKrpzn8LsD4ynbn+TXMRksYMrEQiyNuLlUKdpqooIvBcjz9kDEOLf6UAfJFk7YIQjGwD5jKr1s=;
X-UUID: e170d00863024b12bfcabaa2c075700a-20191220
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 680091867; Fri, 20 Dec 2019 00:36:38 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 00:36:58 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 16:35:58 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 20 Dec 2019 16:35:39 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <jejb@linux.ibm.com>, <matthias.bgg@gmail.com>,
 <f.fainelli@gmail.com>
Subject: [PATCH v1 4/6] scsi: ufs: export ufshcd_auto_hibern8_update for
 vendor usage
Date: Fri, 20 Dec 2019 16:36:26 +0800
Message-ID: <1576830988-22435-5-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1576830988-22435-1-git-send-email-stanley.chu@mediatek.com>
References: <1576830988-22435-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 4737E59BD6FF4B96899E40ACEF4F545CDA6611A17392CA37871ED1722009C94A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_003642_976207_BB3BD240 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: leon.chen@mediatek.com, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Export ufshcd_auto_hibern8_update to allow vendors to use common
interface to customize auto-hibernate timer.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/scsi/ufs/ufs-sysfs.c | 20 --------------------
 drivers/scsi/ufs/ufshcd.c    | 18 ++++++++++++++++++
 drivers/scsi/ufs/ufshcd.h    |  1 +
 3 files changed, 19 insertions(+), 20 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-sysfs.c b/drivers/scsi/ufs/ufs-sysfs.c
index ad2abc96c0f1..720be3f64be7 100644
--- a/drivers/scsi/ufs/ufs-sysfs.c
+++ b/drivers/scsi/ufs/ufs-sysfs.c
@@ -118,26 +118,6 @@ static ssize_t spm_target_link_state_show(struct device *dev,
 				ufs_pm_lvl_states[hba->spm_lvl].link_state));
 }
 
-static void ufshcd_auto_hibern8_update(struct ufs_hba *hba, u32 ahit)
-{
-	unsigned long flags;
-
-	if (!ufshcd_is_auto_hibern8_supported(hba))
-		return;
-
-	spin_lock_irqsave(hba->host->host_lock, flags);
-	if (hba->ahit != ahit)
-		hba->ahit = ahit;
-	spin_unlock_irqrestore(hba->host->host_lock, flags);
-	if (!pm_runtime_suspended(hba->dev)) {
-		pm_runtime_get_sync(hba->dev);
-		ufshcd_hold(hba, false);
-		ufshcd_auto_hibern8_enable(hba);
-		ufshcd_release(hba);
-		pm_runtime_put(hba->dev);
-	}
-}
-
 /* Convert Auto-Hibernate Idle Timer register value to microseconds */
 static int ufshcd_ahit_to_us(u32 ahit)
 {
diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index a6936bebb513..ed02a704c1c2 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -3893,6 +3893,24 @@ static int ufshcd_uic_hibern8_exit(struct ufs_hba *hba)
 	return ret;
 }
 
+void ufshcd_auto_hibern8_update(struct ufs_hba *hba, u32 ahit)
+{
+	unsigned long flags;
+
+	if (!(hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT))
+		return;
+
+	spin_lock_irqsave(hba->host->host_lock, flags);
+	if (hba->ahit == ahit)
+		goto out_unlock;
+	hba->ahit = ahit;
+	if (!pm_runtime_suspended(hba->dev))
+		ufshcd_writel(hba, hba->ahit, REG_AUTO_HIBERNATE_IDLE_TIMER);
+out_unlock:
+	spin_unlock_irqrestore(hba->host->host_lock, flags);
+}
+EXPORT_SYMBOL_GPL(ufshcd_auto_hibern8_update);
+
 void ufshcd_auto_hibern8_enable(struct ufs_hba *hba)
 {
 	unsigned long flags;
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index b536a26d665e..e05cafddc87b 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -923,6 +923,7 @@ int ufshcd_query_flag(struct ufs_hba *hba, enum query_opcode opcode,
 	enum flag_idn idn, bool *flag_res);
 
 void ufshcd_auto_hibern8_enable(struct ufs_hba *hba);
+void ufshcd_auto_hibern8_update(struct ufs_hba *hba, u32 ahit);
 
 #define SD_ASCII_STD true
 #define SD_RAW false
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
