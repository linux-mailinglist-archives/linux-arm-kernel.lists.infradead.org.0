Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF376472D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 15:40:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4I0hGOENDKEHmCtPjfPWkVyPCztUovB4XxHu7jSPBIw=; b=cVsaPyWjZy8/A3
	Jrc6HvahQDY+bXdjZbx3TZjyTi9Md7An99da86uB9xr+BrE7J/K2EasyU5bDvGQ03GwqmGyO9Tcnv
	XQeuJpTYUXZRpf9g6Bmf7eAU0ZlXIVAjHGDoqfI5/4gL5q8BceI4VgIqC7BOMhW/xrgvgqkwwM5bG
	QG9icCpSBAgQsbsCh+Bv1Hjeg8xRKe7tYuf8NCjnIJigUhsbQl0Cr/jGcCYfSGy4ebGpv6G1wOrk8
	t6qrmb9+oiV6TKzXbwwqn7OiwczjD2EjdugVS/6lBcnLONXpb2eZv7wRIRKRupLIQnG6Qj51C74xP
	dWlBubYXEt69AXjM8ssA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlCpd-0007DR-Ld; Wed, 10 Jul 2019 13:40:25 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlCnr-0006bA-Hs; Wed, 10 Jul 2019 13:38:37 +0000
X-UUID: ad1ebeaad12c4e69a5d0004b4f9a0ff9-20190710
X-UUID: ad1ebeaad12c4e69a5d0004b4f9a0ff9-20190710
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1074925064; Wed, 10 Jul 2019 05:38:32 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 10 Jul 2019 06:38:30 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 10 Jul 2019 21:38:24 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 10 Jul 2019 21:38:24 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v3 3/4] scsi: ufs: Do not reset error history during host reset
Date: Wed, 10 Jul 2019 21:38:20 +0800
Message-ID: <1562765901-18328-4-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1562765901-18328-1-git-send-email-stanley.chu@mediatek.com>
References: <1562765901-18328-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_063835_594154_027D543F 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
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

Currently UFS error history will be reset and lost during host reset
flow by ufschd_probe_hba().

We shall not reset it and then error history can be kept as completed
as possible to improve debugging.

In addition, fix a minor display error in ufshcd_print_err_hist().

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
---
 drivers/scsi/ufs/ufshcd.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index b8b874311509..a46c3d2b2ea3 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -402,7 +402,7 @@ static void ufshcd_print_err_hist(struct ufs_hba *hba,
 
 		if (err_hist->reg[p] == 0)
 			continue;
-		dev_err(hba->dev, "%s[%d] = 0x%x at %lld us\n", err_name, i,
+		dev_err(hba->dev, "%s[%d] = 0x%x at %lld us\n", err_name, p,
 			err_hist->reg[p], ktime_to_us(err_hist->tstamp[p]));
 		found = true;
 	}
@@ -6690,19 +6690,8 @@ static void ufshcd_tune_unipro_params(struct ufs_hba *hba)
 
 static void ufshcd_clear_dbg_ufs_stats(struct ufs_hba *hba)
 {
-	int err_reg_hist_size = sizeof(struct ufs_err_reg_hist);
-
 	hba->ufs_stats.hibern8_exit_cnt = 0;
 	hba->ufs_stats.last_hibern8_exit_tstamp = ktime_set(0, 0);
-
-	memset(&hba->ufs_stats.pa_err, 0, err_reg_hist_size);
-	memset(&hba->ufs_stats.dl_err, 0, err_reg_hist_size);
-	memset(&hba->ufs_stats.nl_err, 0, err_reg_hist_size);
-	memset(&hba->ufs_stats.tl_err, 0, err_reg_hist_size);
-	memset(&hba->ufs_stats.dme_err, 0, err_reg_hist_size);
-	memset(&hba->ufs_stats.fatal_err, 0, err_reg_hist_size);
-	memset(&hba->ufs_stats.auto_hibern8_err, 0, err_reg_hist_size);
-
 	hba->req_abort_count = 0;
 }
 
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
