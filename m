Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B7E6408E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 07:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H3JOBCHMrLTLLJ4VwSqlX3zEKk4D0+1Qu7Uxeb3w2KQ=; b=MNUSsgAVY7o1Sl
	gq/mbwBaxPLO3zkafrgKGqcghwY8InvW4WMvZYVY/gaThL/4eGJAVqiEecgtCyWy3OJstxkN1APmV
	iOsI22gRBGDxmdmWpAbHPeTU5aSgAOVT79OL84CZVKqYY0GdBylL7qdnll0PxFcFrG4j4+R95FXR2
	7YDGmf1zZa1/iIP6q83AQaD31/2BSi5/X0+dg5oGMiKRC+GO37GPGZUI2ZdcnZCqdIdg6mRl6Pr7X
	HcY/xKRaka4L/NurnIbtwoFgoW2bnp79U0Mp0MrJatxOiPjqN4lVmtxjYCbWAJpVsgkiyNnRsRyTd
	LB99CN33xmgty1J7Vcfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl52F-00070s-HI; Wed, 10 Jul 2019 05:20:55 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl51v-0006zL-Sb; Wed, 10 Jul 2019 05:20:37 +0000
X-UUID: 6445a9aa0d1342b1839c0ac67f7fce18-20190709
X-UUID: 6445a9aa0d1342b1839c0ac67f7fce18-20190709
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2007210634; Tue, 09 Jul 2019 21:20:28 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 9 Jul 2019 22:20:26 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 10 Jul 2019 13:20:18 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 10 Jul 2019 13:20:19 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v2 2/4] scsi: ufs: Add fatal and auto-hibern8 error history
Date: Wed, 10 Jul 2019 13:20:15 +0800
Message-ID: <1562736017-29461-3-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1562736017-29461-1-git-send-email-stanley.chu@mediatek.com>
References: <1562736017-29461-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_222035_920706_90A1331B 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
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

Provide more information of fatal errros and auto-hibern8 errors
to improve debugging by extending extend existed UFS error history
framework.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
---
 drivers/scsi/ufs/ufshcd.c | 11 ++++++++++-
 drivers/scsi/ufs/ufshcd.h | 10 +++++++++-
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index eb062aba0d21..b8b874311509 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -429,6 +429,9 @@ static void ufshcd_print_host_regs(struct ufs_hba *hba)
 	ufshcd_print_err_hist(hba, &hba->ufs_stats.nl_err, "nl_err");
 	ufshcd_print_err_hist(hba, &hba->ufs_stats.tl_err, "tl_err");
 	ufshcd_print_err_hist(hba, &hba->ufs_stats.dme_err, "dme_err");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.fatal_err, "fatal_err");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.auto_hibern8_err,
+			      "auto_hibern8_err");
 
 	ufshcd_print_clk_freqs(hba);
 
@@ -5440,8 +5443,10 @@ static void ufshcd_check_errors(struct ufs_hba *hba)
 {
 	bool queue_eh_work = false;
 
-	if (hba->errors & INT_FATAL_ERRORS)
+	if (hba->errors & INT_FATAL_ERRORS) {
+		ufshcd_update_reg_hist(&hba->ufs_stats.fatal_err, hba->errors);
 		queue_eh_work = true;
+	}
 
 	if (hba->errors & UIC_ERROR) {
 		hba->uic_error = 0;
@@ -5456,6 +5461,8 @@ static void ufshcd_check_errors(struct ufs_hba *hba)
 			__func__, (hba->errors & UIC_HIBERNATE_ENTER) ?
 			"Enter" : "Exit",
 			hba->errors, ufshcd_get_upmcrs(hba));
+		ufshcd_update_reg_hist(&hba->ufs_stats.auto_hibern8_err,
+				       hba->errors);
 		queue_eh_work = true;
 	}
 
@@ -6693,6 +6700,8 @@ static void ufshcd_clear_dbg_ufs_stats(struct ufs_hba *hba)
 	memset(&hba->ufs_stats.nl_err, 0, err_reg_hist_size);
 	memset(&hba->ufs_stats.tl_err, 0, err_reg_hist_size);
 	memset(&hba->ufs_stats.dme_err, 0, err_reg_hist_size);
+	memset(&hba->ufs_stats.fatal_err, 0, err_reg_hist_size);
+	memset(&hba->ufs_stats.auto_hibern8_err, 0, err_reg_hist_size);
 
 	hba->req_abort_count = 0;
 }
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index dcc61f857c38..c6ec5c749ceb 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -414,7 +414,7 @@ struct ufs_init_prefetch {
 
 #define UFS_ERR_REG_HIST_LENGTH 8
 /**
- * struct ufs_err_reg_hist - keeps history of uic errors
+ * struct ufs_err_reg_hist - keeps history of errors
  * @pos: index to indicate cyclic buffer position
  * @reg: cyclic buffer for registers value
  * @tstamp: cyclic buffer for time stamp
@@ -436,15 +436,23 @@ struct ufs_err_reg_hist {
  * @nl_err: tracks nl-uic errors
  * @tl_err: tracks tl-uic errors
  * @dme_err: tracks dme errors
+ * @fatal_err: tracks fatal errors
+ * @auto_hibern8_err: tracks auto-hibernate errors
  */
 struct ufs_stats {
 	u32 hibern8_exit_cnt;
 	ktime_t last_hibern8_exit_tstamp;
+
+	/* uic specific errors */
 	struct ufs_err_reg_hist pa_err;
 	struct ufs_err_reg_hist dl_err;
 	struct ufs_err_reg_hist nl_err;
 	struct ufs_err_reg_hist tl_err;
 	struct ufs_err_reg_hist dme_err;
+
+	/* fatal errors */
+	struct ufs_err_reg_hist fatal_err;
+	struct ufs_err_reg_hist auto_hibern8_err;
 };
 
 /**
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
