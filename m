Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3F261A14
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 06:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+P+hxv5Qg2zbCNMvu39Y92afchkvcvQSIJke7PdDDQ=; b=gVNNa6q5WAxpe3
	wsi4p0J+y8pMcUwkIUuSVg+NlvAkVd6RshB4txC/E2vKqW/zQYxuuaLGenHr/PnGhOJ+taZHpG4dD
	e/V3AgzMWsJ42SfwjQHUnvqFNTrqHsJELNYeVtMNCy4gp580JFVlszkYTjNALXE6g97e37QqEdppQ
	eOWabYe0F5ROaxa2K7W/OgtLSIuB2WGlYTdWS/FajGUX89mJr6PM7ZALj3im3gl0Oe8pkQAnVq1OV
	eAcX+hXqrgshh3C6SX0M/4Yka3o2Vj2s0gVZR6akA3BvzvVlkHQqWxsW1Nq/D88xXKMs6cu6Rodiq
	WzPjF06ocWQ+9g3EUdbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkLQO-0006h3-OJ; Mon, 08 Jul 2019 04:38:48 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkLPk-0006Q1-Ub; Mon, 08 Jul 2019 04:38:10 +0000
X-UUID: 9c7892b6de844008b07de964e6c3fc67-20190707
X-UUID: 9c7892b6de844008b07de964e6c3fc67-20190707
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1150650994; Sun, 07 Jul 2019 20:38:03 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 7 Jul 2019 21:38:01 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 12:37:59 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 8 Jul 2019 12:37:59 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v1 1/3] scsi: ufs: Change names related to error history
Date: Mon, 8 Jul 2019 12:37:55 +0800
Message-ID: <1562560677-3985-2-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1562560677-3985-1-git-send-email-stanley.chu@mediatek.com>
References: <1562560677-3985-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: D70DB57EF5D2351AF6400939A43B3A57844265E566CA439315780100DD7A15742000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_213808_986481_8A0CD84B 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Remove "uic" term in below error history functions and structures
for more general usages,

struct ufs_uic_err_reg_hist;
void ufshcd_update_uic_reg_hist(struct ufs_uic_err_reg_hist *reg_hist,
	u32 reg);
void ufshcd_print_uic_err_hist(struct ufs_hba *hba,
	struct ufs_uic)err_reg_hist *err_hist, char *err_name);

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 39 ++++++++++++++++++++-------------------
 drivers/scsi/ufs/ufshcd.h | 20 ++++++++++----------
 2 files changed, 30 insertions(+), 29 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index a208589426b1..eb062aba0d21 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -390,14 +390,15 @@ static void ufshcd_print_clk_freqs(struct ufs_hba *hba)
 	}
 }
 
-static void ufshcd_print_uic_err_hist(struct ufs_hba *hba,
-		struct ufs_uic_err_reg_hist *err_hist, char *err_name)
+static void ufshcd_print_err_hist(struct ufs_hba *hba,
+				  struct ufs_err_reg_hist *err_hist,
+				  char *err_name)
 {
 	int i;
 	bool found = false;
 
-	for (i = 0; i < UIC_ERR_REG_HIST_LENGTH; i++) {
-		int p = (i + err_hist->pos) % UIC_ERR_REG_HIST_LENGTH;
+	for (i = 0; i < UFS_ERR_REG_HIST_LENGTH; i++) {
+		int p = (i + err_hist->pos) % UFS_ERR_REG_HIST_LENGTH;
 
 		if (err_hist->reg[p] == 0)
 			continue;
@@ -407,7 +408,7 @@ static void ufshcd_print_uic_err_hist(struct ufs_hba *hba,
 	}
 
 	if (!found)
-		dev_err(hba->dev, "No record of %s uic errors\n", err_name);
+		dev_err(hba->dev, "No record of %s errors\n", err_name);
 }
 
 static void ufshcd_print_host_regs(struct ufs_hba *hba)
@@ -423,11 +424,11 @@ static void ufshcd_print_host_regs(struct ufs_hba *hba)
 		ktime_to_us(hba->ufs_stats.last_hibern8_exit_tstamp),
 		hba->ufs_stats.hibern8_exit_cnt);
 
-	ufshcd_print_uic_err_hist(hba, &hba->ufs_stats.pa_err, "pa_err");
-	ufshcd_print_uic_err_hist(hba, &hba->ufs_stats.dl_err, "dl_err");
-	ufshcd_print_uic_err_hist(hba, &hba->ufs_stats.nl_err, "nl_err");
-	ufshcd_print_uic_err_hist(hba, &hba->ufs_stats.tl_err, "tl_err");
-	ufshcd_print_uic_err_hist(hba, &hba->ufs_stats.dme_err, "dme_err");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.pa_err, "pa_err");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.dl_err, "dl_err");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.nl_err, "nl_err");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.tl_err, "tl_err");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.dme_err, "dme_err");
 
 	ufshcd_print_clk_freqs(hba);
 
@@ -5346,12 +5347,12 @@ static void ufshcd_err_handler(struct work_struct *work)
 	pm_runtime_put_sync(hba->dev);
 }
 
