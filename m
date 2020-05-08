Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F57D1CB5E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 19:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dkp0g2Cl7wlpL+1EGYYO7dFZ3SmyY6gbrZTsx0v6Z7I=; b=dqxF35RZa1E/k3
	qSewTpju7Mpf8gJK1WPVvqeh2LIMhKyQ+4aB2xON2+V2zq5FI/T7+FfwFK4nQvvneL2quVZ9egG66
	Bps20Ofjab5lnGUxgRSEBMfdo4f7u1nn9p+XQGb4LVrlSv7gYWxOFPkotEE0QN0DWcYGpUvQ26eBL
	NdgDWm+a4MM2a3GJmfID/1zDN5cN3Qoc3we3lLMfPG9gRFxQ/xFGahK6mBJaabFdbHTatljQIrEtD
	dUIJtbku3GDyGqVeh3jevfwfneMgUDuppoSUGBT1aozEE3XR9KCapOaUZ9x768yKAGssy8UD7YzzO
	MtK2pCUGRTxSovvhul5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX6lU-0001km-PG; Fri, 08 May 2020 17:26:24 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX6kb-00011V-Gz; Fri, 08 May 2020 17:25:30 +0000
X-UUID: 9e62a6f9c40a45a68d7d1e27e133c387-20200508
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=0ORkRYecHIDtUF3MhVdta5cgJ+2Y5vlSsyDAf2BQW40=; 
 b=Y1qhyoVEz/VSfnYZJQwI1EyMLo9iGjCYtCa7Oo4eaZk886ImFUMnH6kJolCf5vQknmc5GeSelLTaZrc3PtsOT7OUFMxqcYes9T2N386vehKZ0KQnY2UXnfZh5aJPrC0/cWlECIQPDk9+IJMg0l5ii4mPCl0+K11OcbklR0l4ecY=;
X-UUID: 9e62a6f9c40a45a68d7d1e27e133c387-20200508
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2047652130; Fri, 08 May 2020 09:25:04 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 10:15:15 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 9 May 2020 01:15:10 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sat, 9 May 2020 01:15:12 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v1 3/5] scsi: ufs: customize flush threshold for WriteBooster
Date: Sat, 9 May 2020 01:15:11 +0800
Message-ID: <20200508171513.14665-4-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200508171513.14665-1-stanley.chu@mediatek.com>
References: <20200508171513.14665-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: D97692ED15460159C4AFB5BA8F463C69AA861F79961DE9ADFD1E9F8C1A6BF2862000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_102529_577930_2A7D3638 
X-CRM114-Status: GOOD (  11.32  )
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

Allow flush threshold for WriteBooster to be customizable by
vendors. To achieve this, make the value as a variable in struct
ufs_hba first.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 6 ++++--
 drivers/scsi/ufs/ufshcd.h | 1 +
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index cdacbe6378a1..9a0ce6550c2f 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -5301,8 +5301,8 @@ static bool ufshcd_wb_presrv_usrspc_keep_vcc_on(struct ufs_hba *hba,
 			 cur_buf);
 		return false;
 	}
-	/* Let it continue to flush when >60% full */
-	if (avail_buf < UFS_WB_40_PERCENT_BUF_REMAIN)
+	/* Let it continue to flush when available buffer exceeds threshold */
+	if (avail_buf < hba->vps->wb_flush_threshold)
 		return true;
 
 	return false;
@@ -6839,6 +6839,7 @@ static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
 		if (!d_lu_wb_buf_alloc)
 			goto wb_disabled;
 	}
+
 	return;
 
 wb_disabled:
@@ -7462,6 +7463,7 @@ static const struct attribute_group *ufshcd_driver_groups[] = {
 
 static struct ufs_hba_variant_params ufs_hba_vps = {
 	.hba_enable_delay_us		= 1000,
+	.wb_flush_threshold		= UFS_WB_40_PERCENT_BUF_REMAIN,
 	.devfreq_profile.polling_ms	= 100,
 	.devfreq_profile.target		= ufshcd_devfreq_target,
 	.devfreq_profile.get_dev_status	= ufshcd_devfreq_get_dev_status,
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index f7bdf52ba8b0..e3dfb48e669e 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -570,6 +570,7 @@ struct ufs_hba_variant_params {
 	struct devfreq_dev_profile devfreq_profile;
 	struct devfreq_simple_ondemand_data ondemand_data;
 	u16 hba_enable_delay_us;
+	u32 wb_flush_threshold;
 };
 
 /**
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
