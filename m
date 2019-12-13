Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1201E11DF30
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 09:12:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xlA232LDC42PD/Ch5IyLnQ0QCwONo+ya8JB+11C9zoM=; b=Je/77eokiWJCzf
	sN9jzVwcrRDjCi82kqWXvI33PB1Hn2YFdapR24Y2O/v2NtF5e92RipLl54ziW7KVGJgLMGNPANOV3
	X+EJjLxZ7fNeP3YLYWKMiFM78c350tlW350uIkUHst+ldPbQ5uOZAjxbvNFotLVb4YgQifjBjF1b6
	X6yY6r1YdbLTq6KNOLOb3ZpuJ9RoU3H1p3SppwpLRjPDjq9F9r015rHTyAF2RbtIIfOlOmF/t3L2A
	1VeJgeQG7Qsvrn48LZkRwbqhAnfdxpFd2zJIm+LLTaxGMrHbYk2laB3nqCBVWBzHPTnqoea+j05DT
	pKO9LhaOvu8SK/V8quCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifg46-0000hm-Af; Fri, 13 Dec 2019 08:12:46 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifg3H-000069-Ad; Fri, 13 Dec 2019 08:11:56 +0000
X-UUID: d14e9ac3c3b444a08b78f5a9efbc634a-20191213
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=vtVBGehlJ7pQK93Wbhhyk4U6AOUFyJb8kru5H4W+ZyQ=; 
 b=N9BI2oWZlSbhkfewqYbZ8t5W69VJJMgp7U3Idd5cw+7BnURArwdu8zckUJ0ra+IRVEZZgTfbOASk/qvBe070qVvcE/JWMH9/KgOcNoAdiBPubaEXa6xkKJs3vA5huBAGgAe5DbW7rDg7ifzqSwrpcHkT+YTa5PGTL40Be2eJPLI=;
X-UUID: d14e9ac3c3b444a08b78f5a9efbc634a-20191213
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 765018125; Fri, 13 Dec 2019 00:11:53 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Dec 2019 00:12:55 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Dec 2019 16:10:41 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 13 Dec 2019 16:11:05 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <jejb@linux.ibm.com>, <matthias.bgg@gmail.com>
Subject: [PATCH v1 2/4] scsi: ufs: export ufshcd_auto_hibern8_update for
 vendor usage
Date: Fri, 13 Dec 2019 16:11:33 +0800
Message-ID: <1576224695-22657-3-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1576224695-22657-1-git-send-email-stanley.chu@mediatek.com>
References: <1576224695-22657-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: D4C3F8167AF9FF52FB02BEFF88B4BC498BBDE43CE5F86B8F06CCF6D8239256102000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_001155_366421_809EF310 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
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
index b5966faf3e98..589f519316aa 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -3956,6 +3956,24 @@ static int ufshcd_uic_hibern8_exit(struct ufs_hba *hba)
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
index 2740f6941ec6..86586a0b9aa5 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -927,6 +927,7 @@ int ufshcd_query_flag(struct ufs_hba *hba, enum query_opcode opcode,
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
