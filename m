Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D2A64722
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 15:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PUers+izesSGCpgi18GL5sg4otBflqUhNtxs9jNNEaU=; b=W1b3MZp0aeXPUS
	waugeQMsUk22md3Ql8K7jE94tDxUSgXNNRZqPa2GEtKhK+ti9R5skGgr5wyy1DwLAZ/5xwRNMJpoF
	7rqokF6Y7Lw0PACfCf4VvfHS/DnlInCZYg0T8+Ueiq47z/o97eiJNfs32VtRNdjy7cJaKxSg0Jg5C
	B0oNqGOSRP9mblCTNSp7XuEmcKuE1o3Gc7Ft/JC7jqrhJSremM0YxMICYttVGi5xXnUn+3O9UQ/HD
	mKweP0mu2AEJ9E/19UhC85WMCUs01hpNg01ziS5e2D+i+1Nh+C93Q8Pvxj1XtMqns8JaMbANNmHhI
	cS2Wv+k5nzxsk4FFw+Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlCoJ-0006cD-TC; Wed, 10 Jul 2019 13:39:03 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlCnn-0006ZO-Lt; Wed, 10 Jul 2019 13:38:36 +0000
X-UUID: 00f5f5cac9c24a23bb215d36bd5a8d25-20190710
X-UUID: 00f5f5cac9c24a23bb215d36bd5a8d25-20190710
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 789240672; Wed, 10 Jul 2019 05:38:27 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 10 Jul 2019 06:38:25 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 10 Jul 2019 21:38:24 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 10 Jul 2019 21:38:24 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v3 4/4] scsi: ufs: Add history of fatal events
Date: Wed, 10 Jul 2019 21:38:21 +0800
Message-ID: <1562765901-18328-5-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1562765901-18328-1-git-send-email-stanley.chu@mediatek.com>
References: <1562765901-18328-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_063832_301644_FEA56777 
X-CRM114-Status: GOOD (  11.95  )
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
Cc: sthumma@codeaurora.org, marc.w.gonzalez@free.fr, andy.teng@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com, peter.wang@mediatek.com,
 evgreen@chromium.org, subhashj@codeaurora.org,
 linux-mediatek@lists.infradead.org, ygardi@codeaurora.org,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently only "interrupt-based" errors have their own history,
however there are some "non-interrupt-based" errors or events
which need history to improve debugging or help know the health
status of UFS devices.

Example of fatal errors,
- Link startup error
- Suspend error
- Resume error

Example of abnormal events,
- Task or request abort
- Device reset (now equals to Logical Unit Reset)
- Host reset

This patch tries to track above errors and events by existed UFS error
history mechanism.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 46 +++++++++++++++++++++++++++++----------
 drivers/scsi/ufs/ufshcd.h | 18 +++++++++++++--
 2 files changed, 50 insertions(+), 14 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index a46c3d2b2ea3..8f0426a36b0b 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -429,9 +429,17 @@ static void ufshcd_print_host_regs(struct ufs_hba *hba)
 	ufshcd_print_err_hist(hba, &hba->ufs_stats.nl_err, "nl_err");
 	ufshcd_print_err_hist(hba, &hba->ufs_stats.tl_err, "tl_err");
 	ufshcd_print_err_hist(hba, &hba->ufs_stats.dme_err, "dme_err");
-	ufshcd_print_err_hist(hba, &hba->ufs_stats.fatal_err, "fatal_err");
 	ufshcd_print_err_hist(hba, &hba->ufs_stats.auto_hibern8_err,
 			      "auto_hibern8_err");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.fatal_err, "fatal_err");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.link_startup_err,
+			      "link_startup_fail");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.resume_err, "resume_fail");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.suspend_err,
+			      "suspend_fail");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.dev_reset, "dev_reset");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.host_reset, "host_reset");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.task_abort, "task_abort");
 
 	ufshcd_print_clk_freqs(hba);
 
@@ -4329,6 +4337,14 @@ static inline int ufshcd_disable_device_tx_lcc(struct ufs_hba *hba)
 	return ufshcd_disable_tx_lcc(hba, true);
 }
 
+static void ufshcd_update_reg_hist(struct ufs_err_reg_hist *reg_hist,
+				   u32 reg)
+{
+	reg_hist->reg[reg_hist->pos] = reg;
+	reg_hist->tstamp[reg_hist->pos] = ktime_get();
+	reg_hist->pos = (reg_hist->pos + 1) % UFS_ERR_REG_HIST_LENGTH;
+}
+
 /**
  * ufshcd_link_startup - Initialize unipro link startup
  * @hba: per adapter instance
@@ -4356,6 +4372,8 @@ static int ufshcd_link_startup(struct ufs_hba *hba)
 
 		/* check if device is detected by inter-connect layer */
 		if (!ret && !ufshcd_is_device_present(hba)) {
+			ufshcd_update_reg_hist(&hba->ufs_stats.link_startup_err,
+					       0);
 			dev_err(hba->dev, "%s: Device not present\n", __func__);
 			ret = -ENXIO;
 			goto out;
@@ -4366,13 +4384,19 @@ static int ufshcd_link_startup(struct ufs_hba *hba)
 		 * but we can't be sure if the link is up until link startup
 		 * succeeds. So reset the local Uni-Pro and try again.
 		 */
-		if (ret && ufshcd_hba_enable(hba))
+		if (ret && ufshcd_hba_enable(hba)) {
+			ufshcd_update_reg_hist(&hba->ufs_stats.link_startup_err,
+					       (u32)ret);
 			goto out;
+		}
 	} while (ret && retries--);
 
