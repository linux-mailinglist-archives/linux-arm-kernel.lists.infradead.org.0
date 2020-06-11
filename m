Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7133B1F6571
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 12:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5qfUNgnb54tqb8MtnIWFuKUoRGR82AsZ1d6ZEYRRC8w=; b=TZe0Vd+WmSsbFw
	rcqqDWHfnQRyRk6nxi4OASdo/reGiHkkWXvPJUmOCEJALWxBFhS0J2wsKWPSju48sogyr39FDV0sC
	fR3yuJ9GAraOArOsXWfiPcI8dJ7tJPrMqGAvlBFV7r/qG/B8tz7qdgxyqMSAqIunNFTweeooU8knq
	i0shLqNBOTWuBUX393scxb6SUwoYmI2RuhXBK8Fh4bqeSlKbpSHJ9H95txUEnbAa8vEoP4jnmY229
	A7C0DOnIPCl3b0IPOeaUtRuQAXm2h0gP1zNqugw5h9HPGZFT7ymk22NX2P03UO3qOR7e9AeuyV6q4
	+GTv7ZlcNSLUq16LWO1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjKAp-0004Zz-TG; Thu, 11 Jun 2020 10:11:03 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjKAg-0004ZJ-25; Thu, 11 Jun 2020 10:10:55 +0000
X-UUID: 2638de54f640495a829e8f7ffbec5bdd-20200611
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=x7vUWQFpnR/ub7QdtwzOjPmOJYfIbVlXp6l4yBKYLHw=; 
 b=A1BCONdoKjTbjvHdJerYczh7j+rXqtvTg8MmZCQBg56NrqMNX1n5k0zxv+p402jied5+fdkwJhTvYJwo6tuj2loRuXS0kdM2yUxXmRFdFsmhKRP8p0CSLpZikVD14uBqDrXjzBW+AKtQrrYgBJPAlhw9qVNWeywCRggFSY95kmQ=;
X-UUID: 2638de54f640495a829e8f7ffbec5bdd-20200611
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 853516727; Thu, 11 Jun 2020 02:10:30 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 11 Jun 2020 03:10:47 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 11 Jun 2020 18:10:42 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 11 Jun 2020 18:10:42 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v5] scsi: ufs: Fix imprecise load calculation in devfreq window
Date: Thu, 11 Jun 2020 18:10:43 +0800
Message-ID: <20200611101043.6379-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 63D7B33707924DB214DD98270AC3D06C1753746E0E6DE21450E38B69674B86C92000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_031054_111299_08EDE2F0 
X-CRM114-Status: GOOD (  12.40  )
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, cc.chou@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 chaotian.jing@mediatek.com, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The UFS load calculation is based on "total_time" and "busy_time" in a
devfreq window. However, the source of time is different for both
parameters: "busy_time" is assigned from "jiffies" thus has different
accuracy from "total_time" which is assigned from ktime_get().

Besides, the time of window boundary is not exactly the same as
the starting busy time in this window if UFS is actually busy
in the beginning of the window. A similar accuracy error may also
happen for the end of busy time in current window.

To guarantee the precision of load calculation, we need to

1. Align time accuracy of both devfreq_dev_status.total_time and
   devfreq_dev_status.busy_time. For example, use "ktime_get()"
   directly.

2. Align below timelines,
   - The beginning time of devfreq windows
   - The beginning of busy time in a new window
   - The end of busy time in the current window

Fixes: a3cd5ec55f6c ("scsi: ufs: add load based scaling of UFS gear")
Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
---
 drivers/scsi/ufs/ufshcd.c | 18 ++++++++++--------
 drivers/scsi/ufs/ufshcd.h |  2 +-
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index ad4fc829cbb2..7a344658325d 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -1314,6 +1314,7 @@ static int ufshcd_devfreq_get_dev_status(struct device *dev,
 	unsigned long flags;
 	struct list_head *clk_list = &hba->clk_list_head;
 	struct ufs_clk_info *clki;
+	ktime_t curr_t;
 
 	if (!ufshcd_is_clkscaling_supported(hba))
 		return -EINVAL;
@@ -1321,6 +1322,7 @@ static int ufshcd_devfreq_get_dev_status(struct device *dev,
 	memset(stat, 0, sizeof(*stat));
 
 	spin_lock_irqsave(hba->host->host_lock, flags);
+	curr_t = ktime_get();
 	if (!scaling->window_start_t)
 		goto start_window;
 
@@ -1332,18 +1334,17 @@ static int ufshcd_devfreq_get_dev_status(struct device *dev,
 	 */
 	stat->current_frequency = clki->curr_freq;
 	if (scaling->is_busy_started)
-		scaling->tot_busy_t += ktime_to_us(ktime_sub(ktime_get(),
-					scaling->busy_start_t));
+		scaling->tot_busy_t += ktime_us_delta(curr_t,
+				scaling->busy_start_t);
 
-	stat->total_time = jiffies_to_usecs((long)jiffies -
-				(long)scaling->window_start_t);
+	stat->total_time = ktime_us_delta(curr_t, scaling->window_start_t);
 	stat->busy_time = scaling->tot_busy_t;
 start_window:
-	scaling->window_start_t = jiffies;
+	scaling->window_start_t = curr_t;
 	scaling->tot_busy_t = 0;
 
 	if (hba->outstanding_reqs) {
-		scaling->busy_start_t = ktime_get();
+		scaling->busy_start_t = curr_t;
 		scaling->is_busy_started = true;
 	} else {
 		scaling->busy_start_t = 0;
@@ -1877,6 +1878,7 @@ static void ufshcd_exit_clk_gating(struct ufs_hba *hba)
 static void ufshcd_clk_scaling_start_busy(struct ufs_hba *hba)
 {
 	bool queue_resume_work = false;
+	ktime_t curr_t = ktime_get();
 
 	if (!ufshcd_is_clkscaling_supported(hba))
 		return;
@@ -1892,13 +1894,13 @@ static void ufshcd_clk_scaling_start_busy(struct ufs_hba *hba)
 			   &hba->clk_scaling.resume_work);
 
 	if (!hba->clk_scaling.window_start_t) {
-		hba->clk_scaling.window_start_t = jiffies;
+		hba->clk_scaling.window_start_t = curr_t;
 		hba->clk_scaling.tot_busy_t = 0;
 		hba->clk_scaling.is_busy_started = false;
 	}
 
 	if (!hba->clk_scaling.is_busy_started) {
-		hba->clk_scaling.busy_start_t = ktime_get();
+		hba->clk_scaling.busy_start_t = curr_t;
 		hba->clk_scaling.is_busy_started = true;
 	}
 }
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index bf97d616e597..16187be98a94 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -411,7 +411,7 @@ struct ufs_saved_pwr_info {
 struct ufs_clk_scaling {
 	int active_reqs;
 	unsigned long tot_busy_t;
-	unsigned long window_start_t;
+	ktime_t window_start_t;
 	ktime_t busy_start_t;
 	struct device_attribute enable_attr;
 	struct ufs_saved_pwr_info saved_pwr_info;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