-static void ufshcd_update_uic_reg_hist(struct ufs_uic_err_reg_hist *reg_hist,
-		u32 reg)
+static void ufshcd_update_reg_hist(struct ufs_err_reg_hist *reg_hist,
+				   u32 reg)
 {
 	reg_hist->reg[reg_hist->pos] = reg;
 	reg_hist->tstamp[reg_hist->pos] = ktime_get();
-	reg_hist->pos = (reg_hist->pos + 1) % UIC_ERR_REG_HIST_LENGTH;
+	reg_hist->pos = (reg_hist->pos + 1) % UFS_ERR_REG_HIST_LENGTH;
 }
 
 /**
@@ -5372,13 +5373,13 @@ static void ufshcd_update_uic_error(struct ufs_hba *hba)
 		 * must be checked but this error is handled separately.
 		 */
 		dev_dbg(hba->dev, "%s: UIC Lane error reported\n", __func__);
-		ufshcd_update_uic_reg_hist(&hba->ufs_stats.pa_err, reg);
+		ufshcd_update_reg_hist(&hba->ufs_stats.pa_err, reg);
 	}
 
 	/* PA_INIT_ERROR is fatal and needs UIC reset */
 	reg = ufshcd_readl(hba, REG_UIC_ERROR_CODE_DATA_LINK_LAYER);
 	if (reg)
-		ufshcd_update_uic_reg_hist(&hba->ufs_stats.dl_err, reg);
+		ufshcd_update_reg_hist(&hba->ufs_stats.dl_err, reg);
 
 	if (reg & UIC_DATA_LINK_LAYER_ERROR_PA_INIT)
 		hba->uic_error |= UFSHCD_UIC_DL_PA_INIT_ERROR;
@@ -5394,19 +5395,19 @@ static void ufshcd_update_uic_error(struct ufs_hba *hba)
 	/* UIC NL/TL/DME errors needs software retry */
 	reg = ufshcd_readl(hba, REG_UIC_ERROR_CODE_NETWORK_LAYER);
 	if (reg) {
-		ufshcd_update_uic_reg_hist(&hba->ufs_stats.nl_err, reg);
+		ufshcd_update_reg_hist(&hba->ufs_stats.nl_err, reg);
 		hba->uic_error |= UFSHCD_UIC_NL_ERROR;
 	}
 
 	reg = ufshcd_readl(hba, REG_UIC_ERROR_CODE_TRANSPORT_LAYER);
 	if (reg) {
-		ufshcd_update_uic_reg_hist(&hba->ufs_stats.tl_err, reg);
+		ufshcd_update_reg_hist(&hba->ufs_stats.tl_err, reg);
 		hba->uic_error |= UFSHCD_UIC_TL_ERROR;
 	}
 
 	reg = ufshcd_readl(hba, REG_UIC_ERROR_CODE_DME);
 	if (reg) {
-		ufshcd_update_uic_reg_hist(&hba->ufs_stats.dme_err, reg);
+		ufshcd_update_reg_hist(&hba->ufs_stats.dme_err, reg);
 		hba->uic_error |= UFSHCD_UIC_DME_ERROR;
 	}
 
@@ -6682,7 +6683,7 @@ static void ufshcd_tune_unipro_params(struct ufs_hba *hba)
 
 static void ufshcd_clear_dbg_ufs_stats(struct ufs_hba *hba)
 {
-	int err_reg_hist_size = sizeof(struct ufs_uic_err_reg_hist);
+	int err_reg_hist_size = sizeof(struct ufs_err_reg_hist);
 
 	hba->ufs_stats.hibern8_exit_cnt = 0;
 	hba->ufs_stats.last_hibern8_exit_tstamp = ktime_set(0, 0);
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 994d73d03207..dcc61f857c38 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -412,17 +412,17 @@ struct ufs_init_prefetch {
 	u32 icc_level;
 };
 
-#define UIC_ERR_REG_HIST_LENGTH 8
+#define UFS_ERR_REG_HIST_LENGTH 8
 /**
- * struct ufs_uic_err_reg_hist - keeps history of uic errors
+ * struct ufs_err_reg_hist - keeps history of uic errors
  * @pos: index to indicate cyclic buffer position
  * @reg: cyclic buffer for registers value
  * @tstamp: cyclic buffer for time stamp
  */
-struct ufs_uic_err_reg_hist {
+struct ufs_err_reg_hist {
 	int pos;
-	u32 reg[UIC_ERR_REG_HIST_LENGTH];
-	ktime_t tstamp[UIC_ERR_REG_HIST_LENGTH];
+	u32 reg[UFS_ERR_REG_HIST_LENGTH];
+	ktime_t tstamp[UFS_ERR_REG_HIST_LENGTH];
 };
 
 /**
@@ -440,11 +440,11 @@ struct ufs_uic_err_reg_hist {
 struct ufs_stats {
 	u32 hibern8_exit_cnt;
 	ktime_t last_hibern8_exit_tstamp;
-	struct ufs_uic_err_reg_hist pa_err;
-	struct ufs_uic_err_reg_hist dl_err;
-	struct ufs_uic_err_reg_hist nl_err;
-	struct ufs_uic_err_reg_hist tl_err;
-	struct ufs_uic_err_reg_hist dme_err;
+	struct ufs_err_reg_hist pa_err;
+	struct ufs_err_reg_hist dl_err;
+	struct ufs_err_reg_hist nl_err;
+	struct ufs_err_reg_hist tl_err;
+	struct ufs_err_reg_hist dme_err;
 };
 
 /**
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