-	if (ret)
+	if (ret) {
 		/* failed to get the link up... retire */
+		ufshcd_update_reg_hist(&hba->ufs_stats.link_startup_err,
+				       (u32)ret);
 		goto out;
+	}
 
 	if (link_startup_again) {
 		link_startup_again = false;
@@ -5350,14 +5374,6 @@ static void ufshcd_err_handler(struct work_struct *work)
 	pm_runtime_put_sync(hba->dev);
 }
 
-static void ufshcd_update_reg_hist(struct ufs_err_reg_hist *reg_hist,
-				   u32 reg)
-{
-	reg_hist->reg[reg_hist->pos] = reg;
-	reg_hist->tstamp[reg_hist->pos] = ktime_get();
-	reg_hist->pos = (reg_hist->pos + 1) % UFS_ERR_REG_HIST_LENGTH;
-}
-
 /**
  * ufshcd_update_uic_error - check and set fatal UIC error flags.
  * @hba: per-adapter instance
@@ -5950,6 +5966,7 @@ static int ufshcd_eh_device_reset_handler(struct scsi_cmnd *cmd)
 
 out:
 	hba->req_abort_count = 0;
+	ufshcd_update_reg_hist(&hba->ufs_stats.dev_reset, (u32)err);
 	if (!err) {
 		err = SUCCESS;
 	} else {
@@ -6043,6 +6060,7 @@ static int ufshcd_abort(struct scsi_cmnd *cmd)
 	 */
 	scsi_print_command(hba->lrb[tag].cmd);
 	if (!hba->req_abort_count) {
+		ufshcd_update_reg_hist(&hba->ufs_stats.task_abort, 0);
 		ufshcd_print_host_regs(hba);
 		ufshcd_print_host_state(hba);
 		ufshcd_print_pwr_info(hba);
@@ -6178,7 +6196,7 @@ static int ufshcd_host_reset_and_restore(struct ufs_hba *hba)
 out:
 	if (err)
 		dev_err(hba->dev, "%s: Host init failed %d\n", __func__, err);
-
+	ufshcd_update_reg_hist(&hba->ufs_stats.host_reset, (u32)err);
 	return err;
 }
 
@@ -7819,6 +7837,8 @@ static int ufshcd_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 	ufshcd_release(hba);
 out:
 	hba->pm_op_in_progress = 0;
+	if (ret)
+		ufshcd_update_reg_hist(&hba->ufs_stats.suspend_err, (u32)ret);
 	return ret;
 }
 
@@ -7921,6 +7941,8 @@ static int ufshcd_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 	ufshcd_setup_clocks(hba, false);
 out:
 	hba->pm_op_in_progress = 0;
+	if (ret)
+		ufshcd_update_reg_hist(&hba->ufs_stats.resume_err, (u32)ret);
 	return ret;
 }
 
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index c6ec5c749ceb..a43c7135f33d 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -436,8 +436,14 @@ struct ufs_err_reg_hist {
  * @nl_err: tracks nl-uic errors
  * @tl_err: tracks tl-uic errors
  * @dme_err: tracks dme errors
- * @fatal_err: tracks fatal errors
  * @auto_hibern8_err: tracks auto-hibernate errors
+ * @fatal_err: tracks fatal errors
+ * @linkup_err: tracks link-startup errors
+ * @resume_err: tracks resume errors
+ * @suspend_err: tracks suspend errors
+ * @dev_reset: tracks device reset events
+ * @host_reset: tracks host reset events
+ * @tsk_abort: tracks task abort events
  */
 struct ufs_stats {
 	u32 hibern8_exit_cnt;
@@ -451,8 +457,16 @@ struct ufs_stats {
 	struct ufs_err_reg_hist dme_err;
 
 	/* fatal errors */
-	struct ufs_err_reg_hist fatal_err;
 	struct ufs_err_reg_hist auto_hibern8_err;
+	struct ufs_err_reg_hist fatal_err;
+	struct ufs_err_reg_hist link_startup_err;
+	struct ufs_err_reg_hist resume_err;
+	struct ufs_err_reg_hist suspend_err;
+
+	/* abnormal events */
+	struct ufs_err_reg_hist dev_reset;
+	struct ufs_err_reg_hist host_reset;
+	struct ufs_err_reg_hist task_abort;
 };
 
 /**
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
