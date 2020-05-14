Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB05E1D34A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 17:11:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ANmuYVmGUvWVqSyZd3R0ufCr07UmjFRQTpnwh2V+f8Q=; b=UjcTOeH9niqecA
	hxspOkf+05DzwGcPjTUeWn+j4tz2d8zYRyjdnrLMENu3gxd6S79ezOMxCZ4vrYNkWEKb65oRN99nK
	ogxOIbSaY6XBI5sqimWzo/B3SYSxhYgwRn4FZxQujwOInFxTG0xRRRtkue1vCKgqgeLgkH1v3BRzs
	Pseu0C0u/RJwUB6Z9O/U1r0y8QeyIKVbXZwHgxOFK80ZOXBLMJDaMkO9ItOHy2Jhl7BIKd7QkSOUQ
	pc3Y+jIqTswOG95cFAujvLfW/sb3CwACZlzjlAjFTlNXdnkPzmrOKTw55egc8p0N30rnJ2pRq3frB
	wWYpJTFTinPkZ6Cgarrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFWR-0007az-Tw; Thu, 14 May 2020 15:11:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFWE-0007a7-V3; Thu, 14 May 2020 15:11:37 +0000
X-UUID: 0daa59a8d66145c78efbd4e6139d6186-20200514
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=bo0m4IuwC/3AaIjNIjRmx35SXEKkw+0nqdXJxel0Jmo=; 
 b=c31NXb2f/PPtqpSXR00lY03bttsAoNXWidgf+gq1tpejAmuGociOJhwngPfG4w8aFZ9nACraDQpLc0TJjEyrtVaeR9mxngqmAl/P1FGKt7LOqgCUGWeQoNfB65ugrykp6xM+XN2K/XDfZNsBcU6HgVNRFYe3FUA4uMq6gRhpCac=;
X-UUID: 0daa59a8d66145c78efbd4e6139d6186-20200514
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 569562355; Thu, 14 May 2020 07:11:29 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 08:01:23 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 23:01:21 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 14 May 2020 23:01:21 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v2 4/4] scsi: ufs: Fix WriteBooster flush during runtime
 suspend
Date: Thu, 14 May 2020 23:01:22 +0800
Message-ID: <20200514150122.32110-5-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200514150122.32110-1-stanley.chu@mediatek.com>
References: <20200514150122.32110-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_081131_004971_C20D2B02 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Currently UFS host driver promises VCC supply if UFS device
needs to do WriteBooster flush during runtime suspend.

However the UFS specification mentions,

"While the flushing operation is in progress, the device is
in Active power mode."

Therefore UFS host driver needs to promise more: Keep UFS
device as "Active power mode", otherwise UFS device shall not
do any flush if device enters Sleep or PowerDown power mode.

Fix this by not changing device power mode if WriteBooster
flush is required in ufshcd_suspend().

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs.h    |  1 -
 drivers/scsi/ufs/ufshcd.c | 42 ++++++++++++++++++++-------------------
 2 files changed, 22 insertions(+), 21 deletions(-)

diff --git a/drivers/scsi/ufs/ufs.h b/drivers/scsi/ufs/ufs.h
index b3135344ab3f..9e4bc2e97ada 100644
--- a/drivers/scsi/ufs/ufs.h
+++ b/drivers/scsi/ufs/ufs.h
@@ -577,7 +577,6 @@ struct ufs_dev_info {
 	u32 d_ext_ufs_feature_sup;
 	u8 b_wb_buffer_type;
 	u32 d_wb_alloc_units;
-	bool keep_vcc_on;
 	u8 b_presrv_uspc_en;
 };
 
diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 169a3379e468..b9f7744ca2b4 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -8101,8 +8101,7 @@ static void ufshcd_vreg_set_lpm(struct ufs_hba *hba)
 	    !hba->dev_info.is_lu_power_on_wp) {
 		ufshcd_setup_vreg(hba, false);
 	} else if (!ufshcd_is_ufs_dev_active(hba)) {
-		if (!hba->dev_info.keep_vcc_on)
-			ufshcd_toggle_vreg(hba->dev, hba->vreg_info.vcc, false);
+		ufshcd_toggle_vreg(hba->dev, hba->vreg_info.vcc, false);
 		if (!ufshcd_is_link_active(hba)) {
 			ufshcd_config_vreg_lpm(hba, hba->vreg_info.vccq);
 			ufshcd_config_vreg_lpm(hba, hba->vreg_info.vccq2);
@@ -8172,6 +8171,7 @@ static int ufshcd_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 	enum ufs_pm_level pm_lvl;
 	enum ufs_dev_pwr_mode req_dev_pwr_mode;
 	enum uic_link_state req_link_state;
+	bool keep_curr_dev_pwr_mode = false;
 
 	hba->pm_op_in_progress = 1;
 	if (!ufshcd_is_shutdown_pm(pm_op)) {
@@ -8227,27 +8227,29 @@ static int ufshcd_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 			ufshcd_disable_auto_bkops(hba);
 		}
 		/*
-		 * With wb enabled, if the bkops is enabled or if the
-		 * configured WB type is 70% full, keep vcc ON
-		 * for the device to flush the wb buffer
+		 * If device needs to do BKOP or WB buffer flush during
+		 * Hibern8, keep device power mode as "active power mode"
+		 * and VCC supply.
 		 */
-		if ((hba->auto_bkops_enabled && ufshcd_is_wb_allowed(hba)) ||
-		    ufshcd_wb_keep_vcc_on(hba))
-			hba->dev_info.keep_vcc_on = true;
-		else
-			hba->dev_info.keep_vcc_on = false;
-	} else {
-		hba->dev_info.keep_vcc_on = false;
+		keep_curr_dev_pwr_mode = hba->auto_bkops_enabled ||
+			(((req_link_state == UIC_LINK_HIBERN8_STATE) ||
+			((req_link_state == UIC_LINK_ACTIVE_STATE) &&
+			ufshcd_is_auto_hibern8_enabled(hba))) &&
+			ufshcd_wb_keep_vcc_on(hba));
 	}
 
-	if ((req_dev_pwr_mode != hba->curr_dev_pwr_mode) &&
-	    ((ufshcd_is_runtime_pm(pm_op) && !hba->auto_bkops_enabled) ||
-	    !ufshcd_is_runtime_pm(pm_op))) {
-		/* ensure that bkops is disabled */
-		ufshcd_disable_auto_bkops(hba);
-		ret = ufshcd_set_dev_pwr_mode(hba, req_dev_pwr_mode);
-		if (ret)
-			goto enable_gating;
+	if (req_dev_pwr_mode != hba->curr_dev_pwr_mode) {
+		if ((ufshcd_is_runtime_pm(pm_op) && !hba->auto_bkops_enabled) ||
+		    !ufshcd_is_runtime_pm(pm_op)) {
+			/* ensure that bkops is disabled */
+			ufshcd_disable_auto_bkops(hba);
+		}
+
+		if (!keep_curr_dev_pwr_mode) {
+			ret = ufshcd_set_dev_pwr_mode(hba, req_dev_pwr_mode);
+			if (ret)
+				goto enable_gating;
+		}
 	}
 
 	flush_work(&hba->eeh_work);
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
