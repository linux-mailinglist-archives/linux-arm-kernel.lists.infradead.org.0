Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6350F1DE218
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 10:37:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W5r7H4lppIMqsQCvil6aIlC1pcMV9FGMLVHvoz/CfJg=; b=qHhSi3KzOA7O7L
	BT88TD7SuSvWzzuT2Si3MeqRIvtlhqgva494KyTNUKCNa4BAiite0t7m9zyVWxO3L6ly9M99/ONKO
	ecZaMEcCWbPui5x5xdW811vKG62dK2jUogdkH/yhMGTDrK/I++m4RrHa82emjbFCj4uqJdhXuvCn4
	xEOknNj5iIJE2DPZZgpkTuL4aPimZprUaeFh/rYpGva15nHSAgsiVZYC3gcB3NIlC3eJtrFah/LD6
	QHtYo+3sF0kHpYzYfTTlAYrhrp8hotupKt3olhptb4jXp/WK24LU/sLsbse5T+TrdCkdh5irH0p4z
	A8U2bl40G9deQK7alFOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc3BA-0004TN-T4; Fri, 22 May 2020 08:37:20 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc3AO-0003w8-EG; Fri, 22 May 2020 08:36:34 +0000
X-UUID: 0852713061ac41848037483374487e53-20200522
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=GB2siZ1aCshncN85D71R5V/xJ8ZgYKphiAMj7ygmguo=; 
 b=TOhoowSb/WFg70kkRFJzpEp1n+CAu1bOU+b+e7HNXVnoleBxi8UdKHrpTeStOwhoYpVfJl3Mij/ojhwpAN1HzINMizw1MT87f2HPJepb+AwDaqdkFiVFUz57eFOxlUDnrjwbrOyRUR5tVN+BN7XA6iIGvM3D2fR1ybMlBNuCQJw=;
X-UUID: 0852713061ac41848037483374487e53-20200522
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 934678020; Fri, 22 May 2020 00:36:04 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 22 May 2020 01:32:16 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 22 May 2020 16:32:15 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 22 May 2020 16:32:14 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v4 4/4] scsi: ufs: Fix WriteBooster flush during runtime
 suspend
Date: Fri, 22 May 2020 16:32:12 +0800
Message-ID: <20200522083212.4008-5-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200522083212.4008-1-stanley.chu@mediatek.com>
References: <20200522083212.4008-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_013632_491616_425DF3FD 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Virtual_Global_UFS_Upstream@mediatek.com, bvanassche@acm.org,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
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
Similarly, the same promises shall be applied if device needs
urgent BKOP during runtime suspend.

Fix this by not changing device power mode if WriteBooster
flush or urgent BKOP is required in ufshcd_suspend().

Now, if device finishes its job but not resumed for a very
long time, system will have unnecessary power drain because
VCC is still supplied. A method to re-check the threshold of
keeping VCC supply is required to fix the power drain. However,
the threshold re-check needs to re-activate the link first
because the decision depends on the latest device status.

So, also introduce a delayed work to force runtime resume
after a certain delay during runtime suspend. This makes
threshold re-check happen natually in the entrance of next
runtime-suspend. The device can continue its WriteBooster flush
or urgent BKOP jobs soon after resumed if device has no upcoming
requests and link enters hibern8 state either by Auto-Hibern8
or hibern8 during clk-gating scheme. This solution not only
prevents power drain but also makes as much use of time as
possible for device's background jobs.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs.h    |  2 +-
 drivers/scsi/ufs/ufshcd.c | 79 ++++++++++++++++++++++++++++-----------
 drivers/scsi/ufs/ufshcd.h |  1 +
 3 files changed, 59 insertions(+), 23 deletions(-)

diff --git a/drivers/scsi/ufs/ufs.h b/drivers/scsi/ufs/ufs.h
index fadba3a3bbcd..c70845d41449 100644
--- a/drivers/scsi/ufs/ufs.h
+++ b/drivers/scsi/ufs/ufs.h
@@ -574,7 +574,7 @@ struct ufs_dev_info {
 	u32 d_ext_ufs_feature_sup;
 	u8 b_wb_buffer_type;
 	u32 d_wb_alloc_units;
-	bool keep_vcc_on;
+	bool b_rpm_dev_flush_capable;
 	u8 b_presrv_uspc_en;
 };
 
diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 3262ac0e39d4..94782b9b33c1 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -94,6 +94,9 @@
 /* default delay of autosuspend: 2000 ms */
 #define RPM_AUTOSUSPEND_DELAY_MS 2000
 
+/* Default delay of RPM device flush delayed work */
+#define RPM_DEV_FLUSH_RECHECK_WORK_DELAY_MS 5000
+
 /* Default value of wait time before gating device ref clock */
 #define UFSHCD_REF_CLK_GATING_WAIT_US 0xFF /* microsecs */
 
@@ -5314,7 +5317,7 @@ static bool ufshcd_wb_presrv_usrspc_keep_vcc_on(struct ufs_hba *hba,
 	return false;
 }
 
-static bool ufshcd_wb_keep_vcc_on(struct ufs_hba *hba)
+static bool ufshcd_wb_need_flush(struct ufs_hba *hba)
 {
 	int ret;
 	u32 avail_buf;
@@ -5352,6 +5355,21 @@ static bool ufshcd_wb_keep_vcc_on(struct ufs_hba *hba)
 	return ufshcd_wb_presrv_usrspc_keep_vcc_on(hba, avail_buf);
 }
 
