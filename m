Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5EF1D6335
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 19:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mse1XpYEW8BeR1NA/eLT0H0wdcQhOjBg6ciJ4n6FwUw=; b=ZcalpG8cE8Wdck
	N+SduMcjFYMzjvdPFkikCYgx7x7BGfQs05vl7ZkstykRp6vsKVlRTH5wvqEZyG7yeG7poQcK9E3G7
	eele9pa3i9d0sYLAxlkZoi3T7ZXdnm+IbUXggBxljekTSbXLyyVslu6klP/5E/dLoEruPJQbZPFfo
	WWxb5AfNI/6jGqZ2nybXUDqpCaJcGWr4FA+DH30NDFVBOyJNtjO7glXeF+ctE7gznJTmddpJiZdiL
	492tO8DbSFt9KY9T6myhn/DNPTFFMzR9Y6Tzr/mVPbi0cA1I0z5jU7un3IFLjESkgCc7XeeL4d6ti
	q6iqJbewzfBJV+u9/aiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja0ti-000627-NV; Sat, 16 May 2020 17:46:54 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja0tP-0005pF-J2; Sat, 16 May 2020 17:46:37 +0000
X-UUID: 423ec10f10b84978ab5bf61b73e55de6-20200516
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=5P/GwSlNrq5PAZrytzRd4P4S4nturapsNoUmppSNqBc=; 
 b=d6+wbIvoYN4XoIp0jYcnkyMsvFD/I+0nafJ5awL3ajrg1as8aUvmmjEegIHB0Kkr+NY8bBykIWC5/ASsMFtuBGaK1vVYAhzIcbvYqwJQ+Kej5//DgQN7KgkVRozuIjva3W/ZwULoaIRa8ZT3e3emkh5IlieofebBnUIqMB+ysGI=;
X-UUID: 423ec10f10b84978ab5bf61b73e55de6-20200516
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 300492943; Sat, 16 May 2020 09:46:40 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 16 May 2020 10:46:28 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 17 May 2020 01:46:14 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sun, 17 May 2020 01:46:14 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v3 4/5] scsi: ufs: Fix WriteBooster flush during runtime
 suspend
Date: Sun, 17 May 2020 01:46:14 +0800
Message-ID: <20200516174615.15445-5-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200516174615.15445-1-stanley.chu@mediatek.com>
References: <20200516174615.15445-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_104635_651176_25C82429 
X-CRM114-Status: GOOD (  14.31  )
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
index fadba3a3bbcd..db07eedfed96 100644
--- a/drivers/scsi/ufs/ufs.h
+++ b/drivers/scsi/ufs/ufs.h
@@ -574,7 +574,6 @@ struct ufs_dev_info {
 	u32 d_ext_ufs_feature_sup;
 	u8 b_wb_buffer_type;
 	u32 d_wb_alloc_units;
-	bool keep_vcc_on;
 	u8 b_presrv_uspc_en;
 };
 
diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index c7c2bd7860b8..f4f2c7b5ab0a 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -8094,8 +8094,7 @@ static void ufshcd_vreg_set_lpm(struct ufs_hba *hba)
 	    !hba->dev_info.is_lu_power_on_wp) {
 		ufshcd_setup_vreg(hba, false);
 	} else if (!ufshcd_is_ufs_dev_active(hba)) {
-		if (!hba->dev_info.keep_vcc_on)
-			ufshcd_toggle_vreg(hba->dev, hba->vreg_info.vcc, false);
+		ufshcd_toggle_vreg(hba->dev, hba->vreg_info.vcc, false);
 		if (!ufshcd_is_link_active(hba)) {
 			ufshcd_config_vreg_lpm(hba, hba->vreg_info.vccq);
 			ufshcd_config_vreg_lpm(hba, hba->vreg_info.vccq2);
@@ -8165,6 +8164,7 @@ static int ufshcd_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 	enum ufs_pm_level pm_lvl;
 	enum ufs_dev_pwr_mode req_dev_pwr_mode;
 	enum uic_link_state req_link_state;
+	bool keep_curr_dev_pwr_mode = false;
 
 	hba->pm_op_in_progress = 1;
 	if (!ufshcd_is_shutdown_pm(pm_op)) {
@@ -8220,27 +8220,29 @@ static int ufshcd_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
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