+static void ufshcd_rpm_dev_flush_recheck_work(struct work_struct *work)
+{
+	struct ufs_hba *hba = container_of(to_delayed_work(work),
+					   struct ufs_hba,
+					   rpm_dev_flush_recheck_work);
+	/*
+	 * To prevent unnecessary VCC power drain after device finishes
+	 * WriteBooster buffer flush or Auto BKOPs, force runtime resume
+	 * after a certain delay to recheck the threshold by next runtime
+	 * supsend.
+	 */
+	pm_runtime_get_sync(hba->dev);
+	pm_runtime_put_sync(hba->dev);
+}
+
 /**
  * ufshcd_exception_event_handler - handle exceptions raised by device
  * @work: pointer to work data
@@ -8099,8 +8117,7 @@ static void ufshcd_vreg_set_lpm(struct ufs_hba *hba)
 	    !hba->dev_info.is_lu_power_on_wp) {
 		ufshcd_setup_vreg(hba, false);
 	} else if (!ufshcd_is_ufs_dev_active(hba)) {
-		if (!hba->dev_info.keep_vcc_on)
-			ufshcd_toggle_vreg(hba->dev, hba->vreg_info.vcc, false);
+		ufshcd_toggle_vreg(hba->dev, hba->vreg_info.vcc, false);
 		if (!ufshcd_is_link_active(hba)) {
 			ufshcd_config_vreg_lpm(hba, hba->vreg_info.vccq);
 			ufshcd_config_vreg_lpm(hba, hba->vreg_info.vccq2);
@@ -8225,27 +8242,30 @@ static int ufshcd_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
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
-	}
+		hba->dev_info.b_rpm_dev_flush_capable =
+			hba->auto_bkops_enabled ||
+			(((req_link_state == UIC_LINK_HIBERN8_STATE) ||
+			((req_link_state == UIC_LINK_ACTIVE_STATE) &&
+			ufshcd_is_auto_hibern8_enabled(hba))) &&
+			ufshcd_wb_need_flush(hba));
+	}
+
+	if (req_dev_pwr_mode != hba->curr_dev_pwr_mode) {
+		if ((ufshcd_is_runtime_pm(pm_op) && !hba->auto_bkops_enabled) ||
+		    !ufshcd_is_runtime_pm(pm_op)) {
+			/* ensure that bkops is disabled */
+			ufshcd_disable_auto_bkops(hba);
+		}
 
-	if ((req_dev_pwr_mode != hba->curr_dev_pwr_mode) &&
-	    ((ufshcd_is_runtime_pm(pm_op) && !hba->auto_bkops_enabled) ||
-	    !ufshcd_is_runtime_pm(pm_op))) {
-		/* ensure that bkops is disabled */
-		ufshcd_disable_auto_bkops(hba);
-		ret = ufshcd_set_dev_pwr_mode(hba, req_dev_pwr_mode);
-		if (ret)
-			goto enable_gating;
+		if (!hba->dev_info.b_rpm_dev_flush_capable) {
+			ret = ufshcd_set_dev_pwr_mode(hba, req_dev_pwr_mode);
+			if (ret)
+				goto enable_gating;
+		}
 	}
 
 	flush_work(&hba->eeh_work);
@@ -8298,9 +8318,16 @@ static int ufshcd_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 	if (hba->clk_scaling.is_allowed)
 		ufshcd_resume_clkscaling(hba);
 	hba->clk_gating.is_suspended = false;
+	hba->dev_info.b_rpm_dev_flush_capable = false;
 	ufshcd_release(hba);
 out:
+	if (hba->dev_info.b_rpm_dev_flush_capable) {
+		schedule_delayed_work(&hba->rpm_dev_flush_recheck_work,
+			msecs_to_jiffies(RPM_DEV_FLUSH_RECHECK_WORK_DELAY_MS));
+	}
+
 	hba->pm_op_in_progress = 0;
+
 	if (ret)
 		ufshcd_update_reg_hist(&hba->ufs_stats.suspend_err, (u32)ret);
 	return ret;
@@ -8389,6 +8416,11 @@ static int ufshcd_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 	/* Enable Auto-Hibernate if configured */
 	ufshcd_auto_hibern8_enable(hba);
 
+	if (hba->dev_info.b_rpm_dev_flush_capable) {
+		hba->dev_info.b_rpm_dev_flush_capable = false;
+		cancel_delayed_work(&hba->rpm_dev_flush_recheck_work);
+	}
+
 	/* Schedule clock gating in case of no access to UFS device yet */
 	ufshcd_release(hba);
 
@@ -8862,6 +8894,9 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem *mmio_base, unsigned int irq)
 						UFS_SLEEP_PWR_MODE,
 						UIC_LINK_HIBERN8_STATE);
 
+	INIT_DELAYED_WORK(&hba->rpm_dev_flush_recheck_work,
+			  ufshcd_rpm_dev_flush_recheck_work);
+
 	/* Set the default auto-hiberate idle timer value to 150 ms */
 	if (ufshcd_is_auto_hibern8_supported(hba) && !hba->ahit) {
 		hba->ahit = FIELD_PREP(UFSHCI_AHIBERN8_TIMER_MASK, 150) |
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 9acaeaf94d29..bf97d616e597 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -745,6 +745,7 @@ struct ufs_hba {
 	struct request_queue	*bsg_queue;
 	bool wb_buf_flush_enabled;
 	bool wb_enabled;
+	struct delayed_work rpm_dev_flush_recheck_work;
 };
 
 /* Returns true if clocks can be gated. Otherwise false */
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
